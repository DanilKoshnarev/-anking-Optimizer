# Banking Transaction Optimizer

## Описание
Banking Transaction Optimizer - это система для оптимизации банковских транзакций, построенная на Haskell с использованием принципов Domain-Driven Design (DDD). Система включает модули для управления транзакциями и аккаунтами, а также оптимизации транзакций.

## Структура проекта
Проект разделен на несколько слоев для улучшения читаемости и поддерживаемости кода:

- **Domain**: Основная бизнес-логика и правила.
- **Application**: Интерфейсы, юзкейсы и реализации для работы с данными.
- **Infrastructure**: Реализация деталей инфраструктуры, таких как репозитории данных.
- **Presentation**: Взаимодействие с пользователем.

## Установка
1. Клонируйте репозиторий:
    ```bash
    git clone <URL репозитория>
    ```
2. Перейдите в каталог проекта:
    ```bash
    cd banking-optimizer
    ```
3. Установите необходимые зависимости:
    ```bash
    stack setup
    stack build
    ```

## Запуск
Для запуска проекта выполните команду:
```bash
stack run
```

## Структура каталогов
```plaintext
banking-optimizer/
├── src/
│   ├── Domain/
│   │   ├── Entities/
│   │   │   ├── Transaction.hs
│   │   │   ├── Account.hs
│   │   ├── Repositories/
│   │   │   ├── TransactionRepository.hs
│   │   │   └── AccountRepository.hs
│   │   ├── Services/
│   │   │   ├── TransactionService.hs
│   │   │   └── AccountService.hs
│   │   └── UseCases/
│   │       ├── OptimizeTransactions.hs
│   │       └── ManageAccounts.hs
├── Infrastructure/
│   ├── Persistence/
│   │   ├── Postgres/
│   │   │   ├── TransactionRepositoryImpl.hs
│   │   │   └── AccountRepositoryImpl.hs
│   └── Config.hs
├── App/
│   ├── Controllers/
│   │   └── TransactionController.hs
│   │   └── AccountController.hs
├── Main.hs
├── Setup.hs
├── stack.yaml
└── README.md
```

## Описание компонентов
### Domain
- **Transaction.hs, Account.hs**: Классы сущностей транзакций и аккаунтов.
- **TransactionRepository.hs, AccountRepository.hs**: Интерфейсы репозиториев транзакций и аккаунтов.

### Application
- **OptimizeTransactions.hs, ManageAccounts.hs**: Юзкейсы для оптимизации транзакций и управления аккаунтами.

### Infrastructure
- **TransactionRepositoryImpl.hs, AccountRepositoryImpl.hs**: Реализация репозиториев транзакций и аккаунтов с использованием PostgreSQL.
- **Config.hs**: Конфигурация подключения к базе данных.

### Presentation
- **TransactionController.hs, AccountController.hs**: Контроллеры для взаимодействия с пользователем.

## Лицензия
Этот проект лицензирован под лицензией MIT. Для получения дополнительной информации смотрите файл LICENSE.
