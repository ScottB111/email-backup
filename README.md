# email-backup

by Daniel D. Beck

This repo helps you set up email backups with [OfflineIMAP/offlineimap](https://github.com/OfflineIMAP/offlineimap).

You are free to copy, modify, and distribute this project under the terms of the 3-clause BSD license. See the LICENSE file for details.

## Prerequisites

To use this project, you'll need the following:

- Docker
- The [fish](https://fishshell.com/) shell

## Usage

1. Create a `imaprc` file. See `imaprc-example` for details.
2. Copy `run.fish` with paths to your `imaprc` file, a metadata directory, and your backup Maildir directory.
3. Run `build.sh` to build the Docker image.
4. Run your copy of `run.fish`.
