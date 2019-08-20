pushd saturnbase
docker build -t saturncloud/saturnbase:0.8.3 .
popd
pushd saturn
docker build -t saturncloud/saturn:0.8.3 .
popd
pushd saturnbase-gpu
docker build -t saturncloud/saturnbase-gpu:0.8.3 .
popd
pushd saturn-gpu
docker build -t saturncloud/saturn-gpu:0.8.3 .
popd
pushd saturn-r
docker build -t saturncloud/saturn-r:0.8.3 .
popd