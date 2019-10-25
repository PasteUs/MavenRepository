# Maven Repository

Maven Repository

## Usage

在 `pom.xml` 中引入此仓库

```xml
    <repositories>
        <repository>
            <id>github-repo</id>
            <url>https://raw.githubusercontent.com/PasteUs/MavenRepository/master</url>
            <snapshots>
                <enabled>true</enabled>
                <updatePolicy>always</updatePolicy>
            </snapshots>
        </repository>
    </repositories>
```

## Hint

`https://cdn.jsdelivr.net/gh/PasteUs/MavenRepository@latest` 作为 `maven` 仓库时下载 `jar` 包会 `Forbidden`，暂时不清楚原因。
