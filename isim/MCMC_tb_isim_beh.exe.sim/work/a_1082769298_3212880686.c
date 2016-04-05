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
static const char *ng0 = "U:/CS/Archit/Before Final Lab/BLab1/mux4_2_1.vhd";



static void work_a_1082769298_3212880686_p_0(char *t0)
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
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    int64 t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned char t33;
    char *t34;
    char *t35;
    unsigned char t36;
    unsigned char t37;
    char *t38;
    unsigned char t39;
    unsigned char t40;
    int64 t41;
    char *t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned char t49;
    char *t50;
    char *t51;
    unsigned char t52;
    unsigned char t53;
    char *t54;
    unsigned char t55;
    unsigned char t56;
    int64 t57;
    char *t58;
    unsigned char t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    int64 t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;

LAB0:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t18 = (t0 + 1672U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB10;

LAB11:    t17 = (unsigned char)0;

LAB12:    if (t17 != 0)
        goto LAB8;

LAB9:    t34 = (t0 + 1672U);
    t35 = *((char **)t34);
    t36 = *((unsigned char *)t35);
    t37 = (t36 == (unsigned char)3);
    if (t37 == 1)
        goto LAB15;

LAB16:    t33 = (unsigned char)0;

LAB17:    if (t33 != 0)
        goto LAB13;

LAB14:    t50 = (t0 + 1672U);
    t51 = *((char **)t50);
    t52 = *((unsigned char *)t51);
    t53 = (t52 == (unsigned char)3);
    if (t53 == 1)
        goto LAB20;

LAB21:    t49 = (unsigned char)0;

LAB22:    if (t49 != 0)
        goto LAB18;

LAB19:
LAB23:    t65 = (1 * 1000LL);
    t66 = (t0 + 3552);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    *((unsigned char *)t70) = (unsigned char)2;
    xsi_driver_first_trans_delta(t66, 0U, 1, t65);
    t71 = (t0 + 3552);
    xsi_driver_intertial_reject(t71, t65, t65);

LAB2:    t72 = (t0 + 3472);
    *((int *)t72) = 1;

LAB1:    return;
LAB3:    t9 = (1 * 1000LL);
    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t2 = (t0 + 3552);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t16 = (t0 + 3552);
    xsi_driver_intertial_reject(t16, t9, t9);
    goto LAB2;

LAB5:    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t25 = (1 * 1000LL);
    t18 = (t0 + 1192U);
    t26 = *((char **)t18);
    t27 = *((unsigned char *)t26);
    t18 = (t0 + 3552);
    t28 = (t18 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = t27;
    xsi_driver_first_trans_delta(t18, 0U, 1, t25);
    t32 = (t0 + 3552);
    xsi_driver_intertial_reject(t32, t25, t25);
    goto LAB2;

LAB10:    t18 = (t0 + 1832U);
    t22 = *((char **)t18);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)3);
    t17 = t24;
    goto LAB12;

LAB13:    t41 = (1 * 1000LL);
    t34 = (t0 + 1352U);
    t42 = *((char **)t34);
    t43 = *((unsigned char *)t42);
    t34 = (t0 + 3552);
    t44 = (t34 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    *((unsigned char *)t47) = t43;
    xsi_driver_first_trans_delta(t34, 0U, 1, t41);
    t48 = (t0 + 3552);
    xsi_driver_intertial_reject(t48, t41, t41);
    goto LAB2;

LAB15:    t34 = (t0 + 1832U);
    t38 = *((char **)t34);
    t39 = *((unsigned char *)t38);
    t40 = (t39 == (unsigned char)2);
    t33 = t40;
    goto LAB17;

LAB18:    t57 = (1 * 1000LL);
    t50 = (t0 + 1512U);
    t58 = *((char **)t50);
    t59 = *((unsigned char *)t58);
    t50 = (t0 + 3552);
    t60 = (t50 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    *((unsigned char *)t63) = t59;
    xsi_driver_first_trans_delta(t50, 0U, 1, t57);
    t64 = (t0 + 3552);
    xsi_driver_intertial_reject(t64, t57, t57);
    goto LAB2;

LAB20:    t50 = (t0 + 1832U);
    t54 = *((char **)t50);
    t55 = *((unsigned char *)t54);
    t56 = (t55 == (unsigned char)3);
    t49 = t56;
    goto LAB22;

LAB24:    goto LAB2;

}


extern void work_a_1082769298_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1082769298_3212880686_p_0};
	xsi_register_didat("work_a_1082769298_3212880686", "isim/MCMC_tb_isim_beh.exe.sim/work/a_1082769298_3212880686.didat");
	xsi_register_executes(pe);
}
