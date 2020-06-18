# Simple VRaptor Project

This is a VRaptor project who help you with the basic initial configurations. It counts with some dependencies, like Hibernate 5.1.1, Mysql Ver 14.14 Distrib 5.7.30.

You can import this project on your workspace with Maven (import maven projects), after you can run it with tomcat 9. The base of this project is Java 8.

This project have a complete CRUD and a basic login authentication.


# VRaptor blank project

This is a blank project to help you to use VRaptor. You can easily import in you IDE as Maven project.

Este é um projeto em branco para ajudar você a usar o VRaptor. Você pode facilmente importá-lo na sua IDE favorita como um projeto Maven.

Após criar seu projeto você pode rodá-lo com um tomcat7 ou +:

```
mvn tomcat7:run
```

Cuidado para *jamais* executar `mvn tomcat:run` pois ele usará um tomcat6 (incompatível).
