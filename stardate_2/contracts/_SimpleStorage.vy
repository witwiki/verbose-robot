data: String[100]

@external
def set(_data: String[100]):
    self.data = _data

@external
def get() -> String[100]:
    return self.data
    

    
