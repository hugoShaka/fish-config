function dockerclean

    echo " ----- Cleaning Volumes ----- "
    docker volume rm (docker volume ls -q)

    echo " ----- Cleaning Images ----- "
    docker rmi (docker images --filter "dangling=true" -q --no-trunc)
    docker rmi (docker images | awk '/ / { print $3 }')

    echo " ----- Cleaning Containers ----- "
    docker rm (docker ps -qa --no-trunc)

end
