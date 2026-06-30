Spring MVC Search Application
=============================

Overview
--------
A small Spring MVC web application that demonstrates a simple search feature backed by server-side controllers and JSP views. The app provides a search form on the home page and returns matching results using controller logic in `com.spring.search.controller`.

Key Features
------------
- Simple keyword search UI with results view (JSP).
- Spring MVC controllers and JSP view resolution.
- Maven-based build and optional embedded Tomcat run via plugin.

Technology Stack
----------------
- Java 8+ / 11+
- Spring MVC
- JSP / JSTL
- Maven
- Apache Tomcat (development / deployment)

Prerequisites
-------------
- JDK 8 or later installed and `JAVA_HOME` configured.
- Maven 3.6+ installed.
- (Optional) Apache Tomcat 8/9 for manual deployment.

Build and Run (development)
---------------------------
From the project root, build the WAR with Maven:

```powershell
mvn clean package
```

Run the application using the Tomcat Maven plugin (if configured):

```powershell
mvn tomcat7:run
```

Or deploy the generated WAR from `target/springmvcsearch-1.0.war` to your Tomcat's `webapps` folder and start Tomcat.

Project Structure (important parts)
-----------------------------------
- `src/main/java/com/spring/search/controller` — Spring MVC controllers (e.g., HomeController, SearchController, fileupload).
- `src/main/webapp/WEB-INF/views` — JSP views: `home.jsp`, `fileform.jsp`, `fileSuccess.jsp`, `index.jsp`.
- `src/main/webapp/WEB-INF/spring-servlet.xml` — Spring MVC configuration and view resolver.
- `pom.xml` — Maven build file and plugin configuration.

Primary Files
-------------
- [HomeController.java](src/main/java/com/spring/search/controller/HomeController.java#L1)
- [SearchController.java](src/main/java/com/spring/search/controller/SearchController.java#L1)
- [spring-servlet.xml](src/main/webapp/WEB-INF/spring-servlet.xml#L1)
- [index.jsp](src/main/webapp/index.jsp#L1)

Usage
-----
1. Start the app (via `mvn tomcat7:run` or deploy WAR to Tomcat).
2. Open a browser at `http://localhost:8080/` (or the app context path).
3. Enter a search term on the home page and submit to see results rendered by the JSP view.

Troubleshooting
---------------
- If you see 404s, check `web.xml` and `spring-servlet.xml` mappings and the deployed WAR contents.
- Check Tomcat logs (`logs/catalina.out`) for stack traces.
- Confirm the Maven `package` produced `target/*.war` successfully.

Contributing
------------
PRs and issues are welcome. Keep changes small and focused; provide a short description and steps to reproduce.
