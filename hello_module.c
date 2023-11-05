#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

static int __init ModuleInit(void) {
	printk("simple module\n");
	return 0;
}

static void __exit ModuleExit(void) {
	printk("simple module unloaded\n");
}

module_init(ModuleInit);
module_exit(ModuleExit);

