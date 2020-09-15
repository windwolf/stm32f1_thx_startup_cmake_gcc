# stm32 cmake project startup

## 迁移步骤

### 1. 使用 STM32CubeMx 生成代码.

注意以下事项.

- 使用 makefile 模式,
- 勾上 generate perihperal initialization as a pair of '.c/.h' files per peripheral
- 不生成 Pendable request for system service 和 Time base: System tick timer 这两个中断处理函数
  生成了之后拷贝到 cubemx 目录(仅仅为了方便, 这个目录被 git 忽略)

### 2. 将 cubemx 中的.ld 文件拷贝到 Src 下

并按如下说明修改\_user_heap_stack 段

```linkscript
  /* User_heap_stack section, used to check that there is enough RAM left */
  ._user_heap_stack :
  {
    . = ALIGN(8);
    __RAM_segment_used_end__ = .; /* 将 __RAM_segment_used_end__ 设置为内存末尾. threadx要用 */
    PROVIDE ( end = . );
    PROVIDE ( _end = . );
    . = . + _Min_Heap_Size;
    . = . + _Min_Stack_Size;
    . = ALIGN(8);
  } >RAM
```

### 3. 将`startup_stm32XXXXX.s`拷贝到`Src/startup`下

并将`PendSV_Handler`修改为`__tx_PendSVHandler`, 将`SysTick_Handler`修改为`__tx_SysTickHandler`

### 4. 如果 threadx 出现比较大的升级, 建议把对应 port 中的 tx_initialize_low_level.S 拷过来

- 将其中的\_vectors 修改为 g_pfnVectors
- 将其中的 SYSTEM_CLOCK 修改为实际处理器频率

### 5. 将 core 中除 main 外的文件, 拷贝到 src/drivers

### 6. 将 main 拷贝到 applications

### 7. 修改 project-settings.cmake

- PROJECT_NAME
- TARGET_MCU
- LINKER_SCRIPT
