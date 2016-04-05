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
static const char *ng0 = "U:/CS/Archit/Before Final Lab/BLab1/ProgramCounter.vhd";



static void work_a_1007874614_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    int64 t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t16 = (0 * 1000LL);
    t17 = xsi_get_transient_memory(16U);
    memset(t17, 0, 16U);
    t18 = t17;
    memset(t18, (unsigned char)2, 16U);
    t19 = (t0 + 4296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 16U);
    xsi_driver_first_trans_delta(t19, 0U, 16U, t16);
    t24 = (t0 + 4296);
    xsi_driver_intertial_reject(t24, t16, t16);

LAB2:    t25 = (t0 + 4200);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t9 = (0 * 1000LL);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t2 = (t0 + 4296);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 16U);
    xsi_driver_first_trans_delta(t2, 0U, 16U, t9);
    t15 = (t0 + 4296);
    xsi_driver_intertial_reject(t15, t9, t9);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_1007874614_3212880686_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (0 * 1000LL);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 4360);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 16U);
    xsi_driver_first_trans_delta(t2, 0U, 16U, t1);
    t8 = (t0 + 4360);
    xsi_driver_intertial_reject(t8, t1, t1);

LAB2:    t9 = (t0 + 4216);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1007874614_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1007874614_3212880686_p_0,(void *)work_a_1007874614_3212880686_p_1};
	xsi_register_didat("work_a_1007874614_3212880686", "isim/MCMC_tb_isim_beh.exe.sim/work/a_1007874614_3212880686.didat");
	xsi_register_executes(pe);
}
