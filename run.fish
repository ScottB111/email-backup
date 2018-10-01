#!/usr/bin/env fish

set IMAPRC_FILE ''
set BACKUPS_PATH ''
set METADATA_PATH ''

begin # check configuration
    set -l err 0

    if not test -n $IMAPRC_FILE -a -e $IMAPRC_FILE
        echo "Set path to an imaprc file (e.g., /path/to/mail/imaprc-<username>)"
        set err 1
    end

    if not test -n $BACKUPS_PATH -a -d $BACKUPS_PATH
        echo "Set path to an existing backup directory (e.g., /path/to/backups/<username>/)"
        set err 1
    end

    if not test -n $METADATA_PATH -a -d $METADATA_PATH
        echo "Set path to an existing metadata directory (e.g., /path/to/metadata/<username>/)"
        set err 1
    end

    if test $err -gt 0
        exit 1
    end
end

docker run \
    -v $IMAPRC_FILE:/imaprc \
    -v $BACKUPS_PATH:/mnt/data \
    -v $METADATA_PATH:/mnt/metadata \
    ddbeck/emailbackup:latest
