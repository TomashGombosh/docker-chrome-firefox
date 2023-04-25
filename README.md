# Chrome and Firefox browser in the Ubuntu docker images

Available on [Docker Hub](hhttps://hub.docker.com/r/tomash-gombosh/chrome-firefox/).

Docker images for UI automation tests with the Java and Javascript languages.

Also, images can not scale the selenium grid using AWS Fargate

Includes:

- **Unbutu** 22.10 Kinetic
- **JRE** 11/17/18.
- **Node** 16
- **Selenium Grid** 4.9.0 (latest)

The following Docker tags are available:

- `jre-11` [(jre-11/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-11/Dockerfile)
- `jre-17` [(jre-17/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-17/Dockerfile)
- `latest` [(jre-18/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-18/Dockerfile)
- `grid` [(jre-18-grid/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-18-grid/Dockerfile)
- `jre-17-grid` [(jre-17-grid/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/jre-17-grid/Dockerfile)
- `node` [(node-16/Dockerfile)](https://github.com/TomashGombosh/docker-chrome-firefox/blob/develop/node-16/Dockerfile)

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

`docker run -e HUB_URL=http://127.0.0.1:4444 -e TIMEOUT=3600 -e NODE_IP=helloword.com tomash-gombosh/chrome-firefox:grid`

Where:

- HUB_URL is location of the selenium grid [hub](https://www.selenium.dev/documentation/grid/components/)
- TIMEOUT of the container, can be empty. If an empty container never stops
- NODE_IP server IP or hostname to report the selenium grid node. Can be empty, which means the host IP will be determined automatically.

### Gitlab CI

It can be used for the `.gitlab-ci.yml` to run a test on the GitLab shared runner.

**NOTE**: Maven included in the latest, jre-17, jre-11 images

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

### Setup

#### Windows

To build an image in the windows run script `build.ps1 {folder}`, where the folder is the build folder. (ex. jre-11)
After redirecting to the build folder.
To build image run `docker build -it tomashgombosh/docker-chrome-firefox:local`

#### Ubuntu/OSX

To build an image in the ubuntu/osx run script `build.sh {folder}`, where the folder is the build folder. (ex. jre-11)
After redirecting to the build folder.
To build image run `docker build -it tomashgombosh/docker-chrome-firefox:local`
