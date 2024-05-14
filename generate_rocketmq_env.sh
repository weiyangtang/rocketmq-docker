for port in $(seq 10911 2000 14911); do \
  mkdir -p broker-${port}-master/store &&\
  mkdir -p broker-${port}-master/conf &&\
  mkdir -p broker-${port}-master/logs &&\
  PORT=${port} BROKER_ROLE="SYNC_MASTER" BROKER_ID=0 envsubst < broker_conf.tmpl > broker-${port}-master/conf/broker.conf;\
done
chown -R 3000:3000 *;
