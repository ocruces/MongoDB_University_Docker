FROM mongo:4.2.3
RUN mkdir -m777 /var/mongodb \
    &&mkdir -m777 /var/mongodb/db \
    &&mkdir -m777 /var/m103 \
    &&mkdir -m777 /var/m103/validation \
    &&mkdir -m777 /dataset \
    &&apt-get update \
    &&apt-get -y install curl \
    &&echo "Downloading Dataset" \
    &&curl -s https://s3.amazonaws.com/edu-static.mongodb.com/lessons/M103/products.json.tgz -o products.json.tgz \
    &&tar -xzvf products.json.tgz -C /dataset \
    &&rm -rf products.json.tgz \
    &&curl -s https://s3.amazonaws.com/edu-static.mongodb.com/lessons/M103/products.part2.json.tgz -o products.part2.json.tgz \
    &&tar -xzvf products.part2.json.tgz -C /dataset \
    &&rm -rf products.part2.json.tgz \
    && echo "Downloading Validation Scripts" \
    &&  curl -s https://s3.amazonaws.com/edu-static.mongodb.com/lessons/M103/m103_validation.tgz -o m103_validation.tgz \
    &&  tar -xzvf m103_validation.tgz -C /var/m103/validation \
    &&  rm -rf m103_validation.tgz
# Allow vagrant user to write in log directory
RUN chmod 777 /var/log/mongodb
RUN chmod 777 /var/mongodb/db
RUN groupadd -r vagrant && useradd --no-log-init -r -g vagrant vagrant
USER vagrant
#USER mongodb

# For starting with fork enabled
ADD --chown=vagrant:vagrant initScript.bash /tmp/initScript.bash
