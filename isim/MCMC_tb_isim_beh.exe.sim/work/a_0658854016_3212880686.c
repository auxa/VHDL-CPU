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
static const char *ng0 = "U:/CS/Archit/Before Final Lab/BLab1/InstructionReg.vhd";



static void work_a_0658854016_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
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

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (0 * 1000LL);
    t17 = xsi_get_transient_memory(7U);
    memset(t17, 0, 7U);
    t18 = t17;
    memset(t18, (unsigned char)2, 7U);
    t19 = (t0 + 4664);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 7U);
    xsi_driver_first_trans_delta(t19, 0U, 7U, t16);
    t24 = (t0 + 4664);
    xsi_driver_intertial_reject(t24, t16, t16);

LAB2:    t25 = (t0 + 4536);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t5 = (0 * 1000LL);
    t1 = (t0 + 2312U);
    t6 = *((char **)t1);
    t7 = (15 - 15);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t10 = (t0 + 4664);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 7U);
    xsi_driver_first_trans_delta(t10, 0U, 7U, t5);
    t15 = (t0 + 4664);
    xsi_driver_intertial_reject(t15, t5, t5);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0658854016_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
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

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (0 * 1000LL);
    t17 = xsi_get_transient_memory(3U);
    memset(t17, 0, 3U);
    t18 = t17;
    memset(t18, (unsigned char)2, 3U);
    t19 = (t0 + 4728);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 3U);
    xsi_driver_first_trans_delta(t19, 0U, 3U, t16);
    t24 = (t0 + 4728);
    xsi_driver_intertial_reject(t24, t16, t16);

LAB2:    t25 = (t0 + 4552);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t5 = (0 * 1000LL);
    t1 = (t0 + 2312U);
    t6 = *((char **)t1);
    t7 = (15 - 8);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t10 = (t0 + 4728);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 3U);
    xsi_driver_first_trans_delta(t10, 0U, 3U, t5);
    t15 = (t0 + 4728);
    xsi_driver_intertial_reject(t15, t5, t5);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0658854016_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
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

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (0 * 1000LL);
    t17 = xsi_get_transient_memory(3U);
    memset(t17, 0, 3U);
    t18 = t17;
    memset(t18, (unsigned char)2, 3U);
    t19 = (t0 + 4792);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 3U);
    xsi_driver_first_trans_delta(t19, 0U, 3U, t16);
    t24 = (t0 + 4792);
    xsi_driver_intertial_reject(t24, t16, t16);

LAB2:    t25 = (t0 + 4568);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t5 = (0 * 1000LL);
    t1 = (t0 + 2312U);
    t6 = *((char **)t1);
    t7 = (15 - 5);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t10 = (t0 + 4792);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 3U);
    xsi_driver_first_trans_delta(t10, 0U, 3U, t5);
    t15 = (t0 + 4792);
    xsi_driver_intertial_reject(t15, t5, t5);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0658854016_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
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

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (0 * 1000LL);
    t17 = xsi_get_transient_memory(3U);
    memset(t17, 0, 3U);
    t18 = t17;
    memset(t18, (unsigned char)2, 3U);
    t19 = (t0 + 4856);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 3U);
    xsi_driver_first_trans_delta(t19, 0U, 3U, t16);
    t24 = (t0 + 4856);
    xsi_driver_intertial_reject(t24, t16, t16);

LAB2:    t25 = (t0 + 4584);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t5 = (0 * 1000LL);
    t1 = (t0 + 2312U);
    t6 = *((char **)t1);
    t7 = (15 - 2);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t10 = (t0 + 4856);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 3U);
    xsi_driver_first_trans_delta(t10, 0U, 3U, t5);
    t15 = (t0 + 4856);
    xsi_driver_intertial_reject(t15, t5, t5);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0658854016_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0658854016_3212880686_p_0,(void *)work_a_0658854016_3212880686_p_1,(void *)work_a_0658854016_3212880686_p_2,(void *)work_a_0658854016_3212880686_p_3};
	xsi_register_didat("work_a_0658854016_3212880686", "isim/MCMC_tb_isim_beh.exe.sim/work/a_0658854016_3212880686.didat");
	xsi_register_executes(pe);
}
