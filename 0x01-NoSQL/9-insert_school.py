#!/usr/bin/env python3
'''
fetch files
'''
import pymongo


def insert_school(mongo_collection, **kwargs):
    """
    insert data into a collection
    """
    data = mongo_collection.insert_one(kwargs)
    return data.inserted_id