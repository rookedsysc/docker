#!/bin/bash

# 서비스 목록
services=("server-1" "server-2")

# 배포할 이미지
image="rookedsysc/gamemuncheol:latest"

# Docker Compose 파일 위치
compose_file="~/Documents/docker/gamemuncheol/docker-compose.yaml"

# 롤링 업데이트 함수
update_service() {
  service=$1
  echo "Updating $service..."

  # 서비스 업데이트 및 재시작
  sudo docker compose up -d --no-deps --scale $service=1 $service

  echo "$service has been updated."
}

# 각 서비스 업데이트
for service in "${services[@]}"; do
  update_service $service
done

echo "Rolling update completed successfully."
