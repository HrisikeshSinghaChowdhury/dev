# => 1. Create an User class with first name, last name and age.
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
      csv << [Faker::Name.first_name, Faker::Name.last_name, Faker::Number.number(digits: 2).to_i]
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

  def operation_file(new_file_name, file_name, col_name, order, no_records, page_no)
    file = CSV.read(file_name, headers: true, header_converters: :symbol)
    arr_col_data_old = []
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
      arr_col_data_old << [row[col_index]]
    end

    arr_col_data_before = []
    arr_col_data_before = arr_col_data_old.flatten.to_ary

    puts "#{order}"
    if (order.to_i == 0)
      arr_col_data_before.sort
    elsif (order.to_i == 1)
      arr_col_data_before.sort.reverse
    else
      puts "Sorry Wrong option"
      Kernel.exit(0)
    end

    arr_col_data = []
    arr_col_data = arr_col_data_before.to_ary
    puts "#{arr_col_data.inspect}"

    cnt = 0
    file = CSV.read(file_name, headers: true, header_converters: :symbol)

    file.each_with_index do |row, i|
      case col_index
        when 0
          [row[:fname]] << arr_col_data[cnt]
        when 1
          [row[:lname]] << arr_col_data[cnt]
        when 2
          [row[:age]] << arr_col_data[cnt]
        when 3
          [row[:FullName]] << arr_col_data[cnt]
        else
      end
      cnt += 1
    end
    puts "After rearranging file"
    file = CSV.read(file_name, headers: true, header_converters: :symbol, converters: :all)
    new_csv = CSV.open(new_file_name, 'wb')
    new_csv << ['Fname', 'Lname', 'Age', 'FullName']

    cnt = 0
    file.each_with_index do |row, i|
      cnt += 1
      if cnt <= no_records
        new_csv << [row[:fname], row[:lname], row[:age], row[:fullname]]
      end
    end
    new_csv.close
  end
end

# => Custom class to call the above class
class CustomClass
  def custom_method
    puts "Enter the file name.For your information you are currently in #{Dir.pwd}"
    file_name = gets.chomp

    if (File::file?(file_name))
      puts "The entered string is not a file name"
      Kernel.exit(0)
    end

    if File::exists?(file_name)
      puts "The entered file name already exists"
      Kernel.exit(0)
    end

    ob = UserClassSkeleton.new(file_name)
    ob.populate_csv_file
    puts "---------After adding the Header(Full Name)---------"
    ob.add_header(file_name, 'full_name')
    puts "---------After adding the Header(Full Name)---------"
    puts "Enter the file name.For your information you are currently in #{Dir.pwd}"
    new_file_name = gets.chomp
    puts "Enter the header name which you want to sort"
    sort_header_name = gets.chomp
    puts "Enter the sorting technique(0 for asccending/1 for descending)"
    sort_technique = gets.chomp.to_i
    puts "Enter the number of records you want to view"
    records = gets.chomp.to_i
    puts "Enter the page number to view"
    page_no = gets.chomp.to_i
    ob.operation_file(new_file_name, file_name, sort_header_name, sort_technique, records, page_no)
  end
end

CustomClass.new.custom_method