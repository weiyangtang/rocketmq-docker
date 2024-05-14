ip=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}')
echo "eth0 ip: ${ip}"
for port in $(seq 10911 2000 14911); do \
  mkdir -p broker-${port}-master/store &&\
  mkdir -p broker-${port}-master/conf &&\
  mkdir -p broker-${port}-master/logs &&\
  PORT=${port} BROKER_ROLE="SYNC_MASTER" BROKER_ID=0 IP_ADDR=${ip}  envsubst < broker_conf.tmpl > broker-${port}-master/conf/broker.conf;
  echo "broker-${port}-master dir and config ok!";
done
chown -R 3000:3000 *;
