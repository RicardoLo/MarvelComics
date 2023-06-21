using System;
using System.Collections.Generic;
using MarvelComics.Model;
using MarvelComics.ViewModels;
using Rg.Plugins.Popup.Pages;
using Xamarin.Forms;

namespace MarvelComics.Views.Popups
{	
	public partial class FilterComicPopup : PopupPage
    {
        public event EventHandler ItemFilterSelected;
        FilterComicsPopupViewModel viewModel;

        public FilterComicPopup()
        {
            InitializeComponent();

            BindingContext = viewModel = new FilterComicsPopupViewModel();
        }

        void OnItemFilterSelected(object sender, SelectedItemChangedEventArgs args)
        {
            ListViewFilter.SelectedItem = null;

            FilterComicItem selectedFormat = (FilterComicItem)args.SelectedItem;

            if (selectedFormat != null)
                ItemFilterSelected?.Invoke(selectedFormat, args);
        }
    }
}

