# Spotify Data Analysis Mod for PowerPipe

Spotify Tracks, Genre and Audio Features data analysis using SQLite and PowerPipe.

![spotify-analysis-dashboard](https://github.com/turbot/powerpipe-mod-spotify/assets/72413708/a80f0972-b993-4d2f-95c3-7429a20ac789)

## Installation

Download and install Powerpipe (https://powerpipe.io/downloads). Or use Brew:

```sh
brew install turbot/tap/powerpipe
```

## Clone the Mod Repository

```sh
git clone https://github.com/turbot/powerpipe-mod-spotify.git
cd powerpipe-mod-spotify
```

## Install the Dataset

- Visit the [Spotify Data Analytics Dataset](https://www.kaggle.com/datasets/maltegrosse/8-m-spotify-tracks-genre-audio-features).

- Click on `Download` (Free signup to Kaggle is required).

- Unzip the Downloaded File:

  - For Mac/Linux:
    - Use the command `unzip ~/Downloads/archive.zip` to extract the file.

  - For Windows:
    - Navigate to the folder containing the downloaded ZIP file, usually the Downloads folder.
    - Right-click on the ZIP file and choose `Extract All...` or `Extract Here` depending on your preference. Follow the on-screen instructions to complete the extraction.

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