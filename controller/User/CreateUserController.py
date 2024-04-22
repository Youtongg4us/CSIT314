from entity.User import User
from entity.Profile import Profile

class CreateUserController:
    def __init__(self):
        pass

    def createUser(self,username,password,email,userType):
        if User().findAUser(username).getUserID() is not None:
            return False
        userTypeId = Profile().findProfileIdByName(userType)
        return User().addUser(username,password,email,userTypeId)

#创建账户，成功返回True，如果已经存在账户，返回False