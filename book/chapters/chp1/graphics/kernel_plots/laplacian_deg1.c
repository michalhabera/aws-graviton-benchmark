
#include <cmath>
#include <cstdint>
#include <complex.h>
#define restrict __restrict__

constexpr int dim = 4;
constexpr int global_size = 10000000;
constexpr int kernel_rank = 1;
constexpr int num_nodes = 4;
constexpr int batch_size = 1;
constexpr int num_coefficients = 2;


using scalar_type=double;
using geom_type=double;
using namespace std;
void kernel(double* restrict A,
                   const double* restrict w,
                   const double* restrict c,
                   const double* restrict coordinate_dofs,
                   const int* restrict entity_local_index,
                   const uint8_t* restrict quadrature_permutation)
 {
// Quadrature rules
static const double weights_421[1] = {0.1666666666666667};
// Precomputed values of basis functions and precomputations
// FE* dimensions: [permutation][entities][points][dofs]
static const double FE0_C0_D100_Q421[1][1][1][4] = {{{{-1.0, 1.0, 0.0, 0.0}}}};
static const double FE0_C0_Q421[1][1][1][4] = {{{{0.25, 0.25, 0.25, 0.25}}}};
static const double FE1_C1_D010_Q421[1][1][1][4] = {{{{-1.0, 0.0, 1.0, 0.0}}}};
static const double FE1_C2_D001_Q421[1][1][1][4] = {{{{-1.0, 0.0, 0.0, 1.0}}}};
// ------------------------ 
// Section: Jacobian
// Inputs: FE1_C1_D010_Q421, FE0_C0_D100_Q421, coordinate_dofs, FE1_C2_D001_Q421
// Outputs: J_c8, J_c2, J_c7, J_c3, J_c5, J_c1, J_c4, J_c0, J_c6
double J_c4 = 0.0;
double J_c8 = 0.0;
double J_c5 = 0.0;
double J_c7 = 0.0;
double J_c0 = 0.0;
double J_c3 = 0.0;
double J_c6 = 0.0;
double J_c1 = 0.0;
double J_c2 = 0.0;
{
  for (int ic = 0; ic < 4; ++ic)
  {
    J_c4 += coordinate_dofs[(ic) * 3 + 1] * FE1_C1_D010_Q421[0][0][0][ic];
    J_c8 += coordinate_dofs[(ic) * 3 + 2] * FE1_C2_D001_Q421[0][0][0][ic];
    J_c5 += coordinate_dofs[(ic) * 3 + 1] * FE1_C2_D001_Q421[0][0][0][ic];
    J_c7 += coordinate_dofs[(ic) * 3 + 2] * FE1_C1_D010_Q421[0][0][0][ic];
    J_c0 += coordinate_dofs[(ic) * 3] * FE0_C0_D100_Q421[0][0][0][ic];
    J_c3 += coordinate_dofs[(ic) * 3 + 1] * FE0_C0_D100_Q421[0][0][0][ic];
    J_c6 += coordinate_dofs[(ic) * 3 + 2] * FE0_C0_D100_Q421[0][0][0][ic];
    J_c1 += coordinate_dofs[(ic) * 3] * FE1_C1_D010_Q421[0][0][0][ic];
    J_c2 += coordinate_dofs[(ic) * 3] * FE1_C2_D001_Q421[0][0][0][ic];
  }
}
// ------------------------ 
// ------------------------ 
// Section: Coefficient
// Inputs: FE0_C0_D100_Q421, FE0_C0_Q421, w, FE1_C1_D010_Q421, FE1_C2_D001_Q421
// Outputs: w1_d001, w1_d100, w0, w1_d010
double w1_d100 = 0.0;
double w1_d010 = 0.0;
double w1_d001 = 0.0;
double w0 = 0.0;
{
  for (int ic = 0; ic < 4; ++ic)
  {
    w1_d100 += w[4 + (ic)] * FE0_C0_D100_Q421[0][0][0][ic];
    w1_d010 += w[4 + (ic)] * FE1_C1_D010_Q421[0][0][0][ic];
    w1_d001 += w[4 + (ic)] * FE1_C2_D001_Q421[0][0][0][ic];
    w0 += w[ic] * FE0_C0_Q421[0][0][0][ic];
  }
}
// ------------------------ 
double sp_421_0 = J_c4 * J_c8;
double sp_421_1 = J_c5 * J_c7;
double sp_421_2 = -sp_421_1;
double sp_421_3 = sp_421_0 + sp_421_2;
double sp_421_4 = J_c0 * sp_421_3;
double sp_421_5 = J_c3 * J_c8;
double sp_421_6 = J_c5 * J_c6;
double sp_421_7 = -sp_421_6;
double sp_421_8 = sp_421_5 + sp_421_7;
double sp_421_9 = -J_c1;
double sp_421_10 = sp_421_8 * sp_421_9;
double sp_421_11 = sp_421_4 + sp_421_10;
double sp_421_12 = J_c3 * J_c7;
double sp_421_13 = J_c4 * J_c6;
double sp_421_14 = -sp_421_13;
double sp_421_15 = sp_421_12 + sp_421_14;
double sp_421_16 = J_c2 * sp_421_15;
double sp_421_17 = sp_421_11 + sp_421_16;
double sp_421_18 = sp_421_3 / sp_421_17;
double sp_421_19 = -J_c8;
double sp_421_20 = J_c3 * sp_421_19;
double sp_421_21 = sp_421_6 + sp_421_20;
double sp_421_22 = sp_421_21 / sp_421_17;
double sp_421_23 = sp_421_15 / sp_421_17;
double sp_421_24 = w1_d100 * sp_421_18;
double sp_421_25 = w1_d010 * sp_421_22;
double sp_421_26 = sp_421_24 + sp_421_25;
double sp_421_27 = w1_d001 * sp_421_23;
double sp_421_28 = sp_421_26 + sp_421_27;
double sp_421_29 = sp_421_28 * sp_421_18;
double sp_421_30 = sp_421_28 * sp_421_22;
double sp_421_31 = sp_421_28 * sp_421_23;
double sp_421_32 = J_c2 * J_c7;
double sp_421_33 = J_c8 * sp_421_9;
double sp_421_34 = sp_421_32 + sp_421_33;
double sp_421_35 = sp_421_34 / sp_421_17;
double sp_421_36 = J_c0 * J_c8;
double sp_421_37 = -J_c2;
double sp_421_38 = J_c6 * sp_421_37;
double sp_421_39 = sp_421_36 + sp_421_38;
double sp_421_40 = sp_421_39 / sp_421_17;
double sp_421_41 = J_c1 * J_c6;
double sp_421_42 = J_c0 * J_c7;
double sp_421_43 = -sp_421_42;
double sp_421_44 = sp_421_41 + sp_421_43;
double sp_421_45 = sp_421_44 / sp_421_17;
double sp_421_46 = w1_d100 * sp_421_35;
double sp_421_47 = w1_d010 * sp_421_40;
double sp_421_48 = sp_421_46 + sp_421_47;
double sp_421_49 = w1_d001 * sp_421_45;
double sp_421_50 = sp_421_48 + sp_421_49;
double sp_421_51 = sp_421_50 * sp_421_35;
double sp_421_52 = sp_421_50 * sp_421_40;
double sp_421_53 = sp_421_50 * sp_421_45;
double sp_421_54 = sp_421_51 + sp_421_29;
double sp_421_55 = sp_421_52 + sp_421_30;
double sp_421_56 = sp_421_31 + sp_421_53;
double sp_421_57 = J_c1 * J_c5;
double sp_421_58 = J_c2 * J_c4;
double sp_421_59 = -sp_421_58;
double sp_421_60 = sp_421_57 + sp_421_59;
double sp_421_61 = sp_421_60 / sp_421_17;
double sp_421_62 = J_c2 * J_c3;
double sp_421_63 = J_c0 * J_c5;
double sp_421_64 = -sp_421_63;
double sp_421_65 = sp_421_62 + sp_421_64;
double sp_421_66 = sp_421_65 / sp_421_17;
double sp_421_67 = J_c0 * J_c4;
double sp_421_68 = J_c1 * J_c3;
double sp_421_69 = -sp_421_68;
double sp_421_70 = sp_421_67 + sp_421_69;
double sp_421_71 = sp_421_70 / sp_421_17;
double sp_421_72 = w1_d100 * sp_421_61;
double sp_421_73 = w1_d010 * sp_421_66;
double sp_421_74 = sp_421_72 + sp_421_73;
double sp_421_75 = w1_d001 * sp_421_71;
double sp_421_76 = sp_421_74 + sp_421_75;
double sp_421_77 = sp_421_76 * sp_421_61;
double sp_421_78 = sp_421_76 * sp_421_66;
double sp_421_79 = sp_421_76 * sp_421_71;
double sp_421_80 = sp_421_54 + sp_421_77;
double sp_421_81 = sp_421_55 + sp_421_78;
double sp_421_82 = sp_421_56 + sp_421_79;
double sp_421_83 = sp_421_80 * w0;
double sp_421_84 = sp_421_81 * w0;
double sp_421_85 = sp_421_82 * w0;
double sp_421_86 = fabs(sp_421_17);
double sp_421_87 = sp_421_83 * sp_421_86;
double sp_421_88 = sp_421_84 * sp_421_86;
double sp_421_89 = sp_421_85 * sp_421_86;
for (int iq = 0; iq < 1; ++iq)
{
  // ------------------------ 
  // Section: Intermediates
  // Inputs: 
  // Outputs: fw0, fw1, fw2
  double fw0 = 0;
  double fw1 = 0;
  double fw2 = 0;
  {
    fw0 = sp_421_87 * weights_421[iq];
    fw1 = sp_421_88 * weights_421[iq];
    fw2 = sp_421_89 * weights_421[iq];
  }
  // ------------------------ 
  // ------------------------ 
  // Section: Tensor Computation
  // Inputs: fw1, FE0_C0_D100_Q421, fw2, FE1_C1_D010_Q421, fw0, FE1_C2_D001_Q421
  // Outputs: A
  {
    for (int i = 0; i < 4; ++i)
    {
      A[(i)] += fw0 * FE0_C0_D100_Q421[0][0][0][i];
      A[(i)] += fw1 * FE1_C1_D010_Q421[0][0][0][i];
      A[(i)] += fw2 * FE1_C2_D001_Q421[0][0][0][i];
    }
  }
  // ------------------------ 
}

}
