
from datetime import datetime
from elasticsearch import Elasticsearch

client = Elasticsearch(
  "https://localhost:9200",
  api_key="a252Tnc0NEJmREd6UDFBV0swbTQ6ZjY4OER2d0JSZG1NNVZBdFU3QU1Udw==",
  verify_certs=False,
#   ca_certs="C:\elastic-stack\elasticsearch-8.13.1\config\certs\http_ca"
)

index_name = "index_elas"
query = {
    "query": {
        "bool": {
            "must": [
                {"match": {"KeyWordName": "Click On Login Button"}},
                {
                    "knn": {
                        "vector": {
                            "vector": [0.1, 0.2, 0.3],  # Vector de consulta KNN
                            "k":  2 # Número de vecinos más cercanos a recuperar
                        }
                    }
                }
            ]
        }
    }
}

# Realizar la búsqueda y obtener los resultados
response = client.search(index=index_name, body=query)

# Imprimir los resultados
for hit in response["hits"]["hits"]:
    print(hit["_source"])