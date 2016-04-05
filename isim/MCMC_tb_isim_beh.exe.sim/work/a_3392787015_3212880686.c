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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "U:/CS/Archit/Before Final Lab/BLab1/memory.vhd";
extern char *IEEE_P_3499444699;



static void work_a_3392787015_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    int t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    int64 t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 2);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 2;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 2);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t1, t6);
    t8 = (t0 + 2088U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t11;
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1192U);
    t7 = *((char **)t1);
    t1 = (t0 + 1968U);
    t8 = *((char **)t1);
    t1 = (t0 + 2088U);
    t12 = *((char **)t1);
    t9 = *((int *)t12);
    t11 = (t9 - 0);
    t3 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 511, 1, t9);
    t4 = (16U * t3);
    t5 = (0 + t4);
    t1 = (t8 + t5);
    memcpy(t1, t7, 16U);
    goto LAB3;

LAB5:    xsi_set_current_line(83, ng0);
    t15 = (10 * 1000LL);
    t1 = (t0 + 1968U);
    t7 = *((char **)t1);
    t1 = (t0 + 2088U);
    t8 = *((char **)t1);
    t9 = *((int *)t8);
    t11 = (t9 - 0);
    t3 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 511, 1, t9);
    t4 = (16U * t3);
    t5 = (0 + t4);
    t1 = (t7 + t5);
    t12 = (t0 + 3472);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t1, 16U);
    xsi_driver_first_trans_delta(t12, 0U, 16U, t15);
    t20 = (t0 + 3472);
    xsi_driver_intertial_reject(t20, t15, t15);
    goto LAB3;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/MCMC_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
