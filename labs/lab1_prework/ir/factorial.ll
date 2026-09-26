declare i32 @getint()
declare i32 @getch()
declare i32 @getarray(ptr)
declare float @getfloat()
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, ptr)
declare void @putfloat(float)
declare void @putfarray(i32, ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr, i8, i32, i1)
declare void @lsccll.lib.memset_i8(ptr, i8, i32)
declare void @lsccll.lib.memset_i32(ptr, i32, i32)
declare void @lsccll.lib.parallel.loop(ptr, i32, i32, i32, i32, ...)


define i32 @main()
{
Block0: ; Func define at line 1
	%reg_4 = alloca i32
	%reg_2 = alloca i32
	%reg_0 = alloca i32
	br label %Block1
Block1: ; Func body at line 1
	%reg_1 = add i32 0, 0
	store i32 %reg_1, ptr %reg_0
	%reg_3 = add i32 0, 0
	store i32 %reg_3, ptr %reg_2
	%reg_5 = add i32 0, 0
	store i32 %reg_5, ptr %reg_4
	%reg_6 = call i32 @getint()
	store i32 %reg_6, ptr %reg_2
	%reg_7 = add i32 2, 0
	store i32 %reg_7, ptr %reg_0
	%reg_8 = add i32 1, 0
	store i32 %reg_8, ptr %reg_4
	br label %Block2
Block2: ; While condition at line 6
	%reg_9 = load i32, ptr %reg_0
	%reg_10 = load i32, ptr %reg_2
	%reg_11 = icmp sle i32 %reg_9, %reg_10
	br i1 %reg_11, label %Block3, label %Block4
Block3: ; While body at line 6
	%reg_12 = load i32, ptr %reg_4
	%reg_13 = load i32, ptr %reg_0
	%reg_14 = mul i32 %reg_12, %reg_13
	store i32 %reg_14, ptr %reg_4
	%reg_15 = load i32, ptr %reg_0
	%reg_16 = add i32 1, 0
	%reg_17 = add i32 %reg_15, %reg_16
	store i32 %reg_17, ptr %reg_0
	br label %Block2
Block4: ; While end at line 6
	%reg_18 = load i32, ptr %reg_4
	call void @putint(i32 %reg_18)
	%reg_19 = add i32 10, 0
	call void @putch(i32 %reg_19)
	%reg_20 = add i32 0, 0
	ret i32 %reg_20
}
