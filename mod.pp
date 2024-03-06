mod "spotify" {
  title         = "Spotify"
  description   = "Navigate the soundscape of Spotify with the Spotify Dashboard, providing a deep dive into artist presence, album releases, track counts, and genre diversity, enriched with visual explorations of genre trends, artist popularity, and track popularity, using SQLite with Powerpipe."
  color         = "#1DB954"
  documentation = file("./index.md")
  icon          = "/images/mods/turbot/spotify-dashboard.svg"
  categories    = ["dashboard", "sqlite"]

  opengraph {
    title       = "Powerpipe Mod for Spotify"
    description = "Navigate the soundscape of Spotify with the Spotify Dashboard, providing a deep dive into artist presence, album releases, track counts, and genre diversity, enriched with visual explorations of genre trends, artist popularity, and track popularity, using SQLite with Powerpipe."
    image       = "/images/mods/turbot/spotify-dashboard-social-graphic.png"
  }
}