*** Settings ***
Documentation   Проверка добавления данных в таблицу categories
Metadata        Автор             Тупицин Василий Олегович
Metadata        Задача            http://localhost:3000
Resource        resource.robot
Test Timeout    10s
*** Test Cases ***
Post_Check
   Get_And_Check_Response   /categories
