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
static const char *ng0 = "/user/9/.base/llavorij/home/Documents/TP_archi/TP3/src_etd/vhd/lecture_memoire.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935617061_1035706684(char *, char *, char *, char *, int );


static void work_a_0871606977_3271922888_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3968);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 24U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3872);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0871606977_3271922888_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 6768U);
    t4 = ieee_p_1242562249_sub_1006216973935617061_1035706684(IEEE_P_1242562249, t1, t3, t2, 16);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (17U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4032);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 17U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 3888);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t7, 0);
    goto LAB6;

}


extern void work_a_0871606977_3271922888_init()
{
	static char *pe[] = {(void *)work_a_0871606977_3271922888_p_0,(void *)work_a_0871606977_3271922888_p_1};
	xsi_register_didat("work_a_0871606977_3271922888", "isim/tb_lecture_memoire_isim_beh.exe.sim/work/a_0871606977_3271922888.didat");
	xsi_register_executes(pe);
}
