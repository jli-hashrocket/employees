require 'csv'
require 'pry'
require_relative 'employee_class'

employee_info = 'employees.csv'
sales_data = 'monthly_sales.csv'
employees = []
monthly_sales = []


CSV.foreach(employee_info, headers:true) do |row|
   employees << row
 end

CSV.foreach(sales_data, headers:true) do |row|
  monthly_sales << row
 end

people = Employee.new(monthly_sales, employees)
people.sales
people.net_pay_before_tax
people.net_pay
