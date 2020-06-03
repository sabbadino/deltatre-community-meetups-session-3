#docker login -u sabbadino
#get timestamp for the tag  
timestamp=$(date +%Y%m%d%H%M%S)  
  
tagTimeStamp=$timestamp  
tagExplicit=1.2

docker tag k8sdemo:latest sabbadino/k8sdemo:latest
docker push sabbadino/k8sdemo:latest

docker tag k8sdemo:latest sabbadino/k8sdemo:$tagTimeStamp
docker push sabbadino/k8sdemo:$tagTimeStamp

docker tag k8sdemo:latest sabbadino/k8sdemo:$tagExplicit
docker push sabbadino/k8sdemo:$tagExplicit
