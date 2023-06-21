using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using MarvelComics.Model;
using MarvelComics.ViewModels;
using MarvelComics.Views.Popups;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms;

namespace MarvelComics.Views
{	
	public partial class ComicListPage : ContentPage
	{

       private ComicListViewModel viewModel;
       private FilterComicPopup filterComicPopup = new FilterComicPopup();
        private double comicListScrollY;

        public ComicListPage ()
        {
            InitializeComponent ();

            BindingContext = viewModel = new ComicListViewModel((Navigation));
            NavigationPage.SetBackButtonTitle(this, "");

            filterComicPopup.ItemFilterSelected += ItemFilterSelected;

            viewModel.OnLoadedData = ((obj) =>
            {
                ListComics.ScrollTo(((IList)ListComics.ItemsSource)[0], ScrollToPosition.Start, true);
            });

            ListComics.Scrolled += (sender, e) =>
            {
                comicListScrollY = e.ScrollY;
            };

            //var vm = new ComicListViewModel();

            //listCharacters.ItemSelected += (object sender, SelectedItemChangedEventArgs e) =>
            //{
            //    //var character = (CharacterItemViewModel)e.SelectedItem;
            //    //var infoVm = new InformacoesViewModel(character.Id);
            //    //var infoView = new InformacoesPage(infoVm);
            //    //App.Navigation.PushAsync(infoView);
            //};

            //listCharacters.IsPullToRefreshEnabled = true;

            //BindingContext = vm;
            //vm.LoadData(null, 100, 0);
        }

        async void OnItemSelected(object sender, SelectedItemChangedEventArgs args)
        {
            ListComics.SelectedItem = null;

            var comic = args.SelectedItem as ComicItemViewModel;
            if (comic == null)
                return;

            await Navigation.PushAsync(new ComicDetailPage(new ComicDetailViewModel(comic)), true);
        }

        private void OnFilterTapped(object sender, EventArgs args)
        {
           PopupNavigation.Instance.PushAsync(filterComicPopup);
        }

        public void ItemFilterSelected(object sender, EventArgs args)
        {
            viewModel.FilterComicByFormatAsync((FilterComicItem)sender);

            PopupNavigation.Instance.PopAsync();
        }

        private void OnImageSearchTapped(object sender, EventArgs args)
        {
                if (SearchBarComics.IsVisible)
                {
                    HideSearchBar();
                }

                else
                {
                    SearchBarComics.IsVisible = true;
                    ToolbarItems[0].IconImageSource = "icono_lupa_close";
                }
        }

        protected override bool OnBackButtonPressed()
        {

            List<PopupPage> popUpPages = PopupNavigation.Instance.PopupStack.ToList();

            if (popUpPages.Count > 0)
            {
                PopupNavigation.Instance.PopAsync();
                return true;
            }
            else if (SearchBarComics.IsVisible)
            {
                HideSearchBar();
                return true;
            }
            else if (comicListScrollY > 0)
            {
                ListComics.ScrollTo(((IList)ListComics.ItemsSource)[0], ScrollToPosition.Start, true);
                return true;
            }
            else
            {
                //DependencyService.Get<ICloseAppService>().CloseApplication();
                Application.Current.Quit();
                return false;
            }
        }


        private void HideSearchBar()
        {
            SearchBarComics.IsVisible = false;
            ToolbarItems[0].IconImageSource = "icono_lupa";
            SearchBarComics.Text = String.Empty;
            viewModel.LoadData(null);
        }
    }
}
