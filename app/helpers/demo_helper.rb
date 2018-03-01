module DemoHelper
  def company( i )
    if ( i>0 )&&( i<=10 )
      "A#{i}" 
     elsif (i>10)&&(i<=20)
      "C#{i}"
    elsif (i>20)&&(i<=30)
      "E#{i}"
    elsif (i>30)&&(i<=40)
      "G#{i}"
    else (i>40)&&(i<=50)
      "I#{i}"
             
    end
  end

  def contct_num(i)
    if ( i>0 )&&( i<=10 )
      "B #{NumbersInWords.in_words(i)}"
      elsif (i>10)&&(i<=20)
      "D #{NumbersInWords.in_words(i)}"
      elsif (i>20)&&(i<=30)
      "F #{NumbersInWords.in_words(i)}"
      elsif (i>30)&&(i<=40)
      "H #{NumbersInWords.in_words(i)}"
      else (i>40)&&(i<=50)
      "J #{NumbersInWords.in_words(i)}"
    end
  end 

  def country(i)
    if ( i>0 )&&( i<=10 )
      "India"
      elsif (i>10)&&(i<=20)
      "Germany"
    elsif (i>20)&&(i<=30)
      "France"
    elsif (i>30)&&(i<=40)
      "USA"
    else(i>40)&&(i<=50)
      "Norway"
     end
  end  


 
  # def review_num( num )
  #   if ( num % 2 ).eql?(0)
  #     "Even"
  #   else
  #     "Odd"
  #   end 
  # end

  # This method is for displaying/hinding cotent under contact column of Details page
  # Arguments
    # num_id - Number from ID
    # j -  not used
  # def contct_num( i )
  #   if ( i % 2 )==0
  #     "Maria Anders"
  #   else
  #     " "   # Hinding data
  #   end
  # end

end
