#!/usr/bin/env python3
'''
Display all data in a database
'''
import pymongo


def list_all(mongo_collection):
    '''
    function to list all data
    '''
    if not mongo_collection:
        return[]:
    files = mongo_collection.find()
    return [data for data in files]
