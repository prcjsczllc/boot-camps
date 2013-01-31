l = [1,3,5]

def sort_my_list(listie):
	sorted_list = sorted(listie, reverse=True)
	return sorted_list

def test_1():
	l_test = [1,2,3]
	result = sort_my_list(l_test)
	assert result == [3,2,1]

def test_2():
	l_test = [1,1,1]
	result = sort_my_list(l_test)
	assert result == [3,2,1]	
