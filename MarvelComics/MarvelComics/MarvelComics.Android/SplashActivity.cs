using System;
using Android.App;
using Android.OS;

namespace MarvelComics.Droid
{
    [Activity(Label = "MarvelComics", Icon = "@drawable/marvel_logo", Theme = "@style/Splash", MainLauncher = true, NoHistory = true)]
    public class SplashActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //System.Threading.Thread.Sleep(1000);
            StartActivity(typeof(MainActivity));
            Finish();
        }
    }
}