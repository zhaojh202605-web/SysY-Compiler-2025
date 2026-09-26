# Lab1 预备工作

## 基准程序
- SysY: sysy/factorial.sy
- 输入输出: 5→120, 0→1, 1→1

## 分工
- A: 完整流程调研、C 版本、GCC/Clang 各阶段输出、报告框架、MLIR 探索
- B: LLVM IR、RISC-V 汇编、链接 SysY 运行库、QEMU 验证

## 参考文件
- c/factorial_std.c: 标准 C 版
- c/factorial_sysy.c: SysY 运行库版
- ir/factorial_clang_O0.ll: clang 生成的 LLVM IR 初稿（仅供参考）
- asm/factorial_riscv_O0.s: riscv64-unknown-elf-gcc 生成的汇编初稿（仅供参考）

## 验证命令
- 标准 C: `echo 5 | ./build/factorial`
- RISC-V: `/opt/qemu/bin/qemu-riscv64 ./build/factorial_riscv`
