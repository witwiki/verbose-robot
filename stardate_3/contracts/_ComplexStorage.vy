# Defining the List
storedData: public(int128[100])     #No dynamic arrays
dataIndx: public(int128)            #Since no dynamic arrays, we need an index id

@external
def addData(dataPt: int128):
    self.storedData[self.dataIndx] = dataPt
    self.dataIndx += 1

@view
@external
def getData(dataPt: int128) -> int128:
    return self.storedData[dataPt]

@view
@external
def getAll() -> int128[100]:
    return self.storedData

@view
@external
def getLength() -> int128:
    return self.dataIndx
    



    

    
    

