// Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
// this is part of the CflexHDL project

#ifndef __TYPES_PERF_H
#define __TYPES_PERF_H

#ifndef PARSING
//#define FP_DEBUG
#endif

#ifdef FP_DEBUG
//see: cflexhdl cfloatops.h
struct perfcount
{
    int mul, add, div, sub, cmp, unary_minus, inttofp, fptoint, fmuladd;
    int fptofix, fixtofp, fixtoint, inttofix;
    perfcount() { clear(); mul = -1; }

    void clear();
    void dump();
};

#define LOG_PERF(m) ++perf->m
#define LOG_PERF2(p, m) ++(p)->m
#else
#define LOG_PERF(m)
#define LOG_PERF2(p, m) 0
#endif


#endif // __TYPES_PERF_H

