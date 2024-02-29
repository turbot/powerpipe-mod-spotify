# Spotify Mod for Powerpipe

Spotify Tracks, Genre and Audio Features data analysis using SQLite and Powerpipe.

![image](https://github.com/turbot/powerpipe-mod-spotify/assets/72413708/a80f0972-b993-4d2f-95c3-7429a20ac789)

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

Clone:

```sh
git clone https://github.com/turbot/powerpipe-mod-spotify.git
cd powerpipe-mod-spotify
```

Download the [Spotify Dataset Page](https://www.kaggle.com/datasets/shahjhanalam/movie-data-analytics-dataset/data) (requires signup with [Kaggle](https://www.kaggle.com/))

Extract the downloaded file in the current directory:

```sh
unzip ~/Downloads/archive.zip
```

## Usage

Run the dashboard and specify the DB connection string:

```sh
powerpipe server --database sqlite:spotify.sqlite
```

If you have extracted the file in any other location then you need to provide the full path like below:

```sh
powerpipe server --database sqlite:///path/to/the/file/file.sqlite
```

## Open Source & Contributing

This repository is published under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0). Please see our [code of conduct](https://github.com/turbot/.github/blob/main/CODE_OF_CONDUCT.md). We look forward to collaborating with you!

[Powerpipe](https://powerpipe.io) is a product produced from this open source software, exclusively by [Turbot HQ, Inc](https://turbot.com). It is distributed under our commercial terms. Others are allowed to make their own distribution of the software, but cannot use any of the Turbot trademarks, cloud services, etc. You can learn more in our [Open Source FAQ](https://turbot.com/open-source).

## Get Involved

**[Join #powerpipe on Slack →](https://powerpipe.io/community/join)**

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Powerpipe](https://github.com/turbot/powerpipe/labels/help%20wanted)
- [Spotify Mod](https://github.com/turbot/powerpipe-mod-spotify/labels/help%20wanted)