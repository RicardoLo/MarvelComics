using System;
namespace MarvelComics.Model
{
    public enum MenuItemType
    {
        Comics,
        Info
    }
    public class HomeMenuItem
    {
        public MenuItemType Id { get; set; }

        public string Title { get; set; }

        public string IconSource { get; set; }
    }
}
