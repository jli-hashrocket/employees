class Owner < Employee
  def net_pay_before_tax
    if @sales_total > 250000
      @employee_data.each do |employee|
        @sales_data.each do |sale|
          if employee["position"] == 'owner'
            employee["pay_before_tax"] = employee['base_pay'].to_f + employee['bonus'].to_f
          end
        end
      end
    end
  end

  def net_pay
    @employee_data.each do |employee|
      employee["pay_after_tax"] = employee["pay_before_tax"].to_f - (employee["pay_before_tax"].to_f * 0.30) if employee["position"] == 'owner'
      # employee["pay_after_tax"] =  employee["base_pay"].to_f - (employee["base_pay"].to_f * 0.30 ) if employee["position"] != 'quota sales'
    end
            binding.pry

  end

end
