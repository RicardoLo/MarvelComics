using System;
using System.Collections.Generic;
using MarvelComics.Model;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MarvelComics.Views
{	
	public partial class MainPage : MasterDetailPage
    {
        Dictionary<int, NavigationPage> MenuPages = new Dictionary<int, NavigationPage>();
        public MainPage()
        {
            InitializeComponent();
            MasterBehavior = MasterBehavior.Popover;
            MenuPages.Add((int)MenuItemType.Comics, (NavigationPage)Detail);
        }

        public async Task NavigateFromMenu(int id)
        {
            if (!MenuPages.ContainsKey(id))
            {
                switch (id)
                {
                    case (int)MenuItemType.Comics:
                        MenuPages.Add(id, new NavigationPage(new ComicListPage()));
                        break;
                    case (int)MenuItemType.Info:
                        MenuPages.Add(id, new NavigationPage(new AboutPage()));
                        break;
                }
            }

            var newPage = MenuPages[id];


            if (newPage != null && Detail != newPage)
            {
                Detail = newPage;

                if (Device.RuntimePlatform == Device.Android)
                    await Task.Delay(50);

                IsPresented = false;
            }
        }
    }
}