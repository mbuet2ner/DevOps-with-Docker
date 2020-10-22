git clone https://github.com/mbuet2ner/spring-example-project
cd spring-example-project
docker build -t example .
cat /app/credential.txt | docker login --username mbuet2ner --password-stdin
docker-compose build
docker-compose push
