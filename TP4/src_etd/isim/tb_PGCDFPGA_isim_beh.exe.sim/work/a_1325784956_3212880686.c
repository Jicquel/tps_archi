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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/user/9/.base/mullero/home/cours/archi1/TP/tp4/src_prof/vhd/tb_pgcdfpga.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1434220770680401498_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1325784956_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3824);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_1325784956_3212880686_p_1(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int64 t10;
    int64 t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 6456);
    t4 = (t0 + 3888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (9 * t9);
    t11 = (t10 / 4);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (2 * t9);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t10);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);

LAB12:
LAB13:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t12 = (5 - 5);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t16 = *((unsigned char *)t2);
    t17 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t16);
    t4 = (t0 + 3888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t17;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 / 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t10);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB14:;
LAB15:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t12 = (5 - 5);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t16 = *((unsigned char *)t2);
    t17 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t16);
    t4 = (t0 + 3888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t17;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 / 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t10);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB16:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6408U);
    t4 = (t0 + 6462);
    t6 = (t18 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t16 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t3, t2, t4, t18);
    if (t16 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(58, ng0);
    goto LAB15;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t19 = (5 - 5);
    t13 = (t19 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t7 = (t8 + t15);
    t17 = *((unsigned char *)t7);
    t20 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t17);
    t21 = (t0 + 3888);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = t20;
    xsi_driver_first_trans_delta(t21, 0U, 1, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 / 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t10);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB21:    goto LAB12;

LAB23:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6408U);
    t4 = (t0 + 6466);
    t6 = (t18 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t16 = ieee_p_1242562249_sub_1434220770680401498_1035706684(IEEE_P_1242562249, t3, t2, t4, t18);
    if (t16 != 0)
        goto LAB27;

LAB29:
LAB28:    goto LAB21;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

LAB27:    xsi_set_current_line(55, ng0);
    goto LAB15;

LAB30:    goto LAB28;

LAB31:    goto LAB21;

LAB32:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t12 = (5 - 5);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t16 = *((unsigned char *)t2);
    t17 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t16);
    t4 = (t0 + 3888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t17;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 / 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t10);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 6470);
    xsi_report(t2, 19U, (unsigned char)3);
    xsi_set_current_line(66, ng0);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    goto LAB2;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

}

static void work_a_1325784956_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 4);
    t2 = (t0 + 3248);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1325784956_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1325784956_3212880686_p_0,(void *)work_a_1325784956_3212880686_p_1,(void *)work_a_1325784956_3212880686_p_2};
	xsi_register_didat("work_a_1325784956_3212880686", "isim/tb_PGCDFPGA_isim_beh.exe.sim/work/a_1325784956_3212880686.didat");
	xsi_register_executes(pe);
}
