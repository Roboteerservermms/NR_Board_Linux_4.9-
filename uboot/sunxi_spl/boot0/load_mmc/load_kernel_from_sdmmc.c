
#include "common.h"
#include "spare_head.h"
#include "private_boot0.h"
#include "private_uboot.h"
#include <private_toc.h>
#include <asm/arch/mmc_boot0.h>

static int load_kernel_from_sdmmc(void)
{
    return -1;
}

int load_kernel(void)
{
       return load_kernel_from_sdmmc();
}

