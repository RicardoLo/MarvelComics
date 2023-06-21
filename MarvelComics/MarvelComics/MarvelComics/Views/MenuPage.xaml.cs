using System;
using System.Collections.Generic;
using System.ComponentModel;
using MarvelComics.Model;
using MarvelComics.Resources;
using Xamarin.Forms;

namespace MarvelComics.Views
{
    [DesignTimeVisible(false)]
    public partial class MenuPage : ContentPage
    {
        MainPage RootPage { get => Application.Current.MainPage as MainPage; }
        List<HomeMenuItem> menuItems;
        public MenuPage()
        {
            InitializeComponent();

            menuItems = new List<HomeMenuItem>
            {
                new HomeMenuItem {Id = MenuItemType.Comics, Title= AppResources.Comics, IconSource = "comic" },
                new HomeMenuItem {Id = MenuItemType.Info, Title= AppResources.Info, IconSource = "info" }
            };

            ListViewMenu.ItemsSource = menuItems;

            ListViewMenu.SelectedItem = menuItems[0];
            ListViewMenu.ItemSelected += async (sender, e) =>
            {
                if (e.SelectedItem == null)
                    return;

                var id = (int)((HomeMenuItem)e.SelectedItem).Id;
                await RootPage.NavigateFromMenu(id);
            };
        }
    }
}
