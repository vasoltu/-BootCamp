import requests

# Получение данных из выбраной таблицы
def Get_And_Check_Response(table):
    # Запрос данных
    url_get = requests.get('http://localhost:3000' + table)
    # Проверка правильности запроса
    if url_get.status_code == 200:
        res = url_get.json()
        print(res)
        return res
    else:
        print('Bad Request', url_get.status_code)

# Добавление данных в таблицу categories
def Post_data_in_table_categories(params1, params2):
    # Ссылка на таблицу
    url_k = 'http://localhost:3000/categories'
    body_elem1 = params1
    body_elem2 = params2
    # Созданме тела с данными на добавление
    body = {'category': body_elem1, 'categoryname': body_elem2}
    # Запрос на добавление данных
    url_post = requests.post(url=url_k, json=body)
    # Проверка правильности запроса
    if url_post.status_code == 201:
        data = '?category=eq.' + body_elem1
        url_get = requests.get('http://localhost:3000/categories' + data)
        res = url_get.json()
        print(res)
        return res
    else:
        print('Bad Request or trying post same data', url_post.status_code)
