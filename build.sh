find . -name "*dockerfile.*" -print0 | xargs -0 -I {} \
    sh -c "docker build --tag \$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace -f {} --build-arg WORKSPACE_USER=$USER ."
