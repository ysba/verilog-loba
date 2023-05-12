/* Generated by Yosys 0.24 (git sha1 313b7997b50, gcc 12.2.1 -march=x86-64 -mtune=generic -O2 -fno-plt -fexceptions -fstack-clash-protection -fcf-protection -ffile-prefix-map=/build/yosys/src=/usr/src/debug/yosys -fPIC -Os) */
module LOBA0Y(A, B, P);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  input [15:0] A;
  wire [15:0] A;
  input [15:0] B;
  wire [15:0] B;
  output [31:0] P;
  wire [31:0] P;
  wire [3:0] \split_a.Xh ;
  wire [15:0] \split_a.lobd1.out_a ;
  wire [3:0] \split_b.Xh ;
  wire [15:0] \split_b.lobd1.out_a ;
  INV_X1 _075_ (
    .I(B[14]),
    .ZN(_046_)
  );
  INV_X1 _076_ (
    .I(B[13]),
    .ZN(_047_)
  );
  INV_X1 _077_ (
    .I(B[12]),
    .ZN(_048_)
  );
  INV_X1 _078_ (
    .I(B[11]),
    .ZN(_049_)
  );
  INV_X1 _079_ (
    .I(B[10]),
    .ZN(_050_)
  );
  INV_X1 _080_ (
    .I(B[8]),
    .ZN(_051_)
  );
  INV_X1 _081_ (
    .I(B[7]),
    .ZN(_052_)
  );
  INV_X1 _082_ (
    .I(B[5]),
    .ZN(_053_)
  );
  INV_X1 _083_ (
    .I(A[14]),
    .ZN(_054_)
  );
  INV_X1 _084_ (
    .I(A[13]),
    .ZN(_055_)
  );
  INV_X1 _085_ (
    .I(A[12]),
    .ZN(_056_)
  );
  INV_X1 _086_ (
    .I(A[11]),
    .ZN(_057_)
  );
  INV_X1 _087_ (
    .I(A[10]),
    .ZN(_058_)
  );
  INV_X1 _088_ (
    .I(A[8]),
    .ZN(_059_)
  );
  INV_X1 _089_ (
    .I(A[7]),
    .ZN(_060_)
  );
  INV_X1 _090_ (
    .I(A[5]),
    .ZN(_061_)
  );
  NOR4_X1 _091_ (
    .A1(B[15]),
    .A2(B[14]),
    .A3(B[13]),
    .A4(_048_),
    .ZN(\split_b.lobd1.out_a [12])
  );
  NOR2_X1 _092_ (
    .A1(B[15]),
    .A2(_046_),
    .ZN(\split_b.lobd1.out_a [14])
  );
  NOR3_X1 _093_ (
    .A1(B[15]),
    .A2(B[14]),
    .A3(_047_),
    .ZN(\split_b.lobd1.out_a [13])
  );
  NOR4_X1 _094_ (
    .A1(B[15]),
    .A2(B[14]),
    .A3(B[13]),
    .A4(B[12]),
    .ZN(_062_)
  );
  NAND2_X1 _095_ (
    .A1(_049_),
    .A2(_062_),
    .ZN(_063_)
  );
  AND4_X1 _096_ (
    .A1(_049_),
    .A2(_050_),
    .A3(B[9]),
    .A4(_062_),
    .Z(\split_b.lobd1.out_a [9])
  );
  NOR2_X1 _097_ (
    .A1(_050_),
    .A2(_063_),
    .ZN(\split_b.lobd1.out_a [10])
  );
  AND2_X1 _098_ (
    .A1(B[11]),
    .A2(_062_),
    .Z(\split_b.lobd1.out_a [11])
  );
  NOR3_X1 _099_ (
    .A1(B[10]),
    .A2(B[9]),
    .A3(_063_),
    .ZN(_064_)
  );
  NAND2_X1 _100_ (
    .A1(_051_),
    .A2(_064_),
    .ZN(_065_)
  );
  NOR4_X1 _101_ (
    .A1(B[7]),
    .A2(B[6]),
    .A3(_053_),
    .A4(_065_),
    .ZN(\split_b.lobd1.out_a [5])
  );
  AND4_X1 _102_ (
    .A1(_051_),
    .A2(_052_),
    .A3(B[6]),
    .A4(_064_),
    .Z(\split_b.lobd1.out_a [6])
  );
  AND2_X1 _103_ (
    .A1(B[8]),
    .A2(_064_),
    .Z(\split_b.lobd1.out_a [8])
  );
  NOR2_X1 _104_ (
    .A1(_052_),
    .A2(_065_),
    .ZN(\split_b.lobd1.out_a [7])
  );
  AND2_X1 _105_ (
    .A1(\split_b.Xh [0]),
    .A2(\split_a.Xh [0]),
    .Z(P[4])
  );
  NAND2_X1 _106_ (
    .A1(\split_a.Xh [0]),
    .A2(\split_b.Xh [1]),
    .ZN(_066_)
  );
  NAND2_X1 _107_ (
    .A1(\split_b.Xh [0]),
    .A2(\split_a.Xh [1]),
    .ZN(_067_)
  );
  XOR2_X1 _108_ (
    .A1(_066_),
    .A2(_067_),
    .Z(P[5])
  );
  NAND2_X1 _109_ (
    .A1(\split_a.Xh [0]),
    .A2(\split_b.Xh [2]),
    .ZN(_068_)
  );
  AND4_X1 _110_ (
    .A1(\split_b.Xh [0]),
    .A2(\split_a.Xh [1]),
    .A3(\split_b.Xh [1]),
    .A4(\split_a.Xh [2]),
    .Z(_069_)
  );
  AOI22_X1 _111_ (
    .A1(\split_a.Xh [1]),
    .A2(\split_b.Xh [1]),
    .B1(\split_a.Xh [2]),
    .B2(\split_b.Xh [0]),
    .ZN(_070_)
  );
  OR4_X1 _112_ (
    .A1(_066_),
    .A2(_067_),
    .A3(_069_),
    .A4(_070_),
    .Z(_071_)
  );
  OAI22_X1 _113_ (
    .A1(_066_),
    .A2(_067_),
    .B1(_069_),
    .B2(_070_),
    .ZN(_072_)
  );
  INV_X1 _114_ (
    .I(_072_),
    .ZN(_073_)
  );
  AND2_X1 _115_ (
    .A1(_071_),
    .A2(_072_),
    .Z(_074_)
  );
  XNOR2_X1 _116_ (
    .A1(_068_),
    .A2(_074_),
    .ZN(P[6])
  );
  OAI21_X1 _117_ (
    .A1(_068_),
    .A2(_073_),
    .B(_071_),
    .ZN(_000_)
  );
  NAND2_X1 _118_ (
    .A1(\split_a.Xh [1]),
    .A2(\split_b.Xh [2]),
    .ZN(_001_)
  );
  NAND2_X1 _119_ (
    .A1(\split_a.Xh [0]),
    .A2(\split_b.Xh [3]),
    .ZN(_002_)
  );
  AND4_X1 _120_ (
    .A1(\split_b.Xh [0]),
    .A2(\split_b.Xh [1]),
    .A3(\split_a.Xh [2]),
    .A4(\split_a.Xh [3]),
    .Z(_003_)
  );
  NAND4_X1 _121_ (
    .A1(\split_b.Xh [0]),
    .A2(\split_b.Xh [1]),
    .A3(\split_a.Xh [2]),
    .A4(\split_a.Xh [3]),
    .ZN(_004_)
  );
  AOI22_X1 _122_ (
    .A1(\split_b.Xh [1]),
    .A2(\split_a.Xh [2]),
    .B1(\split_a.Xh [3]),
    .B2(\split_b.Xh [0]),
    .ZN(_005_)
  );
  OAI21_X1 _123_ (
    .A1(_003_),
    .A2(_005_),
    .B(_002_),
    .ZN(_006_)
  );
  OR3_X1 _124_ (
    .A1(_002_),
    .A2(_003_),
    .A3(_005_),
    .Z(_007_)
  );
  AND3_X1 _125_ (
    .A1(_069_),
    .A2(_006_),
    .A3(_007_),
    .Z(_008_)
  );
  AOI21_X1 _126_ (
    .A1(_006_),
    .A2(_007_),
    .B(_069_),
    .ZN(_009_)
  );
  OAI21_X1 _127_ (
    .A1(_008_),
    .A2(_009_),
    .B(_001_),
    .ZN(_010_)
  );
  NOR3_X1 _128_ (
    .A1(_001_),
    .A2(_008_),
    .A3(_009_),
    .ZN(_011_)
  );
  OR3_X1 _129_ (
    .A1(_001_),
    .A2(_008_),
    .A3(_009_),
    .Z(_012_)
  );
  NAND2_X1 _130_ (
    .A1(_010_),
    .A2(_012_),
    .ZN(_013_)
  );
  NAND3_X1 _131_ (
    .A1(_000_),
    .A2(_010_),
    .A3(_012_),
    .ZN(_014_)
  );
  XNOR2_X1 _132_ (
    .A1(_000_),
    .A2(_013_),
    .ZN(P[7])
  );
  NOR2_X1 _133_ (
    .A1(_008_),
    .A2(_011_),
    .ZN(_015_)
  );
  NAND2_X1 _134_ (
    .A1(\split_a.Xh [2]),
    .A2(\split_b.Xh [2]),
    .ZN(_016_)
  );
  OAI21_X1 _135_ (
    .A1(_002_),
    .A2(_005_),
    .B(_004_),
    .ZN(_017_)
  );
  AND4_X1 _136_ (
    .A1(\split_a.Xh [1]),
    .A2(\split_b.Xh [1]),
    .A3(\split_a.Xh [3]),
    .A4(\split_b.Xh [3]),
    .Z(_018_)
  );
  AOI22_X1 _137_ (
    .A1(\split_b.Xh [1]),
    .A2(\split_a.Xh [3]),
    .B1(\split_b.Xh [3]),
    .B2(\split_a.Xh [1]),
    .ZN(_019_)
  );
  NOR2_X1 _138_ (
    .A1(_018_),
    .A2(_019_),
    .ZN(_020_)
  );
  AND2_X1 _139_ (
    .A1(_017_),
    .A2(_020_),
    .Z(_021_)
  );
  XNOR2_X1 _140_ (
    .A1(_017_),
    .A2(_020_),
    .ZN(_022_)
  );
  NOR2_X1 _141_ (
    .A1(_016_),
    .A2(_022_),
    .ZN(_023_)
  );
  XOR2_X1 _142_ (
    .A1(_016_),
    .A2(_022_),
    .Z(_024_)
  );
  OAI21_X1 _143_ (
    .A1(_008_),
    .A2(_011_),
    .B(_024_),
    .ZN(_025_)
  );
  NOR3_X1 _144_ (
    .A1(_008_),
    .A2(_011_),
    .A3(_024_),
    .ZN(_026_)
  );
  XNOR2_X1 _145_ (
    .A1(_015_),
    .A2(_024_),
    .ZN(_027_)
  );
  XNOR2_X1 _146_ (
    .A1(_014_),
    .A2(_027_),
    .ZN(P[8])
  );
  OAI21_X1 _147_ (
    .A1(_014_),
    .A2(_026_),
    .B(_025_),
    .ZN(_028_)
  );
  NAND2_X1 _148_ (
    .A1(\split_b.Xh [2]),
    .A2(\split_a.Xh [3]),
    .ZN(_029_)
  );
  NAND2_X1 _149_ (
    .A1(\split_a.Xh [2]),
    .A2(_018_),
    .ZN(_030_)
  );
  AND2_X1 _150_ (
    .A1(\split_a.Xh [2]),
    .A2(\split_b.Xh [3]),
    .Z(_031_)
  );
  OAI21_X1 _151_ (
    .A1(_018_),
    .A2(_031_),
    .B(_030_),
    .ZN(_032_)
  );
  NOR2_X1 _152_ (
    .A1(_029_),
    .A2(_032_),
    .ZN(_033_)
  );
  XOR2_X1 _153_ (
    .A1(_029_),
    .A2(_032_),
    .Z(_034_)
  );
  OAI21_X1 _154_ (
    .A1(_021_),
    .A2(_023_),
    .B(_034_),
    .ZN(_035_)
  );
  INV_X1 _155_ (
    .I(_035_),
    .ZN(_036_)
  );
  OR3_X1 _156_ (
    .A1(_021_),
    .A2(_023_),
    .A3(_034_),
    .Z(_037_)
  );
  NAND2_X1 _157_ (
    .A1(_035_),
    .A2(_037_),
    .ZN(_038_)
  );
  XNOR2_X1 _158_ (
    .A1(_028_),
    .A2(_038_),
    .ZN(P[9])
  );
  AOI21_X1 _159_ (
    .A1(_028_),
    .A2(_037_),
    .B(_036_),
    .ZN(_039_)
  );
  AOI21_X1 _160_ (
    .A1(\split_a.Xh [2]),
    .A2(_018_),
    .B(_033_),
    .ZN(_040_)
  );
  NAND3_X1 _161_ (
    .A1(\split_a.Xh [3]),
    .A2(\split_b.Xh [3]),
    .A3(_040_),
    .ZN(_041_)
  );
  XOR2_X1 _162_ (
    .A1(_039_),
    .A2(_041_),
    .Z(P[10])
  );
  OAI21_X1 _163_ (
    .A1(_039_),
    .A2(_041_),
    .B(_040_),
    .ZN(P[11])
  );
  NOR2_X1 _164_ (
    .A1(_054_),
    .A2(A[15]),
    .ZN(\split_a.lobd1.out_a [14])
  );
  NOR4_X1 _165_ (
    .A1(A[14]),
    .A2(A[15]),
    .A3(A[13]),
    .A4(A[12]),
    .ZN(_042_)
  );
  AND2_X1 _166_ (
    .A1(A[11]),
    .A2(_042_),
    .Z(\split_a.lobd1.out_a [11])
  );
  NOR4_X1 _167_ (
    .A1(A[14]),
    .A2(A[15]),
    .A3(A[13]),
    .A4(_056_),
    .ZN(\split_a.lobd1.out_a [12])
  );
  NOR3_X1 _168_ (
    .A1(A[14]),
    .A2(A[15]),
    .A3(_055_),
    .ZN(\split_a.lobd1.out_a [13])
  );
  NAND2_X1 _169_ (
    .A1(_057_),
    .A2(_042_),
    .ZN(_043_)
  );
  NOR3_X1 _170_ (
    .A1(A[10]),
    .A2(A[9]),
    .A3(_043_),
    .ZN(_044_)
  );
  NAND2_X1 _171_ (
    .A1(_059_),
    .A2(_044_),
    .ZN(_045_)
  );
  NOR4_X1 _172_ (
    .A1(A[7]),
    .A2(A[6]),
    .A3(_061_),
    .A4(_045_),
    .ZN(\split_a.lobd1.out_a [5])
  );
  AND4_X1 _173_ (
    .A1(_059_),
    .A2(_060_),
    .A3(A[6]),
    .A4(_044_),
    .Z(\split_a.lobd1.out_a [6])
  );
  NOR2_X1 _174_ (
    .A1(_060_),
    .A2(_045_),
    .ZN(\split_a.lobd1.out_a [7])
  );
  AND2_X1 _175_ (
    .A1(A[8]),
    .A2(_044_),
    .Z(\split_a.lobd1.out_a [8])
  );
  AND4_X1 _176_ (
    .A1(_057_),
    .A2(_058_),
    .A3(A[9]),
    .A4(_042_),
    .Z(\split_a.lobd1.out_a [9])
  );
  NOR2_X1 _177_ (
    .A1(_058_),
    .A2(_043_),
    .ZN(\split_a.lobd1.out_a [10])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _178_ */ (
    .D(B[3]),
    .E(\split_b.lobd1.out_a [5]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _179_ */ (
    .D(B[4]),
    .E(\split_b.lobd1.out_a [5]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _180_ */ (
    .D(B[5]),
    .E(\split_b.lobd1.out_a [5]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _181_ */ (
    .D(B[6]),
    .E(\split_b.lobd1.out_a [9]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _182_ */ (
    .D(B[7]),
    .E(\split_b.lobd1.out_a [9]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _183_ */ (
    .D(B[8]),
    .E(\split_b.lobd1.out_a [9]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _184_ */ (
    .D(B[9]),
    .E(\split_b.lobd1.out_a [9]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _185_ */ (
    .D(B[7]),
    .E(\split_b.lobd1.out_a [10]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _186_ */ (
    .D(B[8]),
    .E(\split_b.lobd1.out_a [10]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _187_ */ (
    .D(B[9]),
    .E(\split_b.lobd1.out_a [10]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _188_ */ (
    .D(B[10]),
    .E(\split_b.lobd1.out_a [10]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _189_ */ (
    .D(B[8]),
    .E(\split_b.lobd1.out_a [11]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _190_ */ (
    .D(B[9]),
    .E(\split_b.lobd1.out_a [11]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _191_ */ (
    .D(B[10]),
    .E(\split_b.lobd1.out_a [11]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _192_ */ (
    .D(B[11]),
    .E(\split_b.lobd1.out_a [11]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _193_ */ (
    .D(B[3]),
    .E(\split_b.lobd1.out_a [6]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _194_ */ (
    .D(B[4]),
    .E(\split_b.lobd1.out_a [6]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _195_ */ (
    .D(B[5]),
    .E(\split_b.lobd1.out_a [6]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _196_ */ (
    .D(B[6]),
    .E(\split_b.lobd1.out_a [6]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _197_ */ (
    .D(A[12]),
    .E(A[15]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _198_ */ (
    .D(A[13]),
    .E(A[15]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _199_ */ (
    .D(A[14]),
    .E(A[15]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _200_ */ (
    .D(A[15]),
    .E(A[15]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _201_ */ (
    .D(A[11]),
    .E(\split_a.lobd1.out_a [14]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _202_ */ (
    .D(A[12]),
    .E(\split_a.lobd1.out_a [14]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _203_ */ (
    .D(A[13]),
    .E(\split_a.lobd1.out_a [14]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _204_ */ (
    .D(A[14]),
    .E(\split_a.lobd1.out_a [14]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _205_ */ (
    .D(A[10]),
    .E(\split_a.lobd1.out_a [13]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _206_ */ (
    .D(A[11]),
    .E(\split_a.lobd1.out_a [13]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _207_ */ (
    .D(A[12]),
    .E(\split_a.lobd1.out_a [13]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _208_ */ (
    .D(A[13]),
    .E(\split_a.lobd1.out_a [13]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _209_ */ (
    .D(A[9]),
    .E(\split_a.lobd1.out_a [12]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _210_ */ (
    .D(A[10]),
    .E(\split_a.lobd1.out_a [12]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _211_ */ (
    .D(A[11]),
    .E(\split_a.lobd1.out_a [12]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _212_ */ (
    .D(A[12]),
    .E(\split_a.lobd1.out_a [12]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _213_ */ (
    .D(A[8]),
    .E(\split_a.lobd1.out_a [11]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _214_ */ (
    .D(A[9]),
    .E(\split_a.lobd1.out_a [11]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _215_ */ (
    .D(A[10]),
    .E(\split_a.lobd1.out_a [11]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _216_ */ (
    .D(A[11]),
    .E(\split_a.lobd1.out_a [11]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _217_ */ (
    .D(A[7]),
    .E(\split_a.lobd1.out_a [10]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _218_ */ (
    .D(A[8]),
    .E(\split_a.lobd1.out_a [10]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _219_ */ (
    .D(A[9]),
    .E(\split_a.lobd1.out_a [10]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _220_ */ (
    .D(A[10]),
    .E(\split_a.lobd1.out_a [10]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _221_ */ (
    .D(A[6]),
    .E(\split_a.lobd1.out_a [9]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _222_ */ (
    .D(A[7]),
    .E(\split_a.lobd1.out_a [9]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _223_ */ (
    .D(A[8]),
    .E(\split_a.lobd1.out_a [9]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _224_ */ (
    .D(A[9]),
    .E(\split_a.lobd1.out_a [9]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _225_ */ (
    .D(A[4]),
    .E(\split_a.lobd1.out_a [7]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _226_ */ (
    .D(A[5]),
    .E(\split_a.lobd1.out_a [7]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _227_ */ (
    .D(A[6]),
    .E(\split_a.lobd1.out_a [7]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _228_ */ (
    .D(A[7]),
    .E(\split_a.lobd1.out_a [7]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _229_ */ (
    .D(A[5]),
    .E(\split_a.lobd1.out_a [8]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _230_ */ (
    .D(A[6]),
    .E(\split_a.lobd1.out_a [8]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _231_ */ (
    .D(A[7]),
    .E(\split_a.lobd1.out_a [8]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _232_ */ (
    .D(A[8]),
    .E(\split_a.lobd1.out_a [8]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _233_ */ (
    .D(A[3]),
    .E(\split_a.lobd1.out_a [6]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _234_ */ (
    .D(A[4]),
    .E(\split_a.lobd1.out_a [6]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _235_ */ (
    .D(A[5]),
    .E(\split_a.lobd1.out_a [6]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _236_ */ (
    .D(A[6]),
    .E(\split_a.lobd1.out_a [6]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[0]  /* _237_ */ (
    .D(A[2]),
    .E(\split_a.lobd1.out_a [5]),
    .Q(\split_a.Xh [0])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[1]  /* _238_ */ (
    .D(A[3]),
    .E(\split_a.lobd1.out_a [5]),
    .Q(\split_a.Xh [1])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[2]  /* _239_ */ (
    .D(A[4]),
    .E(\split_a.lobd1.out_a [5]),
    .Q(\split_a.Xh [2])
  );
  \$_DLATCH_P_  \split_a.Xh_reg[3]  /* _240_ */ (
    .D(A[5]),
    .E(\split_a.lobd1.out_a [5]),
    .Q(\split_a.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _241_ */ (
    .D(B[12]),
    .E(B[15]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _242_ */ (
    .D(B[13]),
    .E(B[15]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _243_ */ (
    .D(B[14]),
    .E(B[15]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _244_ */ (
    .D(B[15]),
    .E(B[15]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _245_ */ (
    .D(B[11]),
    .E(\split_b.lobd1.out_a [14]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _246_ */ (
    .D(B[12]),
    .E(\split_b.lobd1.out_a [14]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _247_ */ (
    .D(B[13]),
    .E(\split_b.lobd1.out_a [14]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _248_ */ (
    .D(B[14]),
    .E(\split_b.lobd1.out_a [14]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _249_ */ (
    .D(B[9]),
    .E(\split_b.lobd1.out_a [12]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _250_ */ (
    .D(B[10]),
    .E(\split_b.lobd1.out_a [12]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _251_ */ (
    .D(B[11]),
    .E(\split_b.lobd1.out_a [12]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _252_ */ (
    .D(B[12]),
    .E(\split_b.lobd1.out_a [12]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _253_ */ (
    .D(B[10]),
    .E(\split_b.lobd1.out_a [13]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _254_ */ (
    .D(B[11]),
    .E(\split_b.lobd1.out_a [13]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _255_ */ (
    .D(B[12]),
    .E(\split_b.lobd1.out_a [13]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _256_ */ (
    .D(B[13]),
    .E(\split_b.lobd1.out_a [13]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _257_ */ (
    .D(B[4]),
    .E(\split_b.lobd1.out_a [7]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _258_ */ (
    .D(B[5]),
    .E(\split_b.lobd1.out_a [7]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _259_ */ (
    .D(B[6]),
    .E(\split_b.lobd1.out_a [7]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _260_ */ (
    .D(B[7]),
    .E(\split_b.lobd1.out_a [7]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _261_ */ (
    .D(B[5]),
    .E(\split_b.lobd1.out_a [8]),
    .Q(\split_b.Xh [0])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[1]  /* _262_ */ (
    .D(B[6]),
    .E(\split_b.lobd1.out_a [8]),
    .Q(\split_b.Xh [1])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[2]  /* _263_ */ (
    .D(B[7]),
    .E(\split_b.lobd1.out_a [8]),
    .Q(\split_b.Xh [2])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[3]  /* _264_ */ (
    .D(B[8]),
    .E(\split_b.lobd1.out_a [8]),
    .Q(\split_b.Xh [3])
  );
  \$_DLATCH_P_  \split_b.Xh_reg[0]  /* _265_ */ (
    .D(B[2]),
    .E(\split_b.lobd1.out_a [5]),
    .Q(\split_b.Xh [0])
  );
  assign { P[31:12], P[3:0] } = 24'h000000;
  assign { \split_a.lobd1.out_a [15], \split_a.lobd1.out_a [4:0] } = { A[15], 5'hxx };
  assign { \split_b.lobd1.out_a [15], \split_b.lobd1.out_a [4:0] } = { B[15], 5'hxx };
endmodule