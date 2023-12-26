## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

Список выполненных задач:
Задача 2 - В register.html и login.html удалены кнопки Vk и Yandex;
Удалены  YandexOAuth2UserDataHandler и VkOAuth2UserDataHandler;
В application.yaml удалены конфигурации Vk и Yandex для аутентификации по протоколу OAuth 2.0;
В all.min.css и all.css удалены иконки Vk и Yandex;
В классе ProfileTestData в методах getUpdatedTo и getUpdated удалена возможность добавить Vk;
SQL файлы решил не трогать.

Задача 3 - В папке ресурсов создал application.properties и внёс переменные через командную строку.

Windows:
set SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/jira
set SPRING_DATASOURCE_USERNAME=jira
set SPRING_DATASOURCE_PASSWORD=JiraRush
set SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_ENABLE=true
set SPRING_MAIL_PROPERTIES_MAIL_SMTP_AUTH=true
set SPRING_MAIL_HOST=smtp.gmail.com
set SPRING_MAIL_USERNAME=jira4jr@gmail.com
set SPRING_MAIL_PASSWORD=zdfzsrqvgimldzyj
set SPRING_MAIL_PORT=587
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_CLIENT_ID=3d0d8738e65881fff266
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_CLIENT_SECRET=0f97031ce6178b7dfb67a6af587f37e222a16120
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_SCOPE=email
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_CLIENT_ID=329113642700-f8if6pu68j2repq3ef6umd5jgiliup60.apps.googleusercontent.com
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_CLIENT_SECRET=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
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_SCOPE=email, profile
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_ID=b8520a3266089063c0d8261cce36971defa513f5ffd9f9b7a3d16728fc83a494
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_SECRET=e72c65320cf9d6495984a37b0f9cc03ec46be0bb6f071feaebbfe75168117004
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_NAME=GitLab
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_REDIRECT_URI={baseUrl}/login/oauth2/code/{registrationId}
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_AUTHORIZATION_GRANT_TYPE=authorization_code
set SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_SCOPE=read_user
set SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_AUTHORIZATION_URI=https://gitlab.com/oauth/authorize
set SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_TOKEN_URI=https://gitlab.com/oauth/token
set SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_USER_INFO_URI=https://gitlab.com/api/v4/user
set SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_USER_NAME_ATTRIBUTE=email

Unix/Linux/Mac:
export SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/jira
export SPRING_DATASOURCE_USERNAME=jira
export SPRING_DATASOURCE_PASSWORD=JiraRush
export SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_ENABLE=true
export SPRING_MAIL_PROPERTIES_MAIL_SMTP_AUTH=true
export SPRING_MAIL_HOST=smtp.gmail.com
export SPRING_MAIL_USERNAME=jira4jr@gmail.com
export SPRING_MAIL_PASSWORD=zdfzsrqvgimldzyj
export SPRING_MAIL_PORT=587
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_CLIENT_ID=3d0d8738e65881fff266
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_CLIENT_SECRET=0f97031ce6178b7dfb67a6af587f37e222a16120
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITHUB_SCOPE=email
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_CLIENT_ID=329113642700-f8if6pu68j2repq3ef6umd5jgiliup60.apps.googleusercontent.com
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_CLIENT_SECRET=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
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GOOGLE_SCOPE=email, profile
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_ID=b8520a3266089063c0d8261cce36971defa513f5ffd9f9b7a3d16728fc83a494
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_SECRET=e72c65320cf9d6495984a37b0f9cc03ec46be0bb6f071feaebbfe75168117004
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_CLIENT_NAME=GitLab
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_REDIRECT_URI={baseUrl}/login/oauth2/code/{registrationId}
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_AUTHORIZATION_GRANT_TYPE=authorization_code
export SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_GITLAB_SCOPE=read_user
export SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_AUTHORIZATION_URI=https://gitlab.com/oauth/authorize
export SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_TOKEN_URI=https://gitlab.com/oauth/token
export SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_USER_INFO_URI=https://gitlab.com/api/v4/user
export SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_GITLAB_USER_NAME_ATTRIBUTE=email

Измените порты на ваши собственные, если они не соответствуют.

Также удалил из application.yaml все чувствительные данные, которые занёс в проперти.

Задача 6 - Сделано

Задача 9 - Сделано