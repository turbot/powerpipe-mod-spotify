dashboard "spotify_analysis_dashboard" {
  title = "Spotify Analysis Dashboard"

  # Container: Overview
  container {
    title = "Overview"

    # Card: Total Artists
    card {
      query = query.total_artists
      width = 3
      type  = "info"
    }

    # Card: Total Albums
    card {
      query = query.total_albums
      width = 3
      type  = "info"
    }

    # Card: Total Tracks
    card {
      query = query.total_tracks
      width = 3
      type  = "info"
    }

    # Card: Unique Genres
    card {
      query = query.unique_genres
      width = 3
      type  = "info"
    }
  }

  # Container: Music Genres and Diversity
  container {
    title = "Music Genres and Diversity"

    # Chart: Genre Distribution Among Artists
    chart {
      query = query.top_genres_by_artists
      title = "Top 10 Genres by Artist Association"
      width = 6
      type  = "pie"
    }

    # Chart: Tracks per Genre
    chart {
      query = query.top_genres_by_tracks
      title = "Top 10 Genres by Track Production"
      width = 6
      type  = "bar"
    }
  }

  # Container: Artist Popularity and Reach
  container {
    title = "Artist Popularity and Reach"

    # Chart: Top Artists by Popularity
    chart {
      query = query.top_artists_by_popularity
      title = "Top 10 Artists by Popularity"
      width = 6
      type  = "bar"
    }

    # Chart: Top Artists by Followers
    chart {
      query = query.top_artists_by_followers
      title = "Top 10 Artists by Followers"
      width = 6
      type  = "bar"
    }
  }

  # Container: Album Insights
  container {
    title = "Album and Track Insights"

    # Chart: Top Albums by Popularity
    chart {
      query = query.top_albums_by_popularity
      title = "Top 10 Albums by Popularity"
      width = 6
      type  = "bar"
    }

    chart {
      query = query.most_popular_tracks
      title = "Top 10 Popular Tracks"
      width = 6
      type  = "bar"
    }
  }
}

query "total_artists" {
  sql = <<-EOQ
    select
      count(*) as "Total Artists"
    from
      artists;
  EOQ
}

query "total_albums" {
  sql = <<-EOQ
    select
      count(*) as "Total Albums"
    from
      albums;
  EOQ
}

query "total_tracks" {
  sql = <<-EOQ
    select
      count(*) as "Total Tracks"
    from
      tracks;
  EOQ
}

query "unique_genres" {
  sql = <<-EOQ
    select
      count(distinct genre_id) as "Unique Genres"
    from
      r_artist_genre;
  EOQ
}

query "top_artists_by_popularity" {
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

query "top_artists_by_followers" {
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

query "top_albums_by_popularity" {
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

query "most_popular_tracks" {
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

query "top_genres_by_artists" {
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

query "top_genres_by_tracks" {
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
