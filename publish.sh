find . -name "*dockerfile.*" -print0 | xargs -0 -I {} \
    sh -c "docker tag \\
    \$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace \\
    ghcr.io/${GITHUB_REPOSITORY}/\$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace:latest && \\
    docker push ghcr.io/${GITHUB_REPOSITORY}/\$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace:latest"
