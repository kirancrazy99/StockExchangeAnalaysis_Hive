sqoop import --connect jdbc:mysql://sqoopdb.slbdh.cloudlabs.com/saikiran7008gmail --username saikiran7008gmail --password xxxxxxxxxx --table STOCK_COMPANIES -m 1 --hive-import --create-hive-table --hive-table bdhs_project.STOCK_COMPANIES;

sqoop import --connect jdbc:mysql://sqoopdb.slbdh.cloudlabs.com/saikiran7008gmail --username saikiran7008gmail --password xxxxxxxxxx --table STOCK_PRICES -m 1 --hive-import --create-hive-table --hive-table bdhs_project_kiran.STOCK_PRICES;
