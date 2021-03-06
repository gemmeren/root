//===--- HexagonMapAsm2IntrinV62.gen.td -----------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

multiclass T_VR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, IntRegs:$src2),
           (MI VectorRegs:$src1, IntRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, IntRegs:$src2),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, IntRegs:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VVL_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VectorRegs:$src2, IntRegsLow8:$src3),
           (MI VectorRegs:$src1, VectorRegs:$src2, IntRegsLow8:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, IntRegsLow8:$src3),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, IntRegsLow8:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VV_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VectorRegs:$src2),
           (MI VectorRegs:$src1, VectorRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_WW_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecDblRegs:$src1, VecDblRegs:$src2),
           (MI VecDblRegs:$src1, VecDblRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecDblRegs128B:$src1, VecDblRegs128B:$src2),
           (!cast<InstHexagon>(MI#"_128B") VecDblRegs128B:$src1, VecDblRegs128B:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_WVV_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecDblRegs:$src1, VectorRegs:$src2, VectorRegs:$src3),
           (MI VecDblRegs:$src1, VectorRegs:$src2, VectorRegs:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecDblRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3),
           (!cast<InstHexagon>(MI#"_128B") VecDblRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_WR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecDblRegs:$src1, IntRegs:$src2),
           (MI VecDblRegs:$src1, IntRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecDblRegs128B:$src1, IntRegs:$src2),
           (!cast<InstHexagon>(MI#"_128B") VecDblRegs128B:$src1, IntRegs:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_WWR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecDblRegs:$src1, VecDblRegs:$src2, IntRegs:$src3),
           (MI VecDblRegs:$src1, VecDblRegs:$src2, IntRegs:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecDblRegs128B:$src1, VecDblRegs128B:$src2, IntRegs:$src3),
           (!cast<InstHexagon>(MI#"_128B") VecDblRegs128B:$src1, VecDblRegs128B:$src2, IntRegs:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VVR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VectorRegs:$src2, IntRegs:$src3),
           (MI VectorRegs:$src1, VectorRegs:$src2, IntRegs:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, IntRegs:$src3),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, IntRegs:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_ZR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecPredRegs:$src1, IntRegs:$src2),
           (MI VecPredRegs:$src1, IntRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecPredRegs128B:$src1, IntRegs:$src2),
           (!cast<InstHexagon>(MI#"_128B") VecPredRegs128B:$src1, IntRegs:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VZR_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VecPredRegs:$src2, IntRegs:$src3),
           (MI VectorRegs:$src1, VecPredRegs:$src2, IntRegs:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VecPredRegs128B:$src2, IntRegs:$src3),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VecPredRegs128B:$src2, IntRegs:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_ZV_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecPredRegs:$src1, VectorRegs:$src2),
           (MI VecPredRegs:$src1, VectorRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecPredRegs128B:$src1, VectorRegs128B:$src2),
           (!cast<InstHexagon>(MI#"_128B") VecPredRegs128B:$src1, VectorRegs128B:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_R_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID IntRegs:$src1),
           (MI IntRegs:$src1)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") IntRegs:$src1),
           (!cast<InstHexagon>(MI#"_128B") IntRegs:$src1)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_ZZ_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecPredRegs:$src1, VecPredRegs:$src2),
           (MI VecPredRegs:$src1, VecPredRegs:$src2)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecPredRegs128B:$src1, VecPredRegs128B:$src2),
           (!cast<InstHexagon>(MI#"_128B") VecPredRegs128B:$src1, VecPredRegs128B:$src2)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VVI_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VectorRegs:$src2, imm:$src3),
           (MI VectorRegs:$src1, VectorRegs:$src2, imm:$src3)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, imm:$src3),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, imm:$src3)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_VVVI_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VectorRegs:$src1, VectorRegs:$src2, VectorRegs:$src3, imm:$src4),
           (MI VectorRegs:$src1, VectorRegs:$src2, VectorRegs:$src3, imm:$src4)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3, imm:$src4),
           (!cast<InstHexagon>(MI#"_128B") VectorRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3, imm:$src4)>,
       Requires<[UseHVXDbl]>;
}

multiclass T_WVVI_HVX_gen_pat <InstHexagon MI, Intrinsic IntID> {
  def: Pat<(IntID VecDblRegs:$src1, VectorRegs:$src2, VectorRegs:$src3, imm:$src4),
           (MI VecDblRegs:$src1, VectorRegs:$src2, VectorRegs:$src3, imm:$src4)>,
       Requires<[UseHVXSgl]>;
  def: Pat<(!cast<Intrinsic>(IntID#"_128B") VecDblRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3, imm:$src4),
           (!cast<InstHexagon>(MI#"_128B") VecDblRegs128B:$src1, VectorRegs128B:$src2, VectorRegs128B:$src3, imm:$src4)>,
       Requires<[UseHVXDbl]>;
}

def : T_R_pat <S6_vsplatrbp, int_hexagon_S6_vsplatrbp>;
def : T_PP_pat <M6_vabsdiffb, int_hexagon_M6_vabsdiffb>;
def : T_PP_pat <M6_vabsdiffub, int_hexagon_M6_vabsdiffub>;
def : T_PP_pat <S6_vtrunehb_ppp, int_hexagon_S6_vtrunehb_ppp>;
def : T_PP_pat <S6_vtrunohb_ppp, int_hexagon_S6_vtrunohb_ppp>;

defm : T_VR_HVX_gen_pat <V6_vlsrb, int_hexagon_V6_vlsrb>;
defm : T_VR_HVX_gen_pat <V6_vmpyiwub, int_hexagon_V6_vmpyiwub>;
defm : T_VVL_HVX_gen_pat <V6_vasrwuhrndsat, int_hexagon_V6_vasrwuhrndsat>;
defm : T_VVL_HVX_gen_pat <V6_vasruwuhrndsat, int_hexagon_V6_vasruwuhrndsat>;
defm : T_VVL_HVX_gen_pat <V6_vasrhbsat, int_hexagon_V6_vasrhbsat>;
defm : T_VVL_HVX_gen_pat <V6_vlutvvb_nm, int_hexagon_V6_vlutvvb_nm>;
defm : T_VVL_HVX_gen_pat <V6_vlutvwh_nm, int_hexagon_V6_vlutvwh_nm>;
defm : T_VV_HVX_gen_pat <V6_vrounduwuh, int_hexagon_V6_vrounduwuh>;
defm : T_VV_HVX_gen_pat <V6_vrounduhub, int_hexagon_V6_vrounduhub>;
defm : T_VV_HVX_gen_pat <V6_vadduwsat, int_hexagon_V6_vadduwsat>;
defm : T_VV_HVX_gen_pat <V6_vsubuwsat, int_hexagon_V6_vsubuwsat>;
defm : T_VV_HVX_gen_pat <V6_vaddbsat, int_hexagon_V6_vaddbsat>;
defm : T_VV_HVX_gen_pat <V6_vsubbsat, int_hexagon_V6_vsubbsat>;
defm : T_VV_HVX_gen_pat <V6_vaddububb_sat, int_hexagon_V6_vaddububb_sat>;
defm : T_VV_HVX_gen_pat <V6_vsubububb_sat, int_hexagon_V6_vsubububb_sat>;
defm : T_VV_HVX_gen_pat <V6_vmpyewuh_64, int_hexagon_V6_vmpyewuh_64>;
defm : T_VV_HVX_gen_pat <V6_vmaxb, int_hexagon_V6_vmaxb>;
defm : T_VV_HVX_gen_pat <V6_vminb, int_hexagon_V6_vminb>;
defm : T_VV_HVX_gen_pat <V6_vsatuwuh, int_hexagon_V6_vsatuwuh>;
defm : T_VV_HVX_gen_pat <V6_vaddclbw, int_hexagon_V6_vaddclbw>;
defm : T_VV_HVX_gen_pat <V6_vaddclbh, int_hexagon_V6_vaddclbh>;
defm : T_WW_HVX_gen_pat <V6_vadduwsat_dv, int_hexagon_V6_vadduwsat_dv>;
defm : T_WW_HVX_gen_pat <V6_vsubuwsat_dv, int_hexagon_V6_vsubuwsat_dv>;
defm : T_WW_HVX_gen_pat <V6_vaddbsat_dv, int_hexagon_V6_vaddbsat_dv>;
defm : T_WW_HVX_gen_pat <V6_vsubbsat_dv, int_hexagon_V6_vsubbsat_dv>;
defm : T_WVV_HVX_gen_pat <V6_vaddhw_acc, int_hexagon_V6_vaddhw_acc>;
defm : T_WVV_HVX_gen_pat <V6_vadduhw_acc, int_hexagon_V6_vadduhw_acc>;
defm : T_WVV_HVX_gen_pat <V6_vaddubh_acc, int_hexagon_V6_vaddubh_acc>;
defm : T_WVV_HVX_gen_pat <V6_vmpyowh_64_acc, int_hexagon_V6_vmpyowh_64_acc>;
defm : T_WR_HVX_gen_pat <V6_vmpauhb, int_hexagon_V6_vmpauhb>;
defm : T_WWR_HVX_gen_pat <V6_vmpauhb_acc, int_hexagon_V6_vmpauhb_acc>;
defm : T_VVR_HVX_gen_pat <V6_vmpyiwub_acc, int_hexagon_V6_vmpyiwub_acc>;
defm : T_ZR_HVX_gen_pat <V6_vandnqrt, int_hexagon_V6_vandnqrt>;
defm : T_VZR_HVX_gen_pat <V6_vandnqrt_acc, int_hexagon_V6_vandnqrt_acc>;
defm : T_ZV_HVX_gen_pat <V6_vandvqv, int_hexagon_V6_vandvqv>;
defm : T_ZV_HVX_gen_pat <V6_vandvnqv, int_hexagon_V6_vandvnqv>;
defm : T_R_HVX_gen_pat <V6_pred_scalar2v2, int_hexagon_V6_pred_scalar2v2>;
defm : T_R_HVX_gen_pat <V6_lvsplath, int_hexagon_V6_lvsplath>;
defm : T_R_HVX_gen_pat <V6_lvsplatb, int_hexagon_V6_lvsplatb>;
defm : T_ZZ_HVX_gen_pat <V6_shuffeqw, int_hexagon_V6_shuffeqw>;
defm : T_ZZ_HVX_gen_pat <V6_shuffeqh, int_hexagon_V6_shuffeqh>;
defm : T_VVI_HVX_gen_pat <V6_vlutvvbi, int_hexagon_V6_vlutvvbi>;
defm : T_VVI_HVX_gen_pat <V6_vlutvwhi, int_hexagon_V6_vlutvwhi>;
defm : T_VVVI_HVX_gen_pat <V6_vlutvvb_oracci, int_hexagon_V6_vlutvvb_oracci>;
defm : T_WVVI_HVX_gen_pat <V6_vlutvwh_oracci, int_hexagon_V6_vlutvwh_oracci>;
