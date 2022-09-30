# Xay dung lop CanBo
class CanBo
    def initialize(name, age, gender, address)
        @name = name.to_s
        @age = age.to_i
        @gender = gender.to_s
        @address = address.to_s
    end
    def display
        puts "Name: #{@name}"
        puts "Age: #{@age}"
        puts "Gender: #{@gender}"
        puts "Address: #{@address}"
    end
end
# Xay dung lop CongNhan
class Congnhan < CanBo 
    attr_accessor :level
    def inputInfCN(level)
        @level = level.to_i
    end

    def display()
        super
        puts "Level: #{@level}"
    end
end
# Xay dung lop KySu
class KySu < CanBo
    attr_accessor :branch
        def inputInfKS(branch)
        @branch = branch.to_s
    end
    def display()
        super
        puts "Branch: #{@branch}"
    end
end
# Xay dung lop NhanVien
class NhanVien < CanBo
    attr_accessor :task
    def inputInfNV(tash)
        @task = task.to_s
    end
    def display()
        super
        puts "Task: #{@task}"
    end
end
# Xay dung lop QuanlyCanBo

class QuanlyCanBo()
    attr_accessor :canboList = []
    def inputInf()
        
    end
end
kysu = KySu.new("Tho","21","Nu","DaNang")
kysu.inputInf("3")
kysu.display()