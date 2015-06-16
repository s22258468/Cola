class HomeController < ApplicationController

 def index

    @data=[]
    Order.data_count.each_with_index do|d|
      @data<<[d]
    end
    @data2=[]
    Order.data_count2.each_with_index do|d|
      @data2 <<[d]
    end
  end
end
