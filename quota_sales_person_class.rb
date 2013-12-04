class QuotaSalesPerson < Employee
  def net_pay_before_tax
    @employee_data.each do |employee|
      @sales_data.each do |sale|
        if sale["last_name"] == employee["last_name"] && employee["quota"].to_f >= sale["gross_sale_value"].to_f
          employee["pay_before_tax"] = employee['base_pay'].to_f + employee['bonus'].to_f
        elsif sale["last_name"] == employee["last_name"] && employee["quota"].to_f < sale["gross_sale_value"].to_f
          employee["base_pay"]
        end
      end
    end

  end

  def net_pay
    @employee_data.each do |employee|
      employee["pay_after_tax"] = employee["pay_before_tax"].to_f - (employee["pay_before_tax"].to_f * 0.30) if employee["position"] == 'quota sales'
      # employee["pay_after_tax"] =  employee["base_pay"].to_f - (employee["base_pay"].to_f * 0.30 ) if employee["position"] != 'quota sales'
    end
  end
end
