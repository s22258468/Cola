class Order < ActiveRecord::Base
	self.table_name = "a05b00_order"

  

def self.data_count
    query = <<-SQL
    
     select member_no,agent_no,count(*) from a05b00_order 
    where customer_type="直客"
    group by member_no having count(*) >2
    ;
    SQL


    data=self.find_by_sql(query)


  end

def self.data_count2
    query = <<-SQL
    
     select member_no,agent_no,count(*) from a05b00_order 
   
    group by member_no 
    ;
    SQL


    data2=self.find_by_sql(query)


  end




end

