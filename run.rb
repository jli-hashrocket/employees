require 'csv'
require 'pry'

require_relative 'sales'
require_relative 'employee_class'
require_relative 'commision_sales_person_class'
require_relative 'quota_sales_person_class'
require_relative 'owner_class'

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

all_sales = Sales.new(monthly_sales)
all_sales.sales

people = Employee.new(all_sales, employees)
people.net_pay_before_tax
people.net_pay

commision_sales_person = CommisionSalesPerson.new(all_sales, employees)
commision_sales_person.net_pay_before_tax
commision_sales_person.net_pay

quota_sales_person = QuotaSalesPerson.new(all_sales, employees)
quota_sales_person.net_pay_before_tax
quota_sales_person.net_pay

owner = Owner.new(all_sales, employees)
owner.net_pay_before_tax
owner.net_pay
