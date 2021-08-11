# => Custom class to call the above class
require_relative 'UserClassSkeleton.rb'

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
    sort_technique = gets.chomp
    puts "Enter the number of records you want to view"
    records = gets.chomp.to_i
    puts "Enter the page number to view"
    page_no = gets.chomp.to_i

    # => This method is under construction
    # => ob.operation_file(new_file_name, file_name, sort_header_name, sort_technique,\
    # => records, page_no)
  end
end

CustomClass.new.custom_method

