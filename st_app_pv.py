#!/usr/local/anaconda3/bin/python
import db_set as db
sql = '''truncate table rptods.st_app_pv'''
db.db_set(sql)
