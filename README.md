
# Swiggy Analysis Project

Welcome to the Swiggy Analysis Project! 🍔📊


This project aims to analyze various aspects of Swiggy, one of the leading food delivery platforms, to gain insights into pricing trends, cuisine types, menu items, ratings, and city-wise variations. By leveraging data mangement by SQL tool, we will explore and key metrics to better understand the dynamics of the platform.

### Steps followed 
- Step 1 : Load data into Mysql, dataset is a csv file.
- Step 2 : Do the Recce, Check is there any missing value or error values in csv file, if there is no errors contitue next Steps
- Step 2 : Open the python, install data loading package
- Step 3 : Pandas, Sqlalchemy and pymysql to be install in command prompt
     - py --version (run)
    - py -m pip install --upgrade pip (run)
     - py -m pip install numpy (run)
     - py -m pip install Pandas (run)
     - py -m pip install Sqlalchemy (run)
     - py -m pip install pymysql (run)

- Step 4 : To load csv file to sql with help of python, 
    
      import pandas as pd
      from sqlalchemy import create_engine
      conn_string = 'mysql+pymysql://root:fropa1432@localhost/Swiggy'
      db=create_engine(conn_string)
      conn=db.connect()
      files = ['restaurant_no', 'restaurant_name', 'city', 'address', 
      'rating', 'cost_per_person', 'restaurant_link', 'menu_category', 
      'item','price', 'veg_or_non-veg]
      for file in files:
      df = pd.read_csv (f'/Users/prave/OneDrive/Desktop/sql/project/archive/{file}.CSV')
      df.to_sql(file, con=conn, if_exists='replace', index=False)
- Step 5 : run this sucessfully, next go to mysql data base , check the csv file in load or not for that, in sql write a code

      Select * from Swiggy;

check the row and columns thorougly.

### Technology use are :

- Microsoft Excel
- Python ( pandas, sqlalchemy, pymysql) 
- mysql

### Contributions :

Contributions are welcome! If you encounter any issues or have ideas for improvements, feel free to create a pull request or open an issue.

Reach out to me in linkdin : 
www.linkedin.com/in/praveen-k22
