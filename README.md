# Archguard local deploy script

## Volume
数据库目录映射在用户目录下，`~/archguard_db_data`

## Command
- Start all containers
`./deploy.sh up`

- Stop all containers
`./deploy.sh stop`

- Remove all containers
`./deploy.sh rm`

- Pull/Update all images
`./deploy.sh pull` 

- Update all images and restart all changed containers
`./deploy.sh upgrade`