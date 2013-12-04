class Sales
  attr_reader :all_sales, :sales_total

  def initialize(all_sales, sales_total = 0)
    @all_sales = all_sales
    @sales_total = sales_total
  end

  def sales
    @all_sales.each do |sale|
      @sales_total += sale["gross_sale_value"].to_f
      puts "Last Name:#{sale["last_name"]} Sale:#{sale['gross_sale_value']}"
    end
    @sales_total = @sales_total.round(2)
  end

end
