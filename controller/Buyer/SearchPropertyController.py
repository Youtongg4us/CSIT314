from entity.Property import Property
from entity.User import User
class SearchPropertyController:
    def __init__(self):
        pass
    def searchProperty(self,title):
        if Property().findAProperty(title).propertyId != None:
            property = Property().findAProperty(title)
            view = int(property.views)
            view = view + 1
            Property().updateProperty(property.title,property.title,property.description,property.bedNum,
                                  property.bathNum,property.size,property.price,property.status,property.sellerId,view)
        return Property().findAProperty(title)


