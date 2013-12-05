require 'csv'

require_relative 'sales'
require_relative 'employee_class'
require_relative 'commision_sales_person_class'
require_relative 'quota_sales_person_class'
require_relative 'owner_class'

Sale.load_sales
Employee.load_employees
Employee.print_data
