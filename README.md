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

### Таблица Car ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| car_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| state_number |  Государственные номера | VARCHAR | NOT NULL |
| rating | Рейтинг  | INTEGER | NOT NULL  |
| category | Категория  | VARCHAR(30) | NOT NULL  |
| child_safety_seat | Детское кресло | VARCHAR(4) | NOT NULL |
| status_rent | Статус аренды | VARCHAR(20) | NOT NULL |

### Таблица Car_rental ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| rent_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| car_id | Идентификатор  | INTEGER | FOREIGN KEY |
| client_id | Идентификатор  | INTEGER | FOREIGN KEY  |
| start_rent_date | Дата начала аренды  | DATE | NOT NULL  |
| end_rent_date | Дата конца аренды | DATE | NOT NULL |

### Таблица Rate ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| rate_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| car_id | Идентификатор  | INTEGER | FOREIGN KEY |
| cost | Цена тарифа  | INTEGER | NOT nULL |

### Таблица Review ###
|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| review_id | Идентификатор | INTEGER       | PRIMARY KEY   |
| car_id | Идентификатор  | INTEGER | FOREIGN KEY |
| client_id | Идентификатор  | INTEGER | FOREIGN KEY  |
| score | Балл  | INTEGER | NOT NULL  |
| review_type | Тип отзыва | VARCHAR(30) | NOT NULL |
