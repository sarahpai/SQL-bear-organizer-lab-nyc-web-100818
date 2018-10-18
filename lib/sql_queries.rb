#       SELECT columns
#       FROM tables_name
#       WHERE artists.Name = "Black Sabbath"
# SELECT [names of columns we are going to select] FROM [table we are selecting from];
# SELECT * FROM [table name] WHERE [column name] = [some value];
def selects_all_female_bears_return_name_and_age
  'SELECT bears.name, bears.age FROM bears WHERE gender = "F"'
end

# ORDER BY column1, column2, ... ASC|DESC
def selects_all_bears_names_and_orders_in_alphabetical_order
  'SELECT bears.name FROM bears ORDER BY name'
end

# SELECT column1, column2, ...
# FROM table_name
# WHERE condition1 AND condition2 AND condition3
def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  'SELECT bears.name, bears.age
  FROM bears WHERE alive = 1
  ORDER BY age'
end

# SELECT MAX(column_name)
# FROM table_name
# WHERE condition;
# oder by age limit by 1
def selects_oldest_bear_and_returns_name_and_age
  'SELECT bears.name, bears.age FROM bears ORDER BY age DESC LIMIT 1'
end
# SELECT article FROM table1 ORDER BY publish_date LIMIT 20


def select_youngest_bear_and_returns_name_and_age
  'SELECT min(bears.name),(bears.age) FROM bears ORDER BY age ASC LIMIT 1'
end

# SELECT COUNT(CustomerID), Country
# FROM Customers
# GROUP BY Country
# ORDER BY COUNT(CustomerID) DESC;
# select all by bears.color, group by bears color, order by the color count DESC, limit by 1
def selects_most_prominent_color_and_returns_with_count
  'SELECT bears.color, COUNT(bears.color)
  FROM bears
  GROUP BY bears.color
  ORDER BY COUNT(bears.color) DESC LIMIT 1'
end

def counts_number_of_bears_with_goofy_temperaments
  'SELECT COUNT(bears.temperament)
  FROM bears
  WHERE bears.temperament = "goofy"'
end

def selects_bear_that_killed_Tim
  'SELECT *
  FROM bears
  WHERE bears.name IS NULL
  '
end
