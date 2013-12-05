require 'csv'
require 'pry'

require_relative 'sales'
require_relative 'employee_class'
require_relative 'commision_sales_person_class'
require_relative 'quota_sales_person_class'
require_relative 'owner_class'

Sale.load_sales
Employee.load_employees
Employee.print_data
binding.pry

# CSV.foreach(sales_data, headers:true) do |row|
#   sale = Sales.new(row)
#   sales << sale
#  end

# CSV.foreach(employee_info, headers:true) do |row|
#    employee =  Employee.new(row,sales)
#    employees << employee
# end


# employees.each do |employee|
#   if employee.position != "commission sales"
#     employee.net_pay_before_tax
#     employee.net_pay_after_tax
#     employee.print_data
#   elsif employee.position == "commission sales"
#     commission_sales = CommissionSalesPerson.new
#     commission_sales.net_pay_before_tax
#   end
# end
