docker build -t sample:dev2 .


docker run -it --rm -v ${PWD} -v /app/node_modules -v /app/package.json -p 3001:3000 -e CHOKIDAR_USEPOLLING=true sample:dev2