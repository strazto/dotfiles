function _get_docker_binary
    set dc docker-compose

    docker compose &> /dev/null && set dc "docker compose"
    echo $dc
end

abbr --add dc (_get_docker_binary)

abbr --add dc-ro (_get_docker_binary) -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.readonly.yml

abbr --add dc-e2e (_get_docker_binary) -f docker-compose.no-bind.yaml -f docker-compose.e2e.yaml
