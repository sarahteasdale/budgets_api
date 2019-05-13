json.(item, :id)
json.service item.service, partial: 'services/service', as: :service

# Example:
#  {
#    "id": 1,
#    "service": {
#      "id": 1,
#      "name": "Kedron",
#    }
#  }
