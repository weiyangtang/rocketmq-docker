1. 项目功能介绍

docker compose搭建有3个master-broker的rocketmq集群，同时搭配以rocketmq-dashboard控制台查看集群和topic、消费组信息
dashboard 地址 http://localhost:8080/#/cluster
<img width="1260" alt="image" src="https://github.com/weiyangtang/rocketmq-docker/assets/40015805/52abc625-dd18-4fbf-8c1e-7181f04d5a6e">

3. 使用说明
   
启动脚本，搭建集群，启动namesrv、broker、dashboard
```
sudo sh rocketmq_3m_starter.sh
```
查看服务启动状态
```
docker compose ps
```
<img width="579" alt="image" src="https://github.com/weiyangtang/rocketmq-docker/assets/40015805/8f424d73-f9a7-4cf9-8862-51fa3289a3ac">
