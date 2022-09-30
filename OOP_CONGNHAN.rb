# Xay dung lop CanBo
class CanBo
    def initialize(name_258, age_258, gender_258, address_258)
        @name_258 = name_258.to_s
        @age_258 = age_258.to_i
        @gender_258_258 = gender_258.to_s
        @address_258_258 = address_258.to_s
    end
    def display
        puts "Name: #{@name_258_258}"
        puts "Age: #{@age_258_258}"
        puts "Gender: #{@gender_258_258}"
        puts "Address: #{@address_258_258}"
    end
end
# Xay dung lop CongNhan
class Congnhan < CanBo 
    attr_accessor :level_258_258
    def inputInf(level_258)
        @level_258_258 = level_258.to_i
    end

    def display()
        super
        puts "Level: #{@level_258_258}"
    end
end
# Xay dung lop KySu
class KySu < CanBo
    attr_accessor :branch_258_258
        def inputInf(branch_258)
        @branch_258 = branch_258.to_s
    end
    def display()
        super
        puts "Branch: #{@branch_258}"
    end
end
# Xay dung lop NhanVien
class NhanVien < CanBo
    attr_accessor :task_258
    def inputInf(tash_258)
        @task_258 = task_258.to_s
    end
    def display()
        super
        puts "Task: #{@task_258}"
    end
end
# Xay dung lop QuanlyCanBo

class Quanlycanbo
    $array_offi = Array.new
    def inputInf(object)
        $array_offi << object
    end
    def outputInfo
        $array_offi.each do |val|
            puts "#{val.display}"
        end
    end
end

canbo1 = CongNhan.new("Tho","21","Nu","DaNang")
canbo1.inputInf("1")


canbo2 = NhanVien.new("Tho","21","Nu","DaNang")
canbo2.inputInf("IT")


canbo3 = KySu.new("Tho","21","Nu","DaNang")
canbo3.inputInf("A")

canboList_258 = Quanlycanbo.new
canboList_258.inputInf(canbo1)
canboList_258.inputInf(canbo2)
canboList_258.inputInf(canbo3)
