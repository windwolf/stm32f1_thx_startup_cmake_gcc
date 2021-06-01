#ifndef __mem_layout_h__
#define __mem_layout_h__

#ifdef __cplusplus
extern "C"
{
#endif

#define MDMA_BUFFER __attribute__((section(".d1_buffer")))
#define DMA1_BUFFER __attribute__((section(".d2_buffer")))
#define DMA2_BUFFER __attribute__((section(".d2_buffer")))
#define BDMA_BUFFER __attribute__((section(".d3_buffer")))

#ifdef __cplusplus
}
#endif

#endif // __mem_layout_h__