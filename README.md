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

## 代理或镜像

由于不可描述的原因，国内用户在访问 [raw.githubusercontent.com](https://raw.githubusercontent.com/) 时会 `404`，所以需要为 `Maven` 设置代理，或直接访问镜像来使用 PasteMe 的私有仓库。

### 使用代理

> 更推荐使用这种方式

编辑 `setting.xml` 文件，在 `<proxies></proxies>` 节点中添加代理信息。

```xml
        <proxy>
            <id>local-proxy</id>
            <active>true</active>
            <protocol>http</protocol>
            <!--
            <username>proxy_user</username>
            <password>proxy_pass</password>
            -->
            <host>your.proxy.host</host>
            <port>your.proxy.port</port>
            <nonProxyHosts>localhost|127.0.0.1</nonProxyHosts>
        </proxy>
```

### 镜像

#### 在线镜像

在 `settings.xml` 中加入镜像配置：

```xml
    <mirrors>
        <mirror>
            <id>pasteus-github-mvn-repo-mirror</id>
            <mirrorOf>pasteus-github-mvn-repo</mirrorOf>
            <name>PasteUs GitHub Mirror</name>
            <url>http://mvnrepo.pasteme.lucien.ink</url>
        </mirror>
    </mirrors>
```

#### 本地镜像

1. 将 [docker-compose.yml](./docker-compose.yml) 文件下载或复制至本地

2. 启动本地镜像服务：`docker-compose up -d`

3. 在 `settings.xml` 中加入镜像配置：

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
