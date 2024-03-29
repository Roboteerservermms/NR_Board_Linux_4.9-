
#ifndef _SUNXI_FLASH_INTERFACE_
#define _SUNXI_FLASH_INTERFACE_

extern int (* sunxi_flash_init_pt)(int stage);
extern int (* sunxi_flash_read_pt) (uint start_block, uint nblock, void *buffer);
extern int (* sunxi_flash_read_sequence) (uint start_block, uint nblock, void *buffer) ;
extern int (* sunxi_flash_write_pt)(uint start_block, uint nblock, void *buffer);
extern uint (* sunxi_flash_size_pt)(void) ;
extern int (* sunxi_flash_exit_pt) (int force);
extern int (* sunxi_flash_flush_pt) (void);
extern int (* sunxi_flash_phyread_pt) (unsigned int start_block, unsigned int nblock, void *buffer);
extern int (* sunxi_flash_phywrite_pt)(unsigned int start_block, unsigned int nblock, void *buffer);

extern int (* sunxi_flash_user_phyget_wp_grp_size_pt)(unsigned int *wp_grp_size);
extern int (* sunxi_flash_user_phywrite_protect_pt)(unsigned wp_type, unsigned start, unsigned blkcnt);
extern int (* sunxi_flash_phyclr_tem_wp_pt)(unsigned start, unsigned blkcnt);

extern int (* sunxi_sprite_init_pt)(int stage) ;
extern int (* sunxi_sprite_read_pt) (uint start_block, uint nblock, void *buffer) ;
extern int (* sunxi_sprite_write_pt)(uint start_block, uint nblock, void *buffer) ;
extern int (* sunxi_sprite_erase_pt)(int erase, void *mbr_buffer);
extern uint (* sunxi_sprite_size_pt)(void);
extern int (* sunxi_sprite_exit_pt) (int force) ;
extern int (* sunxi_sprite_flush_pt)(void);
extern int (* sunxi_sprite_force_erase_pt)(void)  ;
extern int (* sunxi_sprite_phyread_pt) (unsigned int start_block, unsigned int nblock, void *buffer);
extern int (* sunxi_sprite_phywrite_pt)(unsigned int start_block, unsigned int nblock, void *buffer);

extern int (* sunxi_sprite_user_phyget_wp_grp_size_pt)(unsigned int *wp_grp_size);
extern int (* sunxi_sprite_user_phywrite_protect_pt)(unsigned wp_type, unsigned start, unsigned blkcnt);
extern int (* sunxi_sprite_phyclr_tem_wp_pt)(unsigned start, unsigned blkcnt);

extern int (* sunxi_secstorage_read_pt)( int item, unsigned char *buf, unsigned int len) ;
extern int (* sunxi_secstorage_write_pt) (int item, unsigned char *buf, unsigned int len);

extern int  nand_init_for_boot(int workmode);
extern int  nand_init_for_sprite(int workmode);

extern int  sdmmc_init_for_boot(int workmode, int card_no);
extern int  sdmmc_init_for_sprite(int workmode);
extern int  sdmmc_init_card0_for_sprite(void);
#endif
