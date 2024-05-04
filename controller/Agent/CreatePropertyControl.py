from entity.User import User
from entity.Property import Property
class CreatePropertyControl:
    def __init__(self):
        pass

    def createProperty(self,agentID,title, description, bedNum, bathNum, size, price,
                       Sellername):
        try:
            sellerID = User().findAUser(Sellername).userid
            bedNum = int(bedNum)
            size = float(size)
            price = float(price)
            Property().addProperty(title=title, description=description, bedNum=bedNum,
                                   bathNum=bathNum, size=size, price=price, agentid=agentID, sellerid=sellerID)
        except Exception:
            return False
        else:
            return True

'''
中介创建新的房产信息
创建成功返回True，错误返回False
'''
