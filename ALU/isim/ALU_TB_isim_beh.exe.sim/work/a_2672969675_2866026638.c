/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/kaskkmar/Documents/IT6pe/Digiloogika/ALU/func_2.vhdl";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1049309595_1035706684(char *, char *, char *, char *, int );


static void work_a_2672969675_2866026638_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(15, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 2072);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 2012);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2672969675_2866026638_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(16, ng0);

LAB3:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 3572U);
    t4 = ieee_p_1242562249_sub_1049309595_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t6 = (t6 * 1U);
    t7 = (4U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 2108);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 2020);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t6, 0);
    goto LAB6;

}

static void work_a_2672969675_2866026638_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(17, ng0);

LAB3:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 2144);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2028);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2672969675_2866026638_init()
{
	static char *pe[] = {(void *)work_a_2672969675_2866026638_p_0,(void *)work_a_2672969675_2866026638_p_1,(void *)work_a_2672969675_2866026638_p_2};
	xsi_register_didat("work_a_2672969675_2866026638", "isim/ALU_TB_isim_beh.exe.sim/work/a_2672969675_2866026638.didat");
	xsi_register_executes(pe);
}
