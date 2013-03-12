/*
 * Copyright (C) 2008-2010 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#ifndef _LINKER_DEBUG_H_
#define _LINKER_DEBUG_H_

#include <stdio.h>

/*********************************************************************
 * You shouldn't need to modify anything below unless you are adding
 * more debugging information.
 *
 * To enable/disable specific debug options, change the defines above
 *********************************************************************/


/*********************************************************************/

#include <private/debug_format.h>

__LIBC_HIDDEN__ extern int gLdDebugVerbosity;

#define _PRINTVF(v,x...)                           \
    do {                                             \
        if (gLdDebugVerbosity > (v)) __libc_format_fd(1, x);  \
    } while (0)

#define PRINT(x...)          _PRINTVF(-1, x)
#define INFO(x...)           _PRINTVF(0, x)
#define TRACE(x...)          _PRINTVF(1, x)

#if TRACE_DEBUG
#define DEBUG(x...)          _PRINTVF(2, "DEBUG: " x)
#else /* !TRACE_DEBUG */
#define DEBUG(x...)          do {} while (0)
#endif /* TRACE_DEBUG */

#define TRACE_TYPE(t,x...)   do { if (DO_TRACE_##t) { TRACE(x); } } while (0)

#endif /* _LINKER_DEBUG_H_ */
