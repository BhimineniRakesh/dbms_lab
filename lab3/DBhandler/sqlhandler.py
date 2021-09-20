import mysql.connector

class Mysqlhandler:

    def _init_(self):
        pass
    def add_user(self):
        cnx= mysql.connector.connect(user='root',password='pwd',database='userdb')
        cursor = cnx.cursor()
        query1 = ("insert into user_data values('hemanth',8059,'2001-05-6')")
        query2 = ("insert into user_data values('sravann',9564,'2001-12-9')")
        cursor.execute(query1)
        cursor.execute(query2)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("adding details to user_data table")
        
    def update_user(self):
        cnx= mysql.connector.connect(user='root',password='Kamesh@123',database='userdb')
        cursor = cnx.cursor()
        query4 = ("update user_data set name='sravan',dob='2001-07-20' where phno=9564")
        cursor.execute(query4)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("updating details of user_data table")
        
    def delete_user(self):
        cnx= mysql.connector.connect(user='root',password='Kamesh@123',database='userdb')
        cursor = cnx.cursor()
        query3 = (" delete from user_data where phno=9564 ")
        cursor.execute(query3)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("deleting details from user_data table")
        
    def display_user(self):
        cnx= mysql.connector.connect(user='root',password='Kamesh@123',database='userdb')
        cursor = cnx.cursor()
        query = ("select * from user_data")
        cursor.execute(query)
        print(list(cursor))


if __name__=="__main__":
    mysqlhandler=Mysqlhandler()
    print("user_data table details")
    mysqlhandler.display_user()
    mysqlhandler.add_user()
    mysqlhandler.display_user()
    mysqlhandler.update_user()
    mysqlhandler.display_user()
    mysqlhandler.delete_user()
    mysqlhandler.display_user()
    
