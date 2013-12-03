class CommisionSalesPerson < Employee

   def net_pay_before_tax
    @employee_data.each do |employee|
      @sales_data.each do |sale|
        # binding.pry
        if sale["last_name"] == employee["last_name"] && employee["commission_rate"].to_i !=nil
          employee["pay_before_tax"] = employee['base_pay'].to_f + (sale['gross_sale_value'].to_f * employee['commission_rate'].to_f)
        elsif sale["last_name"] == employee["last_name"] && employee["commission_rate"].to_f == 0
          employee["base_pay"]
        end
      end
    end
  end


  def net_pay
    @employee_data.each do |employee|
      employee["pay_after_tax"] = employee["pay_before_tax"].to_f - (employee["pay_before_tax"].to_f * 0.30) if employee["position"] == 'commission sales'
      employee["pay_after_tax"] =  employee["base_pay"].to_f - (employee["base_pay"].to_f * 0.30 ) if employee["position"] != 'commission sales'
    end
    binding.pry
  end

end
