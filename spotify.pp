dashboard "spotify" {

  title         = "Spotify Dashboard"
  documentation = file("./docs/spotify.md")

  container {
    title = "Overview"

    card {
      query = query.spotify_artists_count
      width = 3
      type  = "info"
    }

    card {
      query = query.spotify_albums_count
      width = 3
      type  = "info"
    }

    card {
      query = query.spotify_tracks_count
      width = 3
      type  = "info"
    }

    card {
      query = query.spotify_unique_genres_count
      width = 3
      type  = "info"
    }
  }

  container {
    title = "Music Genres and Diversity"

    chart {
      query = query.spotify_top_genres_by_artists
      title = "Top 10 Genres by Artist Association"
      width = 6
      type  = "pie"
    }

    chart {
      query = query.spotify_top_genres_by_tracks
      title = "Top 10 Genres by Track Production"
      width = 6
      type  = "bar"
      series "Number of Tracks" {
        title = "Number of Tracks"
        color = "darkblue"
      }
    }
  }

  container {
    title = "Artist Popularity and Reach"

    chart {
      query = query.spotify_top_artists_by_popularity
      title = "Top 10 Artists by Popularity"
      width = 6
      type  = "bar"
      series "popularity" {
        title = "Popularity"
        color = "darkgreen"
      }
    }

    chart {
      query = query.spotify_top_artists_by_followers
      title = "Top 10 Artists by Followers"
      width = 6
      type  = "bar"
      series "followers" {
        title = "Followers"
        color = "darkred"
      }
    }
  }

  container {
    title = "Album and Track Insights"

    chart {
      query = query.spotify_top_10_albums_by_popularity
      title = "Top 10 Albums by Popularity"
      width = 6
      type  = "bar"
      series "popularity" {
        title = "Popularity"
        color = "deeppink"
      }
    }

    chart {
      query = query.spotify_top_10__popular_tracks
      title = "Top 10 Popular Tracks"
      width = 6
      type  = "bar"
      series "popularity" {
        title = "Popularity"
        color = "purple"
      }
    }
  }
}

# Card Queries

query "spotify_artists_count" {
  sql = <<-EOQ
    select
      count(*) as "Total Artists"
    from
      artists;
  EOQ
}

query "spotify_albums_count" {
  sql = <<-EOQ
    select
      count(*) as "Total Albums"
    from
      albums;
  EOQ
}

query "spotify_tracks_count" {
  sql = <<-EOQ
    select
      count(*) as "Total Tracks"
    from
      tracks;
  EOQ
}

query "spotify_unique_genres_count" {
  sql = <<-EOQ
    select
      count(distinct genre_id) as "No Of Unique Genres"
    from
      r_artist_genre;
  EOQ
}

# Chart Queries

query "spotify_top_artists_by_popularity" {
  sql = <<-EOQ
    select
      name,
      popularity
    from
      artists
    order by
      popularity desc
    limit
      10;
  EOQ
}

query "spotify_top_artists_by_followers" {
  sql = <<-EOQ
    select
      name,
      followers
    from
      artists
    order by
      followers desc
    limit
      10;
  EOQ
}

query "spotify_top_10_albums_by_popularity" {
  sql = <<-EOQ
    select
      name,
      popularity
    from
      albums
    order by
      popularity desc
    limit
      10;
  EOQ
}

query "spotify_top_10__popular_tracks" {
  sql = <<-EOQ
    select
      name,
      popularity
    from
      tracks
    order by
      popularity desc
    limit
      10;
  EOQ
}

query "spotify_top_genres_by_artists" {
  sql = <<-EOQ
    select
      rag.genre_id,
      count(distinct rag.artist_id) as "Number of Artists"
    from
      r_artist_genre rag
    group by
      rag.genre_id
    order by
      "Number of Artists" desc
    limit
      10;
  EOQ
}

query "spotify_top_genres_by_tracks" {
  sql = <<-EOQ
    select
      rag.genre_id,
      count(distinct t.id) as "Number of Tracks"
    from
      tracks t
      join r_track_artist rta on t.id = rta.track_id
      join r_artist_genre rag on rta.artist_id = rag.artist_id
    group by
      rag.genre_id
    order by
      "Number of Tracks" desc
    limit
      10;
  EOQ
}
