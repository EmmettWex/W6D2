class AttrAccessorObject
  def self.my_attr_accessor(*names)

    names.each do |name|
      method_name = name.to_s
        define_method(name) { "@#{name} = #{instance_variable_get(name)}" }
        define_method(name) { "@#{name}" }
    end
      

  end
end
