# => 1. Create an User class with first name, last name and age.
# => This file is not completed Q4 is left
require "csv"
require "faker"

# => define the class
class UserClassSkeleton
  attr_accessor :fname, :lname, :age, :name, :file_name

  def initialize(file_name)
    self.file_name = file_name
  end

  # => method to create and populate file
  def populate_csv_file
    csv = CSV.open(self.file_name, 'wb')
    csv << ['Fname', 'Lname', 'Age']
    cnt = 1

    while(cnt <= 10) do
      csv << [Faker::Name.first_name, Faker::Name.last_name, Faker::Number.number(digits: 2)]
      cnt += 1
    end
    csv.close
  end

  # => Method to add header
  def add_header(file_name, header_name)
    file = CSV.read(file_name, headers: true, header_converters: :symbol, converters: :all)
    csv = CSV.open(file_name, 'wb')
    csv << ['Fname', 'Lname', 'Age', 'FullName']

    file.each_with_index do |row, i|
      full_name = "#{row[:fname]} #{row[:lname]}"
      csv << [row[:fname], row[:lname], row[:age], full_name]
    end
    csv.close
  end

  # => Q4 the operation of modify old file and storing them into a new file
  # => under construction
  def operation_file(new_file_name, file_name, col_name, order, no_records, page_no)
    file = CSV.read(file_name, headers: true, header_converters: :symbol)
    arr_col_data = []
    col_index = 0

    case col_name
      when "Fname"
        col_index = 0
      when "Lname"
        col_index = 1
      when "Age"
        col_index = 2
      when "FullName"
        col_index = 3
      else
    end

    file.each_with_index do |row, i|
      arr_col_data << [row[col_index].to_i]
    end

    arr_col_data.flatten!

    if (order.eql?("a"))
      puts "hii"
      arr_col_data.sort!
    elsif (order.eql?("d"))
      arr_col_data.sort!.reverse
    else
      puts "Sorry Wrong option"
      Kernel.exit(0)
    end

    puts "After rearranging file"
    file = CSV.read(file_name, headers: true, header_converters: :symbol)
    new_csv = CSV.open(new_file_name, 'wb')
    new_csv << ['Fname', 'Lname', 'Age', 'FullName']
    new_csv.close

    # => Coding left for column wise sorting and pagination
  end
end


