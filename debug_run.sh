cd ..
cd minio-mds
rm -Rf dist
make
cd ..
cd minio-console/web-app
rm -Rf node_modules/mds
rm -Rf build
yarn install
yarn build
cd ..
rm console
go build ./cmd/console/
./console server

