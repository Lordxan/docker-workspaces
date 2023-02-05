find . -name "*dockerfile.*" -print0 | xargs -0 -I {} \
    sh -c "docker tag \\
    \$(echo {} | xargs basename | sed -e 's/^.*\.//g')-workspace \\
    ghcr.io/\$(echo ${GITHUB_REPOSITORY} | tr A-Z a-z):\$(echo {} | xargs basename | sed -e 's/^.*\.//g') && \\
    docker push ghcr.io/\$(echo ${GITHUB_REPOSITORY} | tr A-Z a-z):\$(echo {} | xargs basename | sed -e 's/^.*\.//g')"
