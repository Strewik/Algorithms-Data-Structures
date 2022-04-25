def linear_search(list, target):
    """Returns the index position of the target if found, else reeturns none"""
    
    for index in range(0, len(list)):
        if list[index] == target:
            return index
        
    return None

def verify(index):
    if index is not None:
        print("Target was found at index: ", index)
    else:
        print("Target was not found in list")
        

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

result = linear_search(numbers, 12)
verify(result)
print("------------------------------------")
result = linear_search(numbers, 6)
verify(result)
print("------------------------------------")


