*** Settings ***
Library  RequestsLibrary    WITH NAME   Req
Library  PostgreSQLDB       WITH NAME   DB
Library  JsonValidator      WITH NAME   Js
Library  Collections        WITH NAME   Col

*** Keywords ***
Suite Setup
    Connect Database

Connect Database
    log     соединение установлено
