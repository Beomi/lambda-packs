docker pull amazonlinux:1
docker run -v $(pwd):/outputs --name lambdapackgen-tensorflow -d amazonlinux:1 tail -f /dev/null
docker exec -i -t lambdapackgen-tensorflow /bin/bash /outputs/buildPack_py3.sh
