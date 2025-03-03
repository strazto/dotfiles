function _get_docker_binary
    set dc docker-compose

    if type -q docker
        docker compose &> /dev/null && set dc "docker compose"
    end

    echo $dc
end

abbr --add dc (_get_docker_binary)

abbr --add dc-ro (_get_docker_binary) -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.readonly.yml

abbr --add dc-ex (_get_docker_binary) -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.readonly.yml -f ../media_secondary/compose.yml

abbr --add dc-e2e (_get_docker_binary) -f docker-compose.no-bind.yaml -f docker-compose.e2e.yaml

# Split media server stack
abbr --add dc-split (_get_docker_binary) -f docker-compose.yml -f docker-compose.override.yml -f gateway/docker-compose.yml -f gateway/docker-compose.override.yml -f worker/docker-compose.yml -f worker/docker-compose.override.yml -f worker/docker-compose.readonly.yml