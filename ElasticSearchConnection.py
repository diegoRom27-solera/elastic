from datetime import datetime
from elasticsearch import Elasticsearch


# client = Elasticsearch(
#     hosts=[
#             "https://localhost:9200"
#     ],
#     http_auth=('elastic', 'HQFf7v8ip*W-aAypTN7R'),
#     verify_certs=False,
#     # ca_certs="./http_ca.crt",
# )


client = Elasticsearch(
  "https://localhost:9200",
  api_key="",
  verify_certs=False,
#   ca_certs="C:\elastic-stack\elasticsearch-8.13.1\config\certs\http_ca"
)

client.info()
# doc = {
#     "author": "kimchy",
#     "text": "Elasticsearch: cool. bonsai cool.",
#     "timestamp": datetime.now(),
# }



# resp = client.index(index="test-index", id=1, document=doc)
# print(resp["result"])

# resp = client.get(index="test-index", id=1)
# print(resp["_source"])

# client.indices.refresh(index="test-index")

resp = client.search(index="index_elas", 
                     query={"match": {
    "KeyWordName": "Click On Login Button"
    }
    },

    
    
    
    )
print("Got {} hits:".format(resp["hits"]["total"]["value"]))
for hit in resp["hits"]["hits"]:
    score = hit["_score"]
    kwName = hit["_source"]["KeyWordName"]
    kwCode = hit["_source"]["KeywordCode"]
    poName = hit["_source"]["PageObject"]
    print(f"poName: {poName}")
    print(f"Score: {score}")
    print(f"kwName: {kwName}")
    print(f"kwCode: {kwCode}")

    # print("{KeyWordName} {KeywordCode} {PageObject}".format(**hit["_source"]))
