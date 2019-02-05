using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Reflection;

namespace ASPHTML5.Web.Helpers
{
    public class DataPagerGridView: GridView, IPageableItemContainer
    {
        public DataPagerGridView()
                : base()
        {
            PagerSettings.Visible = false;
        }

        private IEnumerable GVDataSource
        {
            get
            {
                if (ViewState[this.ID] != null)
                {
                    return ViewState[this.ID] as IEnumerable;
                }
                else
                {
                    return null;
                }
            }
            set
            {
                ViewState[this.ID] = value;
            }
        }

        private SortDirection SortDir
        {
            get
            {
                if (ViewState["SortDirection"] != null)
                {
                    return (SortDirection)Enum.Parse(typeof(SortDirection), ViewState["SortDirection"].ToString());
                }
                return SortDirection.Ascending;
            }
            set
            {
                ViewState["SortDirection"] = value;
            }
        }

        private string SortExp
        {
            get
            {
                if (ViewState["SortExpression"] != null)
                {
                    return ViewState["SortExpression"].ToString();
                }
                return String.Empty;
            }
            set
            {
                ViewState["SortExpression"] = value;
            }
        }

        private static readonly object EventTotalRowCountAvailable = new object();

        protected override int CreateChildControls(IEnumerable dataSource, bool dataBinding)
        {
            int rows = base.CreateChildControls(dataSource, dataBinding);
            if (this.AllowPaging || this.AllowSorting)
            {
                if (dataSource != null && dataSource.GetType().ToString() != "System.Web.UI.WebControls.DummyDataSource")
                {
                    GVDataSource = dataSource;
                    SetHeaderRows();
                }
            }

            if (this.AllowPaging)
            {
                int totalRowCount = dataBinding ? rows : ((ICollection)dataSource).Count;

                IPageableItemContainer pageableItemContainer = this as IPageableItemContainer;
                this.OnTotalRowCountAvailable(new PageEventArgs(pageableItemContainer.StartRowIndex, pageableItemContainer.MaximumRows, totalRowCount));

                if (this.TopPagerRow != null)
                    this.TopPagerRow.Visible = false;

                if (this.BottomPagerRow != null)
                    this.BottomPagerRow.Visible = false;
            }
            return rows;
        }

        void IPageableItemContainer.SetPageProperties(int startRowIndex, int maximumRows, bool databind)
        {
            int newPageIndex = (startRowIndex / maximumRows);
            this.PageSize = maximumRows;

            if (this.PageIndex != newPageIndex)
            {
                bool isCanceled = false;
                if (databind)
                {
                    GridViewPageEventArgs args = new GridViewPageEventArgs(newPageIndex);
                    this.OnPageIndexChanging(args);

                    isCanceled = args.Cancel;
                    newPageIndex = args.NewPageIndex;
                }

                if (!isCanceled)
                {
                    this.PageIndex = newPageIndex;

                    if (databind)
                        this.OnPageIndexChanged(EventArgs.Empty);
                }
                if (databind)
                    this.RequiresDataBinding = true;
            }
        }

        int IPageableItemContainer.StartRowIndex
        {
            get { return this.PageSize * this.PageIndex; }
        }

        int IPageableItemContainer.MaximumRows
        {
            get { return this.PageSize; }
        }

        event EventHandler<PageEventArgs> IPageableItemContainer.TotalRowCountAvailable
        {
            add { base.Events.AddHandler(DataPagerGridView.EventTotalRowCountAvailable, value); }
            remove { base.Events.RemoveHandler(DataPagerGridView.EventTotalRowCountAvailable, value); }
        }

        protected virtual void OnTotalRowCountAvailable(PageEventArgs e)
        {
            EventHandler<PageEventArgs> handler = (EventHandler<PageEventArgs>)base.Events[DataPagerGridView.EventTotalRowCountAvailable];
            if (handler != null)
            {
                handler(this, e);
            }
        }

        protected override void OnPageIndexChanging(GridViewPageEventArgs e)
        {
            this.PageIndex = e.NewPageIndex;
            this.DataSource = GVDataSource;
            this.DataBind();
        }

        protected override void OnSorting(GridViewSortEventArgs e)
        {
            if (!String.IsNullOrEmpty(SortExp))
            {
                if (String.Compare(e.SortExpression, SortExp, true) == 0)
                {
                    SortDir = (SortDir == SortDirection.Ascending) ? SortDirection.Descending : SortDirection.Ascending;
                }
            }
            SortExp = e.SortExpression;
            this.Sorting += new GridViewSortEventHandler(this.this_Sorting);
            base.OnSorting(e);
        }

        private void this_Sorting(object sender, GridViewSortEventArgs e)
        {
            Type dataSourceType = GVDataSource.GetType();
            Type dataItemType = typeof(object);
            
            IEnumerator dataEnumerator = GVDataSource.GetEnumerator();
            if (dataEnumerator.MoveNext() && dataEnumerator.Current != null)
            {
                dataItemType = dataEnumerator.Current.GetType();
            }
            var fieldType = dataItemType.GetProperty(SortExp);
            object sorterObject = null;
            Type sorterType = null;

            PropertyInfo property = dataItemType.GetProperty(SortExp);
            sorterType = typeof(GenericSorter<,>).MakeGenericType(dataItemType, property.PropertyType);
            sorterObject = Activator.CreateInstance(sorterType);

            this.DataSource = sorterType.GetMethod("Sort", new Type[] { dataSourceType, typeof(string), typeof(SortDirection) })
                .Invoke(sorterObject, new object[] { GVDataSource, SortExp , SortDir});
            this.DataBind();
        }

        private void SetHeaderRows()
        {
            if (!String.IsNullOrEmpty(SortExp))
            {
                AddSortImage(this.HeaderRow);
            }
        }

        private void AddSortImage(GridViewRow headerRow)
        {
            Int32 iCol = GetSortColumnIndex(SortExp);
            if (iCol == -1)
            {
                return;
            }
            Image sortImage = new Image();
            if (SortDir == SortDirection.Ascending)
            {
                sortImage.ImageUrl = "../images/dwn.gif";
                sortImage.AlternateText = "Ascending Order";
            }
            else
            {
                sortImage.ImageUrl = "../images/up.gif";
                sortImage.AlternateText = "Descending Order";
            }

            headerRow.Cells[iCol].Controls.Add(sortImage);
        }

        private int GetSortColumnIndex(String strCol)
        {
            foreach (DataControlField field in this.Columns)
            {
                if (field.SortExpression == strCol)
                {
                    return this.Columns.IndexOf(field);
                }
            }
            return -1;
        }

  }

    public class GenericSorter<T, PT>
    {
        public List<T> Sort(IEnumerable<T> source, string sortExpression, SortDirection sortDir)
        {
            var param = Expression.Parameter(typeof(T), "item");

            var sortLambda = Expression.Lambda<Func<T, PT>>(Expression.Convert(Expression.Property(param, sortExpression), typeof(PT)), param);

            if(sortDir == SortDirection.Ascending)
                return source.AsQueryable<T>().OrderBy(sortLambda).ToList();
            else
                return source.AsQueryable<T>().OrderByDescending(sortLambda).ToList();
        }
    }
}
