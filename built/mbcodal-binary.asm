; Interface tables: 3/8 (38%)
; Virtual methods: 0 / 2
; generated code sizes (bytes): 6344 (incl. 4456 user, 1290 helpers, 110 vtables, 488 lits); src size 0
; assembly: 4694 lines; density: 36.83 bytes/stmt; (121 stmts)
; total bytes: 297160 (63.1% of 460.0k flash with 173880 free)
; peep hole pass: 64 instructions removed and 136 updated
; peep hole pass: 35 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x47000
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 88373C9F333F28AC ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 6   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str23 ; name
    ;
; Function main.ts(1,1): <main>
    ;
    .object _main___P3001 "main.ts(1,1): <main>"
_main___P3001_pre:
    .section code
    .balign 4
_main___P3001_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P3001_args@fn
_main___P3001_args:
    .section code
_main___P3001:
_main___P3001_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
_main___P3001_locals:
    ldr r0, _ldlit_2 ; MicrobitPin__C2334_VT      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    movs r0, #201
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; tmpref @1
    push {r0} ; proc-arg
    bl MicrobitPin_constructor__P2336
_proccall24:
    add sp, #4*2 ; pop locals 2
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    movs r0, #10
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_1      
.jmpz25:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    push {r0} ; proc-arg
    movs r0, #65
    push {r0} ; proc-arg
    bl solderbit_segment_init__P2996
_proccall26:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_3 ; __solderbit_segment_tests_test1__P3197_Lit      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_4 ; __solderbit_segment_tests_test2__P3198_Lit      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_5 ; __solderbit_segment_tests_test3__P3199_Lit      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    ldr r0, _ldlit_6 ; __solderbit_segment_tests_inline__P3211_Lit      
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    push {r0} ; proc-arg
    bl helpers_arrayForEach__P2138
_proccall27:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_0_1:
.afterif_1_1:
.ret.3001:
    @stackempty locals
    movs r0, #0
.final_2_1:
_main___P3001_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function test.ts(102,19): __solderbit_segment_tests.inline
    ;
    .object __solderbit_segment_tests_inline__P3211 "test.ts(102,19): __solderbit_segment_tests.inline"
__solderbit_segment_tests_inline__P3211_pre:
    .section code
    .balign 4
__solderbit_segment_tests_inline__P3211_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word __solderbit_segment_tests_inline__P3211_args@fn
__solderbit_segment_tests_inline__P3211_args:
    cmp r4, #1
    bge __solderbit_segment_tests_inline__P3211_nochk
    push {lr}
    bl _expand_args_1_0
    bl __solderbit_segment_tests_inline__P3211_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
__solderbit_segment_tests_inline__P3211:
__solderbit_segment_tests_inline__P3211_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
__solderbit_segment_tests_inline__P3211_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _lambda_call0_1
    add sp, #4*1 ; pop locals 1
.ret.3211:
    @stackempty locals
    movs r0, #0
.final_0_2:
__solderbit_segment_tests_inline__P3211_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(255,5): helpers.arrayForEach
    ;
    .object helpers_arrayForEach__P2138 "core/pxt-helpers.ts(255,5): helpers.arrayForEach"
helpers_arrayForEach__P2138_pre:
    .section code
    .balign 4
    .section code
helpers_arrayForEach__P2138:
helpers_arrayForEach__P2138_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
helpers_arrayForEach__P2138_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_3
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.3220:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@0]
    bl _cmp_lt
    beq .brk.3220      
.jmpz29:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    pop {r1, r2}
    push {r2}
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    push {r1}
    ldr r0, [sp, #4*2] ; estack
    bl _lambda_call2_4
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.3220:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3220      
.brk.3220:
.ret.2138:
    @stackempty locals
    movs r0, #0
.final_0_3:
    add sp, #4*2 ; pop locals 2
helpers_arrayForEach__P2138_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function test.ts(65,3): __solderbit_segment_tests.test3
    ;
    .object __solderbit_segment_tests_test3__P3199 "test.ts(65,3): __solderbit_segment_tests.test3"
__solderbit_segment_tests_test3__P3199_pre:
    .section code
    .balign 4
__solderbit_segment_tests_test3__P3199_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word __solderbit_segment_tests_test3__P3199_args@fn
__solderbit_segment_tests_test3__P3199_args:
    .section code
__solderbit_segment_tests_test3__P3199:
__solderbit_segment_tests_test3__P3199_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
__solderbit_segment_tests_test3__P3199_locals:
    ldr r0, _ldlit_7 ; _str18      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall31:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall32:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #19
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall33:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    movs r0, #19
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall34:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #151
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall35:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #151
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall36:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #25
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall37:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    movs r0, #25
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall38:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    ldr r0, _ldlit_8 ; _dbl19      
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall39:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    ldr r0, _ldlit_8 ; _dbl19      
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall40:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    ldr r0, _ldlit_9 ; _dbl20      
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall41:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    ldr r0, _ldlit_9 ; _dbl20      
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall42:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    ldr r0, _ldlit_10 ; _dbl21      
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall43:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #7
    lsls r0, r0, #8
    adds r0, #209
    push {r0} ; proc-arg
    ldr r0, _ldlit_10 ; _dbl21      
    push {r0} ; proc-arg
    bl solderbit_segment_show_number__P2998
_proccall44:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    ldr r0, _ldlit_11 ; _str22      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
.ret.3199:
    @stackempty locals
    movs r0, #0
.final_0_4:
__solderbit_segment_tests_test3__P3199_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function solderbitSegment.ts(125,5): solderbit_segment.show_number
    ;
    .object solderbit_segment_show_number__P2998 "solderbitSegment.ts(125,5): solderbit_segment.show_number"
solderbit_segment_show_number__P2998_pre:
    .section code
    .balign 4
    .section code
solderbit_segment_show_number__P2998:
solderbit_segment_show_number__P2998_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
solderbit_segment_show_number__P2998_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #1
    bl _cmp_eq
    beq .else_0_5      
.jmpz45:
    ldr r0, _ldlit_12 ; _str1      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::throwValue
    b .afterif_1_5      
.else_0_5:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.3283:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    bne .jmpz46
    b .brk.3283      
.object PUSH
.balign 4
_ldlit_2:
 .word MicrobitPin__C2334_VT
_ldlit_3:
 .word __solderbit_segment_tests_test1__P3197_Lit
_ldlit_4:
 .word __solderbit_segment_tests_test2__P3198_Lit
_ldlit_5:
 .word __solderbit_segment_tests_test3__P3199_Lit
_ldlit_6:
 .word __solderbit_segment_tests_inline__P3211_Lit
_ldlit_7:
 .word _str18
_ldlit_8:
 .word _dbl19
_ldlit_9:
 .word _dbl20
_ldlit_10:
 .word _dbl21
_ldlit_11:
 .word _str22
_ldlit_12:
 .word _str1
.object POP
.jmpz46:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_6
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl solderbit_segment_digit_lookup__P3194
_proccall47:
    add sp, #4*1 ; pop locals 1
    movs r1, #1
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2}
    movs r0, #10
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl pins_i2cWriteNumber__P2740
_proccall48:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.cont.3283:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3283      
.brk.3283:
.afterif_1_5:
.ret.2998:
    @stackempty locals
    movs r0, #0
.final_2_5:
    add sp, #4*2 ; pop locals 2
solderbit_segment_show_number__P2998_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function solderbitSegment.ts(99,5): solderbit_segment.digit_lookup
    ;
    .object solderbit_segment_digit_lookup__P3194 "solderbitSegment.ts(99,5): solderbit_segment.digit_lookup"
solderbit_segment_digit_lookup__P3194_pre:
    .section code
    .balign 4
    .section code
solderbit_segment_digit_lookup__P3194:
solderbit_segment_digit_lookup__P3194_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
solderbit_segment_digit_lookup__P3194_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    ldr r0, _ldlit_14 ; _str2      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz49
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_6      
.jmpz49:
    ldr r0, _ldlit_15 ; _str3      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz50
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_6      
.jmpz50:
    ldr r0, _ldlit_16 ; _str4      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz51
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_6      
.jmpz51:
    ldr r0, _ldlit_17 ; _str5      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz52
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_6      
.jmpz52:
    ldr r0, _ldlit_18 ; _str6      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz53
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_6      
.jmpz53:
    ldr r0, _ldlit_19 ; _str7      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz54
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_6      
.jmpz54:
    ldr r0, _ldlit_20 ; _str8      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz55
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_6      
.jmpz55:
    ldr r0, _ldlit_21 ; _str9      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz56
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_6      
.jmpz56:
    ldr r0, _ldlit_22 ; _str10      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz57
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_6      
.jmpz57:
    ldr r0, _ldlit_23 ; _str11      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz58
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_6      
.jmpz58:
    ldr r0, _ldlit_24 ; _str12      
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz59
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_6      
.jmpz59:
    pop {r0} ; tmpref @1
    b .switch_11_6      
.switch_0_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #129
    b .ret.3194      
.switch_1_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #243
    b .ret.3194      
.switch_2_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #73
    b .ret.3194      
.switch_3_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #97
    b .ret.3194      
.switch_4_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #51
    b .ret.3194      
.switch_5_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #37
    b .ret.3194      
.switch_6_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #5
    b .ret.3194      
.switch_7_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #241
    b .ret.3194      
.switch_8_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #1
    b .ret.3194      
.switch_9_6:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #33
    b .ret.3194      
.switch_10_6:
    movs r0, #255
    b .ret.3194      
.switch_11_6:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_8
    ldr r0, _ldlit_25 ; _str13      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::throwValue
    add sp, #4*1 ; pop locals 1
.brk.3302:
    movs r0, #0
.ret.3194:
    @stackempty locals
.final_12_6:
solderbit_segment_digit_lookup__P3194_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pins.ts(124,5): pins.i2cWriteNumber
    ;
    .object pins_i2cWriteNumber__P2740 "core/pins.ts(124,5): pins.i2cWriteNumber"
pins_i2cWriteNumber__P2740_pre:
    .section code
    .balign 4
    .section code
pins_i2cWriteNumber__P2740:
pins_i2cWriteNumber__P2740_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pins_i2cWriteNumber__P2740_locals:
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    bl pins_sizeOf__P2764
_proccall60:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_10
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::setNumber
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@3]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_11
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*3 ; pop locals 3
    bl _numops_fromInt
    @stackempty locals
.ret.2740:
    @stackempty locals
    movs r0, #0
.final_0_7:
    add sp, #4*1 ; pop locals 1
pins_i2cWriteNumber__P2740_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(3,5): pins.sizeOf
    ;
    .object pins_sizeOf__P2764 "core/buffer.ts(3,5): pins.sizeOf"
pins_sizeOf__P2764_pre:
    .section code
    .balign 4
    .section code
pins_sizeOf__P2764:
pins_sizeOf__P2764_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
pins_sizeOf__P2764_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl Buffer_sizeOfNumberFormat__P2804
_proccall61:
    add sp, #4*1 ; pop locals 1
.ret.2764:
    @stackempty locals
.final_0_8:
pins_sizeOf__P2764_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(509,5): Buffer.sizeOfNumberFormat
    ;
    .object Buffer_sizeOfNumberFormat__P2804 "core/buffer.ts(509,5): Buffer.sizeOfNumberFormat"
Buffer_sizeOfNumberFormat__P2804_pre:
    .section code
    .balign 4
    .section code
Buffer_sizeOfNumberFormat__P2804:
Buffer_sizeOfNumberFormat__P2804_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Buffer_sizeOfNumberFormat__P2804_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz62
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_9      
.jmpz62:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz63
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_9      
.jmpz63:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz64
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_9      
.jmpz64:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz65
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_9      
.jmpz65:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz66
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_9      
.jmpz66:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz67
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_9      
.jmpz67:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz68
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_9      
.jmpz68:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz69
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_9      
.jmpz69:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz70
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_9      
.jmpz70:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz71
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_9      
.jmpz71:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz72
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_9      
.jmpz72:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz73
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_9      
.jmpz73:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz74
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_9      
.jmpz74:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz75
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_9      
.jmpz75:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz76
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_9      
.jmpz76:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz77
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_9      
.jmpz77:
    pop {r0} ; tmpref @1
    b .brk.3347      
.object PUSH
.balign 4
_ldlit_14:
 .word _str2
_ldlit_15:
 .word _str3
_ldlit_16:
 .word _str4
_ldlit_17:
 .word _str5
_ldlit_18:
 .word _str6
_ldlit_19:
 .word _str7
_ldlit_20:
 .word _str8
_ldlit_21:
 .word _str9
_ldlit_22:
 .word _str10
_ldlit_23:
 .word _str11
_ldlit_24:
 .word _str12
_ldlit_25:
 .word _str13
.object POP
.switch_0_9:
.switch_1_9:
.switch_2_9:
.switch_3_9:
    movs r0, #3
    b .ret.2804      
.switch_4_9:
.switch_5_9:
.switch_6_9:
.switch_7_9:
    movs r0, #5
    b .ret.2804      
.switch_8_9:
.switch_9_9:
.switch_10_9:
.switch_11_9:
.switch_12_9:
.switch_13_9:
    movs r0, #9
    b .ret.2804      
.switch_14_9:
.switch_15_9:
    movs r0, #17
    b .ret.2804      
.brk.3347:
    movs r0, #1
.ret.2804:
    @stackempty locals
.final_16_9:
Buffer_sizeOfNumberFormat__P2804_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/basic.ts(12,5): basic.showNumber
    ;
    .object basic_showNumber__P2370 "core/basic.ts(12,5): basic.showNumber"
basic_showNumber__P2370_pre:
    .section code
    .balign 4
    .section code
basic_showNumber__P2370:
basic_showNumber__P2370_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
basic_showNumber__P2370_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl isNaN__P2122
_proccall79:
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_10      
.jmpz78:
    ldr r0, _ldlit_27 ; _str0      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
    b .afterif_1_10      
.else_0_10:
    movs r0, #5
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl Math_roundWithPrecision__P2161
_proccall80:
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_6
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.afterif_1_10:
.ret.2370:
    @stackempty locals
    movs r0, #0
.final_2_10:
basic_showNumber__P2370_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(580,5): Math.roundWithPrecision
    ;
    .object Math_roundWithPrecision__P2161 "core/pxt-helpers.ts(580,5): Math.roundWithPrecision"
Math_roundWithPrecision__P2161_pre:
    .section code
    .balign 4
    .section code
Math_roundWithPrecision__P2161:
Math_roundWithPrecision__P2161_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
Math_roundWithPrecision__P2161_locals:
    ldr r0, [sp, args@1]
    movs r1, #1
    bl _numops_orrs
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, args@1]
    movs r1, #1
    bl _cmp_le
    beq .else_0_11      
.jmpz81:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    b .ret.2161      
.else_0_11:
.afterif_1_11:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _cmp_eq
    beq .else_2_11      
.jmpz82:
    movs r0, #1
    b .ret.2161      
.else_2_11:
.afterif_3_11:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.cont.3393:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    movs r0, #21
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::pow
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_5_11      
.jmpz83:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_4_11      
.lazySkip_5_11:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #43
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
.lazy_4_11:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.3393      
.jmpz84:
    b .cont.3393      
.brk.3393:
    ldr r0, [sp, locals@0]
.ret.2161:
    @stackempty locals
.final_6_11:
    add sp, #4*2 ; pop locals 2
Math_roundWithPrecision__P2161_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(13,1): isNaN
    ;
    .object isNaN__P2122 "core/pxt-helpers.ts(13,1): isNaN"
isNaN__P2122_pre:
    .section code
    .balign 4
    .section code
isNaN__P2122:
isNaN__P2122_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
isNaN__P2122_locals:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _numops_subs
    str r0, [sp, args@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::neqq
    add sp, #4*2 ; pop locals 2
.ret.2122:
    @stackempty locals
.final_0_12:
isNaN__P2122_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function test.ts(39,3): __solderbit_segment_tests.test2
    ;
    .object __solderbit_segment_tests_test2__P3198 "test.ts(39,3): __solderbit_segment_tests.test2"
__solderbit_segment_tests_test2__P3198_pre:
    .section code
    .balign 4
__solderbit_segment_tests_test2__P3198_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word __solderbit_segment_tests_test2__P3198_args@fn
__solderbit_segment_tests_test2__P3198_args:
    .section code
__solderbit_segment_tests_test2__P3198:
__solderbit_segment_tests_test2__P3198_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
__solderbit_segment_tests_test2__P3198_locals:
    ldr r0, _ldlit_28 ; _str16      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall85:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #97
    push {r0} ; proc-arg
    bl solderbit_segment_show_digit__P2997
_proccall86:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl basic::clearScreen
    @stackempty locals
    bl solderbit_segment_clear__P2999
_proccall87:
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl solderbit_segment_clear__P2999
_proccall88:
    @stackempty locals
    bl solderbit_segment_clear__P2999
_proccall89:
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    movs r0, #9
    push {r0} ; proc-arg
    bl basic_showNumber__P2370
_proccall90:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #97
    push {r0} ; proc-arg
    bl solderbit_segment_show_digit__P2997
_proccall91:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl basic::clearScreen
    @stackempty locals
    bl solderbit_segment_clear__P2999
_proccall92:
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    ldr r0, _ldlit_29 ; _str17      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
.ret.3198:
    @stackempty locals
    movs r0, #0
.final_0_13:
__solderbit_segment_tests_test2__P3198_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function solderbitSegment.ts(148,5): solderbit_segment.clear
    ;
    .object solderbit_segment_clear__P2999 "solderbitSegment.ts(148,5): solderbit_segment.clear"
solderbit_segment_clear__P2999_pre:
    .section code
    .balign 4
    .section code
solderbit_segment_clear__P2999:
solderbit_segment_clear__P2999_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
solderbit_segment_clear__P2999_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #1
    bl _cmp_eq
    beq .else_0_14      
.jmpz93:
    ldr r0, _ldlit_30 ; _str1      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::throwValue
    b .afterif_1_14      
.else_0_14:
    movs r0, #10
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #255
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2740
_proccall94:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.afterif_1_14:
.ret.2999:
    @stackempty locals
    movs r0, #0
.final_2_14:
solderbit_segment_clear__P2999_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function solderbitSegment.ts(79,5): solderbit_segment.show_digit
    ;
    .object solderbit_segment_show_digit__P2997 "solderbitSegment.ts(79,5): solderbit_segment.show_digit"
solderbit_segment_show_digit__P2997_pre:
    .section code
    .balign 4
    .section code
solderbit_segment_show_digit__P2997:
solderbit_segment_show_digit__P2997_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
solderbit_segment_show_digit__P2997_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #1
    bl _cmp_eq
    beq .else_0_15      
.jmpz95:
    ldr r0, _ldlit_30 ; _str1      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::throwValue
    b .afterif_1_15      
.else_0_15:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2}
    movs r0, #10
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl pins_i2cWriteNumber__P2740
_proccall96:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.afterif_1_15:
.ret.2997:
    @stackempty locals
    movs r0, #0
.final_2_15:
solderbit_segment_show_digit__P2997_end:
    pop {pc}
.object PUSH
.balign 4
_ldlit_27:
 .word _str0
_ldlit_28:
 .word _str16
_ldlit_29:
 .word _str17
_ldlit_30:
 .word _str1
.object POP
    @stackempty func
    @stackempty args
; endfun
    ;
; Function test.ts(16,3): __solderbit_segment_tests.test1
    ;
    .object __solderbit_segment_tests_test1__P3197 "test.ts(16,3): __solderbit_segment_tests.test1"
__solderbit_segment_tests_test1__P3197_pre:
    .section code
    .balign 4
__solderbit_segment_tests_test1__P3197_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word __solderbit_segment_tests_test1__P3197_args@fn
__solderbit_segment_tests_test1__P3197_args:
    .section code
__solderbit_segment_tests_test1__P3197:
__solderbit_segment_tests_test1__P3197_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
__solderbit_segment_tests_test1__P3197_locals:
    ldr r0, _ldlit_32 ; _str14      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #129
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #243
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #73
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #97
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #51
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #37
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #5
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #241
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #33
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #255
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, _ldlit_33 ; __solderbit_segment_tests_test1_inline__P3492_Lit      
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl helpers_arrayForEach__P2138
_proccall97:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_34 ; _str15      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
.ret.3197:
    @stackempty locals
    movs r0, #0
.final_0_16:
    add sp, #4*1 ; pop locals 1
__solderbit_segment_tests_test1__P3197_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function test.ts(27,20): __solderbit_segment_tests.test1.inline
    ;
    .object __solderbit_segment_tests_test1_inline__P3492 "test.ts(27,20): __solderbit_segment_tests.test1.inline"
__solderbit_segment_tests_test1_inline__P3492_pre:
    .section code
    .balign 4
__solderbit_segment_tests_test1_inline__P3492_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word __solderbit_segment_tests_test1_inline__P3492_args@fn
__solderbit_segment_tests_test1_inline__P3492_args:
    cmp r4, #2
    bge __solderbit_segment_tests_test1_inline__P3492_nochk
    push {lr}
    bl _expand_args_2_12
    bl __solderbit_segment_tests_test1_inline__P3492_nochk
    @dummystack 2
    add sp, #4*2
    pop {pc}
    .section code
__solderbit_segment_tests_test1_inline__P3492:
__solderbit_segment_tests_test1_inline__P3492_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
__solderbit_segment_tests_test1_inline__P3492_locals:
    ldr r0, [sp, args@0]
    movs r1, #255
    bl _cmp_neq
    beq .condexprz_0_17      
.jmpz98:
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_13
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    b .condexprfin_1_17      
.condexprz_0_17:
    ldr r0, _ldlit_35 ; _str12      
.condexprfin_1_17:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl solderbit_segment_show_digit__P2997
_proccall99:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.ret.3492:
    @stackempty locals
    movs r0, #0
.final_2_17:
__solderbit_segment_tests_test1_inline__P3492_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pinscompat.ts(78,5): MicrobitPin.constructor
    ;
    .object MicrobitPin_constructor__P2336 "core/pinscompat.ts(78,5): MicrobitPin.constructor"
MicrobitPin_constructor__P2336_pre:
    .section code
    .balign 4
    .section code
MicrobitPin_constructor__P2336:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_MicrobitPin__C2334_validate_14
    mov lr, r7
MicrobitPin_constructor__P2336_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
MicrobitPin_constructor__P2336_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    str r1, [r0, #4]
    @stackempty locals
    movs r0, #0
.ret.2336:
    @stackempty locals
.final_0_18:
MicrobitPin_constructor__P2336_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function solderbitSegment.ts(67,5): solderbit_segment.init
    ;
    .object solderbit_segment_init__P2996 "solderbitSegment.ts(67,5): solderbit_segment.init"
solderbit_segment_init__P2996_pre:
    .section code
    .balign 4
    .section code
solderbit_segment_init__P2996:
solderbit_segment_init__P2996_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
solderbit_segment_init__P2996_locals:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    movs r0, #66
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #2
    bl _ifacecall2__15
_proccall100:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2996:
    @stackempty locals
    movs r0, #0
.final_0_19:
solderbit_segment_init__P2996_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pinscompat.ts(94,5): MicrobitPin.digitalWrite
    ;
    .object MicrobitPin_digitalWrite__P2338 "core/pinscompat.ts(94,5): MicrobitPin.digitalWrite"
MicrobitPin_digitalWrite__P2338_pre:
    .section code
    .balign 4
MicrobitPin_digitalWrite__P2338_args:
    cmp r4, #2
    bge MicrobitPin_digitalWrite__P2338_nochk
    push {lr}
    bl _expand_args_2_12
    bl MicrobitPin_digitalWrite__P2338_nochk
    @dummystack 2
    add sp, #4*2
    pop {pc}
    .section code
MicrobitPin_digitalWrite__P2338:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_MicrobitPin__C2334_validate_14
    mov lr, r7
MicrobitPin_digitalWrite__P2338_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
MicrobitPin_digitalWrite__P2338_locals:
    ldr r0, [sp, args@1]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_0_20      
.jmpz101:
    movs r0, #3
    b .condexprfin_1_20      
.condexprz_0_20:
    movs r0, #1
.condexprfin_1_20:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; tmpref @1
    push {r0} ; proc-arg
    bl _conv_16
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.ret.2338:
    @stackempty locals
    movs r0, #0
.final_2_20:
MicrobitPin_digitalWrite__P2338_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pinscompat.ts(82,5): MicrobitPin.digitalId
    ;
    .object MicrobitPin_digitalId__P3045 "core/pinscompat.ts(82,5): MicrobitPin.digitalId"
MicrobitPin_digitalId__P3045_pre:
    .section code
    .balign 4
MicrobitPin_digitalId__P3045_args:
    cmp r4, #1
    bge MicrobitPin_digitalId__P3045_nochk
    push {lr}
    bl _expand_args_1_0
    bl MicrobitPin_digitalId__P3045_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
MicrobitPin_digitalId__P3045:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_MicrobitPin__C2334_validate_14
    mov lr, r7
MicrobitPin_digitalId__P3045_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
MicrobitPin_digitalId__P3045_locals:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
.ret.3045:
    @stackempty locals
.final_0_21:
MicrobitPin_digitalId__P3045_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    .object _pxt_helper_trampoline "helper: trampoline"
    .section code
_pxt_lambda_trampoline:
    push { r4, r5, r6, r7, lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4, r5, r6, r7} ; save high registers
    mov r4, r1
    mov r5, r2
    mov r6, r3
    mov r7, r0
    bl _inst_builtin4_validate_17
    mov r0, sp
    push {r4, r5, r6, r7} ; push args and the lambda
    mov r1, sp
    bl pxt::pushThreadContext
    mov r6, r0          ; save ctx or globals
    mov r5, r7          ; save lambda for closure
    mov r0, r5          ; also save lambda pointer in r0 - needed by pxt::bindMethod
    ldr r1, [r5, #8]    ; ld fnptr
    movs r4, #3         ; 3 args
    blx r1              ; execute the actual lambda
    mov r7, r0          ; save result
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda
    mov r0, r6   ; or pop the thread context
    bl pxt::popThreadContext
    mov r0, r7 ; restore result
    pop {r4, r5, r6, r7} ; restore high registers
    mov r8, r4
    mov r9, r5
    mov r10, r6
    mov r11, r7
    pop { r4, r5, r6, r7, pc}
    .object _pxt_helper_exn "helper: exn"
    .section code
; r0 - try frame
; r1 - handler PC
_pxt_save_exception_state:
    push {r0, lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::beginTry
    pop {r1, r4}
    str r1, [r0, #1*4] ; PC
    mov r1, sp
    str r1, [r0, #2*4] ; SP
    str r5, [r0, #3*4] ; lambda ptr
    bx r4
    .section code
; r0 - try frame
; r1 - thread context
_pxt_restore_exception_state:
    mov r6, r1
    ldr r1, [r0, #2*4] ; SP
    mov sp, r1
    ldr r5, [r0, #3*4] ; lambda ptr
    ldr r1, [r0, #1*4] ; PC
    movs r0, #1
    orrs r1, r0
    bx r1
    .object _pxt_helper_stringconv "helper: stringconv"
    .section code
_pxt_stringConv:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #1
    bne .notstring
    bx lr
.notstring:
    ldr r7, [r3, #4*8]
    cmp r7, #0
    beq .fail
    push {r0, lr}
    movs r4, #1
    blx r7
    str r0, [sp, #0]
    b .numops
.fail:
    push {r0, lr}
.numops:
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    pop {r1, pc}      
    .object _pxt_helper_get_buffer "helper: get buffer"
    .section code
_pxt_buffer_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    ldrb r0, [r4, #8]
    lsls r0, r0, #1
    adds r0, #1
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    lsls r0, r0, #1
    adds r0, #1
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #1 ; 0 or undefined
    bx lr
    .object _pxt_helper_get_array "helper: get array"
    .section code
_pxt_array_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    ldr r0, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    pop {pc}
.object PUSH
.balign 4
_ldlit_32:
 .word _str14
_ldlit_33:
 .word __solderbit_segment_tests_test1_inline__P3492_Lit
_ldlit_34:
 .word _str15
_ldlit_35:
 .word _str12
.object POP
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #0 ; 0 or undefined
    bx lr
    .object _pxt_helper_set_buffer "helper: set buffer"
    .section code
_pxt_buffer_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    strb r2, [r4, #8]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_set_array "helper: set array"
    .section code
_pxt_array_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    str r2, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_get "helper: get"
    .section code
_pxt_map_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapGetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*1 ; pop locals 1
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    movs r0, #0 ; undefined
    bx lr
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check if it's getter
    ldrh r7, [r3, #2]
    cmp r7, #1
    bne .bind
    movs r4, #1
    bx r2
.bind:
    mov r4, lr
    bl _pxt_bind_helper
.field:
    ldr r0, [r0, r2] ; load field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_set "helper: set"
    .section code
_pxt_map_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, r2, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*2 ; pop locals 2
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    bne .fail2      
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check for next descriptor
    ldrh r7, [r3, #8]
    cmp r7, r1
    bne .fail2 ; no setter!
    ldr r2, [r3, #12]
    movs r4, #2
    bx r2
.field:
    ldr r3, [sp, #4] ; ld-val
    str r3, [r0, r2] ; store field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_bind "helper: bind"
    .section code
_pxt_bind_helper:
    push {r0, r2}
    movs r0, #2
    ldr r1, _ldlit_37 ; _pxt_bind_lit      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkAction
    pop {r1, r2}
    str r1, [r0, #12]
    str r2, [r0, #16]
    bx r4 ; return
_pxt_bind_lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word .bindCode@fn
.bindCode:
; r0-bind object, r4-#args
    cmp r4, #12
    bge .fail
    lsls r3, r4, #2
    ldr r2, _ldlit_38 ; _pxt_copy_list      
    ldr r1, [r2, r3]
    ldr r3, [r0, #12]
    ldr r2, [r0, #16]
    adds r4, r4, #1
    bx r1
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_pxt_copy_list:
    .word _pxt_bind_0@fn
    .word _pxt_bind_1@fn
    .word _pxt_bind_2@fn
    .word _pxt_bind_3@fn
    .word _pxt_bind_4@fn
    .word _pxt_bind_5@fn
    .word _pxt_bind_6@fn
    .word _pxt_bind_7@fn
    .word _pxt_bind_8@fn
    .word _pxt_bind_9@fn
    .word _pxt_bind_10@fn
    .word _pxt_bind_11@fn
_pxt_bind_0:
    sub sp, #4
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*1] ; store LR
    blx r2
    ldr r1, [sp, #4*1]
    add sp, #8
    bx r1
_pxt_bind_1:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*2] ; store LR
    blx r2
    ldr r1, [sp, #4*2]
    add sp, #8
    bx r1
_pxt_bind_2:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*3] ; store LR
    blx r2
    ldr r1, [sp, #4*3]
    add sp, #8
    bx r1
_pxt_bind_3:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*4] ; store LR
    blx r2
    ldr r1, [sp, #4*4]
    add sp, #8
    bx r1
_pxt_bind_4:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*5] ; store LR
    blx r2
    ldr r1, [sp, #4*5]
    add sp, #8
    bx r1
_pxt_bind_5:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*6] ; store LR
    blx r2
    ldr r1, [sp, #4*6]
    add sp, #8
    bx r1
_pxt_bind_6:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*7] ; store LR
    blx r2
    ldr r1, [sp, #4*7]
    add sp, #8
    bx r1
_pxt_bind_7:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*8] ; store LR
    blx r2
    ldr r1, [sp, #4*8]
    add sp, #8
    bx r1
_pxt_bind_8:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*9] ; store LR
    blx r2
    ldr r1, [sp, #4*9]
    add sp, #8
    bx r1
_pxt_bind_9:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*10] ; store LR
    blx r2
    ldr r1, [sp, #4*10]
    add sp, #8
    bx r1
_pxt_bind_10:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*11] ; store LR
    blx r2
    ldr r1, [sp, #4*11]
    add sp, #8
    bx r1
_pxt_bind_11:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    ldr r1, [sp, #4*11]
    str r1, [sp, #4*10]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*12] ; store LR
    blx r2
    ldr r1, [sp, #4*12]
    add sp, #8
    bx r1
_code_end:
    .section code
    .object _code_helper__expand_args_1_0
_expand_args_1_0:
    movs r0, #0
    movs r1, #0
    push {r0}
    bx lr
    .section code
    .object _code_helper__lambda_call0_1
_lambda_call0_1:
; lambda call
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    movs r4, #0
    ldrh r1, [r0, #4]
    cmp r1, #0
    bne .pushR5
    ldr r1, [r0, #8]
    bx r1 ; keep lr from the caller
.pushR5:
    sub sp, #8
    str r5, [sp, #4*0]
    mov r1, lr
    str r1, [sp, #4*1]
    mov r5, r0
    ldr r7, [r5, #8]
    blx r7 ; exec actual lambda
    ldr r4, [sp, #4*1] ; restore what was in LR
    ldr r5, [sp, #4*0] ; restore lambda ctx
    add sp, #8
    bx r4
; end lambda call
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__inst_builtin6_validate_2
_inst_builtin6_validate_2:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #6
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_3
_conv_3:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin6_validate_2
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__lambda_call2_4
_lambda_call2_4:
; lambda call
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    movs r4, #2
    ldrh r1, [r0, #4]
    cmp r1, #0
    bne .pushR5
    ldr r1, [r0, #8]
    bx r1 ; keep lr from the caller
.pushR5:
    sub sp, #8
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*1]
    str r5, [sp, #4*2]
    mov r1, lr
    str r1, [sp, #4*3]
    mov r5, r0
    ldr r7, [r5, #8]
    blx r7 ; exec actual lambda
    ldr r4, [sp, #4*3] ; restore what was in LR
    ldr r5, [sp, #4*2] ; restore lambda ctx
    ldr r1, [sp, #4*0]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*3]
    add sp, #8
    bx r4
; end lambda call
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_5
_conv_5:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_6
_conv_6:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_7
_conv_7:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_8
_conv_8:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin3_validate_9
_inst_builtin3_validate_9:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #3
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_10
_conv_10:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0}
    ldr r3, [sp, #4*1] ; estack
    pop {pc}
.object PUSH
.balign 4
_ldlit_37:
 .word _pxt_bind_lit
_ldlit_38:
 .word _pxt_copy_list
.object POP
    @stackempty args
    .section code
    .object _code_helper__conv_11
_conv_11:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__expand_args_2_12
_expand_args_2_12:
    movs r0, #0
    movs r1, #0
    push {r0}
    cmp r4, #1
    blt .zero1
    ldr r0, [sp, #2*4]
    str r1, [sp, #2*4] ; clear existing
.zero1:
    push {r0}
    bx lr
    .section code
    .object _code_helper__conv_13
_conv_13:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    mov r1, r0      
    ldr r0, [sp, #4*2] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_MicrobitPin__C2334_validate_14
_inst_MicrobitPin__C2334_validate_14:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #16
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__ifacecall2__15
_ifacecall2__15:
    ldr r0, [sp, #0] ; ld-this
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    bne .fail2      
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check if it's getter
    ldrh r7, [r3, #2]
    cmp r7, #1
    beq .doublecall
    movs r4, #2
    bx r2
.doublecall:
; call getter
    movs r4, #1
    push {r0, lr}
    blx r2
    pop {r1, r2}
    mov lr, r2
    b .moveArgs
.objlit:
    ldrh r2, [r3, #8]
    cmp r2, #8
    bne .fail
    mov r4, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapGet
    mov lr, r4
    b .moveArgs
.field:
    ldr r0, [r0, r2] ; load field
.moveArgs:
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    movs r1, r0
    str r1, [sp, #4*1]
; lambda call
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    movs r4, #1
    ldrh r1, [r0, #4]
    cmp r1, #0
    bne .pushR5
    ldr r1, [r0, #8]
    bx r1 ; keep lr from the caller
.pushR5:
    sub sp, #8
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*0]
    str r5, [sp, #4*1]
    mov r1, lr
    str r1, [sp, #4*2]
    mov r5, r0
    ldr r7, [r5, #8]
    blx r7 ; exec actual lambda
    ldr r4, [sp, #4*2] ; restore what was in LR
    ldr r5, [sp, #4*1] ; restore lambda ctx
    ldr r1, [sp, #4*0]
    str r1, [sp, #4*2]
    add sp, #8
    bx r4
; end lambda call
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .section code
    .object _code_helper__conv_16
_conv_16:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__inst_builtin4_validate_17
_inst_builtin4_validate_17:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_numops_adds:
    @scope _numops_adds
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    adds r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::adds
                    add sp, #8
                    pop {pc}
_numops_subs:
    @scope _numops_subs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    subs r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::subs
                    add sp, #8
                    pop {pc}
_numops_ands:
    @scope _numops_ands
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ands r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::ands
                    add sp, #8
                    pop {pc}
_numops_orrs:
    @scope _numops_orrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    orrs r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::orrs
                    add sp, #8
                    pop {pc}
_numops_eors:
    @scope _numops_eors
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    eors r0, r1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::eors
                    add sp, #8
                    pop {pc}
_numops_lsls:
    @scope _numops_lsls
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsls r2, r3
    lsrs r3, r2, #30
    beq .ok
    cmp r3, #3
    bne .boxed
.ok:
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsls
                    add sp, #8
                    pop {pc}
_numops_lsrs:
    @scope _numops_lsrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsrs r2, r3
    lsrs r3, r2, #30
    bne .boxed
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsrs
                    add sp, #8
                    pop {pc}
_numops_asrs:
    @scope _numops_asrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r0, r3
    movs r2, #1
    orrs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::asrs
                    add sp, #8
                    pop {pc}
@scope _numops_toInt
_numops_toInt:
    asrs r0, r0, #1
    bcc .over
    blx lr
.over:
    lsls r0, r0, #1
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::toInt
pop {pc}
_numops_fromInt:
    lsls r2, r0, #1
    asrs r1, r2, #1
    cmp r0, r1
    bne .over2
    adds r0, r2, #1
    blx lr
.over2:
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::fromInt
pop {pc}
.section code
.object _pxt_helper_cmp_lt
_cmp_lt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    blt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::lt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_gt
_cmp_gt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bgt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::gt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_le
_cmp_le:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    ble .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::le
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_ge
_cmp_ge:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bge .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::ge
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eq
_cmp_eq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eqq
_cmp_eqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neq
_cmp_neq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neqq
_cmp_neqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
_helpers_end:
        .object MicrobitPin__C2334_VT
        .balign 4
MicrobitPin__C2334_VT:
        .short 8  ; size in bytes
        .byte 4, 249 ; magic
        .word MicrobitPin__C2334_IfaceVT
        .short 16 ; class-id
        .short 0 ; reserved
        .word 1101023518 ; hash-mult
        .word pxt::RefRecord_destroy@fn
        .word pxt::RefRecord_print@fn
        .word pxt::RefRecord_scan@fn
        .word pxt::RefRecord_gcsize@fn
        .word 0
        .balign 4
MicrobitPin__C2334_IfaceVT:
  .short 16, 22, 28, 10, 8, 6, 4, 2
  .short 3, 0 ; id
  .word 4
  .short 1, 2 ; digitalId
  .word MicrobitPin_digitalId__P3045_args@fn
  .short 2, 2 ; digitalWrite
  .word MicrobitPin_digitalWrite__P2338_args@fn
  .word 0, 0 ; the end
.balign 4
.object _pxt_iface_member_names
_pxt_iface_member_names:
    .word 4
    .word _str102  ; 0 .
    .word _str103  ; 1 .digitalId
    .word _str104  ; 2 .digitalWrite
    .word _str105  ; 3 .id
    .word 0
_vtables_end:
.balign 4
.object _pxt_config_data
_pxt_config_data:
    .word 0
            .balign 4
            .object _str102
_str102:
 .word pxt::string_inline_ascii_vt
    .short 0
    .string ""
            .balign 4
            .object _str103
_str103:
 .word pxt::string_inline_ascii_vt
    .short 9
    .string "digitalId"
            .balign 4
            .object _str104
_str104:
 .word pxt::string_inline_ascii_vt
    .short 12
    .string "digitalWrite"
            .balign 4
            .object _str105
_str105:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "id"
            .balign 4
            .object _str2
_str2:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "0"
            .balign 4
            .object _str3
_str3:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "1"
            .balign 4
            .object _str4
_str4:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "2"
            .balign 4
            .object _str5
_str5:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "3"
            .balign 4
            .object _str6
_str6:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "4"
            .balign 4
            .object _str7
_str7:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "5"
            .balign 4
            .object _str8
_str8:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "6"
            .balign 4
            .object _str9
_str9:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "7"
            .balign 4
            .object _str10
_str10:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "8"
            .balign 4
            .object _str11
_str11:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "9"
            .balign 4
            .object _str0
_str0:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "?"
            .balign 4
            .object _str1
_str1:
 .word pxt::string_inline_ascii_vt
    .short 106
    .string "solderbit_segment: You haven't selected an IO_Expander. Please invoke solderbit_segment.init(IO_Expander)."
            .balign 4
            .object _str12
_str12:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "."
            .balign 4
            .object _str13
_str13:
 .word pxt::string_inline_ascii_vt
    .short 71
    .string "solderbit_segment internal fn digit_lookup: error parsing single digit "
            .balign 4
            .object _str14
_str14:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T1S"
            .balign 4
            .object _str15
_str15:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T1E"
            .balign 4
            .object _str16
_str16:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T2S"
            .balign 4
            .object _str17
_str17:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T2E"
            .balign 4
            .object _str18
_str18:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T3S"
            .balign 4
            .object _str22
_str22:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "T3E"
            .balign 4
            .object _str23
_str23:
 .word pxt::string_inline_ascii_vt
    .short 17
    .string "solderbit-segment"
.object _dbl19
.balign 4
_dbl19:
 .word pxt::number_vt
        .hex 333333333333f33f
.object _dbl20
.balign 4
_dbl20:
 .word pxt::number_vt
        .hex 1f85eb51b81e0940
.object _dbl21
.balign 4
_dbl21:
 .word pxt::number_vt
        .hex 000080b48065d241
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:
