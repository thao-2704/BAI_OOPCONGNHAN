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
        @level_258_258 = level_258.to_s
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
    def search(sname)
        $array_officer.each do |val|
            if(val.name_258 == sname)
                puts "#{val.display}"
            else
                puts ("Khong tim thay ten")
            end
    end
end
end

canbo1_258 = Congnhan.new("Thao",21,"Nu","DaNang")
canbo1_258.inputInf("1")


canbo2_258 = NhanVien.new("Thao",21,"Nu","DaNang")
canbo2_258.inputInf("IT")


canbo3_258 = KySu.new("Thao",21,"Nu","DaNang")
canbo3_258.inputInf("A")

canboList_258 = Quanlycanbo.new
canboList_258.inputInf(canbo1_258)
canboList_258.inputInf(canbo2_258)
canboList_258.inputInf(canbo3_258)
manager_officer = Quanlycanbo.new
 while(true)
    puts ("1. Them Moi Can Bo")
    puts ("2. Xem Thong Tin Can Bo")
    puts ("3. Tim Kiem Can BO")
    puts ("4.Nhap bat ky de thoat")

    choose = gets.chomp().to_i
    case choose
    when 1 
        manager_officer.inputInf(canbo1_258)
        manager_officer.inputInf(canbo2_258)
        manager_officer.inputInf(canbo3_258)
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        manager_officer.outputInfo
        puts ("================================================================")
    when 3
        puts ("Nhap ten: ")
        name = gets.chomp()
        manager_officer.search(name)
    else
        puts ("Khong hop le")
        break
    end
end