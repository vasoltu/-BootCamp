*** Settings ***
Documentation   Добавление новых данных в таблицу categories
Metadata        Автор             Тупицин Василий Олегович
Metadata        Задача            http://localhost:3000
Resource        resource.robot
Test Timeout    10s
*** Test Cases ***
Post
    Post_data_in_table_categories  17  Thriller
    Post_data_in_table_categories  18  Dorama
