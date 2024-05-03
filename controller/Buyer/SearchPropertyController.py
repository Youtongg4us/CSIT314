from entity.Property import Property
from entity.User import User
class SearchPropertyController:
    def __init__(self):
        pass
    def searchProperty(self,title):
        property = Property().findAProperty(title)
        view = property.views
        view = view + 1
        Property().updateProperty(property.title,property.title,property.description,property.bedNum,
                                  property.bathNum,property.size,property.price,property.status,property.sellerId,view)
        return Property().findAProperty(title)

    # def transferPropertyToList(self,property):
    #     propertyText = []
    #     propertyText.append(property.getTitle())
    #     propertyText.append(property.getDescription())
    #     propertyText.append(property.getBedNum())
    #     propertyText.append(property.getBathNum())
    #     propertyText.append(property.getSize())
    #     propertyText.append(property.getPrice())
    #     propertyText.append(property.getStatus())
    #     return propertyText


