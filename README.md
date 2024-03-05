# Spotify Mod for Powerpipe

[Spotify](https://open.spotify.com/) Tracks, Genre and Audio Features data analysis using [SQLite](https://sqlite.org) and [Powerpipe](https://powerpipe.io).

![image](https://github.com/turbot/powerpipe-mod-spotify/blob/initial-set/docs/spotify_dashboard_screenshot.png)

## Overview

Dashboards can help answer questions like:

- How many artists are currently available on Spotify?
- What is the total number of albums available on Spotify?
- How many tracks are there on Spotify?
- How many unique genres are represented on Spotify?

## Documentation

- **[Dashboards →](https://hub.powerpipe.io/mods/turbot/spotify/dashboards)**

## Installation

Download and install Powerpipe (https://powerpipe.io/downloads). Or use Brew:

```sh
brew install turbot/tap/powerpipe
```

Install the mod:

```sh
mkdir dashboards
cd dashboards
powerpipe mod init
powerpipe mod install github.com/turbot/powerpipe-mod-spotify
```

Download the [Spotify Dataset Page](https://www.kaggle.com/datasets/shahjhanalam/movie-data-analytics-dataset/versions/1) (requires signup with [Kaggle](https://www.kaggle.com/))

Extract the downloaded file into the dashboards directory:

```sh
unzip ~/Downloads/archive.zip
```

## Usage

Run the dashboard and specify the DB connection string:

```sh
powerpipe server --database sqlite:spotify.sqlite
```

## Open Source & Contributing

This repository is published under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0). Please see our [code of conduct](https://github.com/turbot/.github/blob/main/CODE_OF_CONDUCT.md). We look forward to collaborating with you!

[Powerpipe](https://powerpipe.io) is a product produced from this open source software, exclusively by [Turbot HQ, Inc](https://turbot.com). It is distributed under our commercial terms. Others are allowed to make their own distribution of the software, but cannot use any of the Turbot trademarks, cloud services, etc. You can learn more in our [Open Source FAQ](https://turbot.com/open-source).

## Get Involved

**[Join #powerpipe on Slack →](https://powerpipe.io/community/join)**

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Powerpipe](https://github.com/turbot/powerpipe/labels/help%20wanted)
- [Spotify Mod](https://github.com/turbot/powerpipe-mod-spotify/labels/help%20wanted)
