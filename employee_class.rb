class Employee

  attr_reader :employee_data, :sales_data, :sales_total

  def initialize(sales_data, employee_data)
    @employee_data = employee_data
    @sales_data = sales_data.all_sales
    @sales_total = sales_data.sales_total
  end

  def net_pay_before_tax
    @employee_data.each do |employee|
      @sales_data.each do |sale|
        if sale["last_name"] == employee["last_name"]
          employee["pay_before_tax"] = employee['base_pay'].to_f
        end
      end
    end
  end

  def net_pay
    @employee_data.each do |employee|
      employee["pay_after_tax"] = employee["pay_before_tax"].to_f - (employee["pay_before_tax"].to_f * 0.30) if employee["pay_before_tax"]
      employee["pay_after_tax"] =  employee["base_pay"].to_f - (employee["base_pay"].to_f * 0.30 ) if !employee["pay_before_tax"]
    end
  end


end
