board = 

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board_array)
  
  WIN_COMBINATIONS.each do |combo_arr|
    first_index = combo_arr[0]
    second_index = combo_arr[1]
    third_index = combo_arr[2]
    
    the_symbol_at_first_index = board_array[first_index]
    the_symbol_at_second_index = board_array[second_index]
    the_symbol_at_third_index = board_array[third_index]
    
    if the_symbol_at_first_index == the_symbol_at_second_index && the_symbol_at_second_index == the_symbol_at_third_index && the_symbol_at_first_index != " "
      return combo_arr
    end
  end
  
  
  return FALSE
  
  
end

def full?(board_array)
  
  board_array.each do |symbol|
    if symbol == " "
      return FALSE
    end
  end
  
  return TRUE
  
end

def draw?(board_array)
  if full?(board_array) && !won?(board_array)
    return TRUE
  else
    return FALSE
  end
end

def over?(board_array)
  if won?(board_array) || draw?(board_array)
    return TRUE
  else
    return FALSE
  end
end

def winner(board_array)
  if won?(board_array)
    arr_winning_combination = won?(board_array)
    index = arr_winning_combination[0]
    return board[index]
  else
    return NIL
  end
end

    