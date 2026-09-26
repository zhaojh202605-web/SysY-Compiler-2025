	.text
	.globl main
	.attribute	4, 16
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0"

main:
.main_0:
	sd			ra, -8(sp)
	addi		sp, sp, -24
	jal			x0, .main_1
.main_1:
	addiw		t0, x0, 0
	sw			t0, 8(sp)
	addiw		t0, x0, 0
	sw			t0, 4(sp)
	addiw		t0, x0, 0
	sw			t0, 0(sp)
	call		getint
	add			a0, x0, a0
	sw			a0, 4(sp)
	addiw		t0, x0, 2
	sw			t0, 8(sp)
	addiw		t0, x0, 1
	sw			t0, 0(sp)
	jal			x0, .main_2
.main_2:
	lw			t1, 8(sp)
	lw			t0, 4(sp)
	ble			t1, t0, .main_3
	jal			x0, .main_4
.main_3:
	lw			t2, 0(sp)
	lw			t1, 8(sp)
	mulw		t0, t2, t1
	sw			t0, 0(sp)
	lw			t2, 8(sp)
	addiw		t1, x0, 1
	addw		t0, t2, t1
	sw			t0, 8(sp)
	jal			x0, .main_2
.main_4:
	lw			a0, 0(sp)
	add			a0, x0, a0
	call		putint
	addiw		a0, x0, 10
	add			a0, x0, a0
	call		putch
	addiw		a0, x0, 0
	add			a0, x0, a0
	addi		sp, sp, 24
	ld			ra, -8(sp)
	jalr		x0, ra, 0
	.data
