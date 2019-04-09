[ -z "${image_version}" ] && echo "missing docker image tag" && exit 1
[ -z "${image_name}" ] && echo "missing docker image name" && exit 1

docker run \
    --rm \
    -it \
    --entrypoint /bin/bash \
    -v ${PWD}:/project \
    -m 4g \
    -e JAVA_OPTS='-Xmx4g' \
    ${image_name}:${image_version} \
    -c "doctoolchain . $1 $2 $3 $4 $5 $6 $7 $8 $9 -PmainConfigFile=config/docToolchain.groovy && exit"
