## Docker 명령어 

```bash
docker run -d -p 58080:8080 -p 50000:50000 --name jenkins --restart=always -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

### 설정

#### 초기 패스워드 설정

```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

#### 권장 Plugin 설치 

