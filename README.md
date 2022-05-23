# Chrome and Firefox browser in the Ubuntu focal docker images

Available on [Docker Hub](hhttps://hub.docker.com/r/tomash-gombosh/chrome-firefox/).

Docker images for UI automation tests with the Java and Javascript languages.

Also, images can not scale the selenium grid using AWS Fargate

Includes: 
- **Unbutu** Focal (Implish incomming)
- **JRE** 11/17. (18 incoming)
- **Node** 16 
- **Selenium Grid** 4.1.4 (latest)

The following Docker tags are available:

* `jre-11` [(jre-11/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-11/Dockerfile)
* `latest` [(jre-17/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-17/Dockerfile)
* `grid` [(jre-17-grid/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-17-grid/Dockerfile)
* `node` [(node-16/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/node-16/Dockerfile)


## Tips

#### Chrome
```java
final ChromeOptions options = new ChromeOptions();
options.setHeadless(true);
WebDriver driver = new ChromeDriver(options);
```

#### Firefox
```java
final FirefoxOptions options = new FirefoxOptions();
options.setHeadless(true);
WebDriver driver = new FirefoxDriver(options);
```

### Launch in the selenium grid 

[Selenium Grid](https://www.selenium.dev/documentation/grid/)

`docker run -e HUB_URL=http://127.0.0.1:4444 -e TIMEOUT=3600 tomash-gombosh/chrome-firefox:grid`

Where: 
- HUB_URL is location of the selenium grid [hub](https://www.selenium.dev/documentation/grid/components/)
- TIMEOUT of the container, can be empty. If an empty container never stops

### Gitlab CI

It can be used for the `.gitlab-ci.yml` to run a test on the GitLab shared runner. 

**NOTE**: No include maven in the container use a [maven wrapper](https://maven.apache.org/wrapper/)

```yml
image: tomashgombosh/chrome-firefox:lates
test-chrome:
  stage: test
  script:
    - ./mvnw clean test

test-firefox:
  stage: test
  variables:
    BROWSER: "firefox"
  script:
    - ./mvnw clean test

```