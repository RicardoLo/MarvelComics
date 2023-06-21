using System;
using MarvelComics.Services;
using MarvelComics.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MarvelComics
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            DependencyService.Register<MarvelApiService>();
            MainPage = new MainPage();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}

