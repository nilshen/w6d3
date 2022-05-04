require_relative 'db_connection'
require 'active_support/inflector'

# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
   return @data if @data
   @data = DBConnection.execute2(<<-SQL)
      SELECT
        *
      FROM
        #{self.table_name}
    SQL
    @data.first.map {|el| el.to_sym }
  end

  def self.finalize!
    arr = self.columns.map {|el| el.to_s}
    # p arr
    arr.each do |col|
      define_method(col) do 
        @col
      end
    end

    arr.each do |col|
      define_method("#{col}=") do |val|
        @col = val
      end
    end

  end

  def self.table_name=(table_name)
    # instance_variable_set("@#{self.table_name}", self.table_name)
    
    @table_name = self.table_name
  end

  def self.table_name
    self.to_s.downcase + "s"
    # self.to_s.tableize
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    arr = self.columns.map {|el| el.to_s}
    hash = Hash.new()
    arr.map {|el|hash[el] = self.el }


  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
