find . -name "*dockerfile.*" | sort | xargs -I {} \
    sh -c "docker build --tag \$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace -f {} --build-arg WORKSPACE_USER=$USER ."
