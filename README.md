# stm32 cmake project startup

## 迁移步骤

### 1. 在cubemx目录中, 使用 STM32CubeMx 生成代码.

注意以下事项.

- 使用makefile模式. 这个makefile不用于构建, 仅用于后续提取里面的一系列编译和链接命令的选项;
- 勾上 generate perihperal initialization as a pair of '.c/.h' files per peripheral;
- 勾上 Do not generate the main(); 因为Src中有自己的main;
- Timebase Source不要选择SysTick, 因为SysTick用于RTOS的tick;
- 不生成 Pendable request for system service, System sevice call via SWI instruction 和 Time base: System tick timer 这3个中断处理函数;
  
### 2. 修改 cubemx 中的STM32XXXXXXX_FLASH.ld 文件, 按如下说明修改\_user_heap_stack 段

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
正常情况下只需修改一遍, cubemx不会覆盖该文件. 如果被覆盖了, 那么需重新该一遍.

###~~ 3. 将`startup_stm32XXXXX.s`拷贝到`Src/startup`下~~

~~并将`PendSV_Handler`修改为`__tx_PendSVHandler`, 将`SysTick_Handler`修改为`__tx_SysTickHandler`~~

### 4. 如果 threadx 出现比较大的升级, 建议把对应 port 中的 tx_initialize_low_level.S 拷过来

- 将其中的\_vectors 修改为 g_pfnVectors
- 将其中的 SYSTEM_CLOCK 修改为实际处理器频率


### 5. 修改 project-settings.cmake

- PROJECT_NAME
- TARGET_MCU
