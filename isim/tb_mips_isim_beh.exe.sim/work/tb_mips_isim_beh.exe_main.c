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

char *IEEE_P_3499444699;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    work_a_4084620457_0831356973_init();
    work_a_3002075066_0831356973_init();
    work_a_1208337864_3708392848_init();
    ieee_p_3620187407_init();
    work_a_2251915414_3212880686_init();
    work_a_1153420228_0831356973_init();
    work_a_2110357975_0831356973_init();
    work_a_2046343074_0831356973_init();
    work_a_1111616105_0831356973_init();
    work_a_2421557259_0831356973_init();
    work_a_1218917173_0831356973_init();
    work_a_0832606739_1566020785_init();
    work_a_2399776393_3708392848_init();
    work_a_1430113433_3708392848_init();
    work_a_1250343676_2372691052_init();


    xsi_register_tops("work_a_1250343676_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
