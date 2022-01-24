class Entry():
    '''Creating entry class'''
    def __init__(self, id, concept, entry, mood_id, date, time_spent):
        self.id = id
        self.concept = concept
        self.entry = entry
        self.mood_id = mood_id
        self.date = date
        self.time_spent = time_spent
        self.mood = None