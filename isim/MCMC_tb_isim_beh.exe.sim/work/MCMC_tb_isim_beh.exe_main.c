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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0332885075_3212880686_init();
    work_a_2735068677_3212880686_init();
    work_a_3404166099_3212880686_init();
    work_a_1007874614_3212880686_init();
    work_a_3815357513_3212880686_init();
    work_a_3392787015_3212880686_init();
    work_a_2092195719_3212880686_init();
    work_a_0658854016_3212880686_init();
    work_a_0790317449_3212880686_init();
    work_a_2226347128_3212880686_init();
    work_a_1303743314_3212880686_init();
    work_a_1017819055_3212880686_init();
    work_a_2970677010_3212880686_init();
    work_a_1089503337_3212880686_init();
    work_a_3100751585_3212880686_init();
    work_a_4052188560_3212880686_init();
    work_a_4053882090_3212880686_init();
    work_a_3200337851_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_0288868032_3212880686_init();
    work_a_3191799714_3212880686_init();
    work_a_1082769298_3212880686_init();
    work_a_2499323393_3212880686_init();
    work_a_3765198927_3212880686_init();
    work_a_3369387141_3212880686_init();
    work_a_3697817397_3212880686_init();
    work_a_3909405631_3212880686_init();
    work_a_0834814836_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_3372407860_3212880686_init();
    work_a_1721258053_2372691052_init();


    xsi_register_tops("work_a_1721258053_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
