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
