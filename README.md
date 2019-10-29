# Maven Repository

Maven Repository

## Usage

在 `pom.xml` 中引入此仓库

```xml
    <repositories>
        <repository>
            <id>pasteus-github-mvn-repo</id>
            <url>https://raw.githubusercontent.com/PasteUs/MavenRepository/master</url>
            <snapshots>
                <enabled>true</enabled>
                <updatePolicy>always</updatePolicy>
            </snapshots>
        </repository>
    </repositories>
```

## Mirror

### 本地镜像

1. 将 [docker-compose.yml](./docker-compose.yml) 文件下载或复制至本地

2. 启动本地镜像服务：`docker-compose up -d`

3. 在 `settings.xml` 中加入镜像：

```xml
    <mirrors>
        <mirror>
            <id>pasteus-github-mvn-repo-mirror</id>
            <mirrorOf>pasteus-github-mvn-repo</mirrorOf>
            <name>PasteUs GitHub Mirror</name>
            <url>http://localhost:8080</url>
        </mirror>
    </mirrors>
```

## Hint

使用 `https://cdn.jsdelivr.net/gh/PasteUs/MavenRepository@latest` 作为 `maven` 仓库时下载 `jar` 包会 `Forbidden`，暂时不清楚原因。
