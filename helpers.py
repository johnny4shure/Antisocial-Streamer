import sqlite3

def get_album_id(album_name):
    conn = sqlite3.connect("db/data.db")
    cursor = conn.cursor()
    cursor.execute("SELECT id FROM Albums WHERE album_name = ?", [album_name])
    
    results = cursor.fetchone()
    
    conn.close()
    
    if results is None:
        return None
    else:
        return results[0]

def get_artist_id(artist_name):
    conn = sqlite3.connect("db/data.db")
    cursor = conn.cursor()
    cursor.execute("SELECT id FROM Artists WHERE artist_name = ?", [artist_name])
    
    results = cursor.fetchone()
    
    conn.close()
    
    if results is None:
        return None
    else:
        return results[0]

