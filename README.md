# DB_project

# Физическая модель #

### Таблица Client ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| client_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| surname | Фамилия клиента | VARCHAR(50) | NOT NULL  |
| first_name | Имя клиента  | VARCHAR(50) | NOT NULL  |
| patronymic | Отчество клиента  | VARCHAR(50) | NULL  |
| passport_series_number | Серия и номер пасспорта  | INTEGER | NOT NULL  |
| birth_date | День рождение клиента  | DATE | NOT NULL  |
| driver_license_number | Номер водитеского удостоверения | VARCHAR(50) | NOT NULL  |
| CTP_policy_registration_date | Дата получения полиса ОСАГО | DATE | NOT NULL  |

### Таблица Car_history ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| car_history_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| car_id |  Индетификатор | INTEGER | FOREIGN KEY |
| start_use_date | Дата начала аренды  | DATE | NOT NULL  |
| end_use_date | Дата конца аренды  | DATE | NULL  |
