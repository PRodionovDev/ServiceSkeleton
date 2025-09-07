# Skeleton Service

## Назначение

Шаблон для создания микросервисов на PHP (Symfony, PHP-8.1, PostgreSQL-16, Nginx)

## Развертывание

1. Клонируем репозиторий в директорию нового проекта

```shell
mkdir service_name
cd service_name
git clone git@github.com:PRodionovDev/ServiceSkeleton.git
```


## Локальный запуск

Запускаем инициализацию

```shell
make init
```

Проект доступен по url:
http://localhost:8080

## Управление проектом
Управление контейнерами и проектом реализована через Makefile:

```shell
make init # Первая сборка приложения
make up # Запуск контейнеров Docker
make down # Остановка контейнеров Docker
make diff # Создать миграцию для базы данных
make migrate # Применить миграцию к базе данных
make clear # Очистка кэша симфони
```