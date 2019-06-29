class Tea < ActiveRecord::Base
  has_many :reviews


  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end



end
