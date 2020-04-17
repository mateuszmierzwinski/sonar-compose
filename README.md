# Sonar-Compose

Docker compose for SonarQube CE + PosgreSQL tandem

## Prerequisites
* Docker installed
* Unix operating system (Linux/OSX)
* GNU Make installed

## Running (default)

Default running method covers build, prepare, stop (if running previously), clean and run steps.

```bash
make
```

## Running (without rebuild)

```bash
make run
```

## Stopping

```bash
make stop
```

## Cleaning (remove unused containers)

Cleaning process removes unused containers. Sonar data is persisted in DB level on volume created in **~/dockervolume/sonar-data** directory.
This step can be performed without concern about loosing sonar results.
