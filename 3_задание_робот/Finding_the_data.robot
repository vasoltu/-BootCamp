*** Settings ***
Documentation   Проверка поиска данных в таблицах categories, customers, products
Metadata        Автор             Тупицин Василий Олегович
Metadata        Задача            http://localhost:3000
Resource        resource.robot
Test Timeout    10s
*** Test Cases ***
Finding_the_data
    Get_And_Check_Response  /categories?category=gt.5
    Get_And_Check_Response  /customers?creditcardtype=eq.1&state=like.DC
    Get_And_Check_Response  /products?category=eq.16&price=gt.20
