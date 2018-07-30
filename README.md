# Transmission docker container

## Usage

    docker run -d \
        --name transmission \
        -p 9091:9091 \
        -p 51413:51413 \
        -p 51413:51413/udp \
        -v <optional_share_dir>:/share \
        -v <downloads_dir>:/downloads \
        -v <config_dir>:/config \
        slimgears/transmission
