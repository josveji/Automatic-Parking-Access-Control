/* Generated by Yosys 0.23 (git sha1 7ce5011c24b) */

(* top =  1  *)
(* src = "Automatic-Parking-Access-Control.v:13.1-168.10" *)
module ControladorParqueo(clk, rst, sensor_1, sensor_2, try_psswrd, psswrd_atmpt, alarm_1, alarm_2, open_gate, close_gate, nx_alarm_1, nx_alarm_2, nx_open_gate, nx_close_gate);
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _000_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _001_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _002_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _003_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _004_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _005_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _006_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _007_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _008_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _009_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _010_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire _011_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _012_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _013_;
  (* src = "Automatic-Parking-Access-Control.v:68.1-165.4" *)
  wire [4:0] _014_;
  (* src = "Automatic-Parking-Access-Control.v:32.12-32.19" *)
  wire _015_;
  (* src = "Automatic-Parking-Access-Control.v:32.21-32.28" *)
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
  (* src = "Automatic-Parking-Access-Control.v:32.41-32.51" *)
  wire _029_;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
  wire _030_;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
  wire _031_;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
  wire _032_;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
  wire _033_;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
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
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  (* src = "Automatic-Parking-Access-Control.v:33.12-33.22" *)
  wire _144_;
  (* src = "Automatic-Parking-Access-Control.v:33.24-33.34" *)
  wire _145_;
  (* src = "Automatic-Parking-Access-Control.v:33.50-33.63" *)
  wire _146_;
  (* src = "Automatic-Parking-Access-Control.v:33.36-33.48" *)
  wire _147_;
  (* src = "Automatic-Parking-Access-Control.v:32.30-32.39" *)
  wire _148_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _149_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _150_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _151_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _152_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _153_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _154_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _155_;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  wire _156_;
  (* src = "Automatic-Parking-Access-Control.v:28.12-28.15" *)
  wire _157_;
  (* src = "Automatic-Parking-Access-Control.v:28.17-28.25" *)
  wire _158_;
  (* src = "Automatic-Parking-Access-Control.v:28.27-28.35" *)
  wire _159_;
  (* src = "Automatic-Parking-Access-Control.v:36.11-36.16" *)
  wire _160_;
  (* src = "Automatic-Parking-Access-Control.v:36.11-36.16" *)
  wire _161_;
  (* src = "Automatic-Parking-Access-Control.v:36.11-36.16" *)
  wire _162_;
  (* src = "Automatic-Parking-Access-Control.v:28.37-28.47" *)
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire [3:0] _203_;
  wire [1:0] _204_;
  wire [1:0] _205_;
  wire _206_;
  wire [1:0] _207_;
  wire _208_;
  wire [1:0] _209_;
  wire [1:0] _210_;
  wire [1:0] _211_;
  wire _212_;
  wire [1:0] _213_;
  wire _214_;
  wire [1:0] _215_;
  wire [1:0] _216_;
  wire [1:0] _217_;
  wire [1:0] _218_;
  wire [1:0] _219_;
  wire _220_;
  wire _221_;
  wire [1:0] _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [19:0] _226_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [19:0] _227_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:573.22-573.23" *)
  wire [3:0] _228_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:578.19-578.22" *)
  wire [4:0] _229_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [2:0] _230_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [2:0] _231_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:573.22-573.23" *)
  wire [2:0] _232_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:578.19-578.22" *)
  wire _233_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [1:0] _234_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [1:0] _235_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [2:0] _236_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [2:0] _237_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:578.19-578.22" *)
  wire _238_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [1:0] _239_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [1:0] _240_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:127.38-127.46|/usr/bin/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "4" *)
  wire [31:0] _241_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:127.38-127.46|/usr/bin/../share/yosys/techmap.v:270.23-270.24" *)
  wire [31:0] _242_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:127.38-127.46|/usr/bin/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "5" *)
  wire [31:0] _243_;
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)
  wire _244_;
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)
  wire _245_;
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:85.5-163.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)
  wire _246_;
  (* src = "Automatic-Parking-Access-Control.v:127.38-127.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:241.12-241.34" *)
  wire _247_;
  (* src = "Automatic-Parking-Access-Control.v:32.12-32.19" *)
  output alarm_1;
  wire alarm_1;
  (* src = "Automatic-Parking-Access-Control.v:32.21-32.28" *)
  output alarm_2;
  wire alarm_2;
  (* src = "Automatic-Parking-Access-Control.v:28.7-28.10" *)
  input clk;
  wire clk;
  (* src = "Automatic-Parking-Access-Control.v:32.41-32.51" *)
  output close_gate;
  wire close_gate;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.17" *)
  wire [4:0] count0;
  (* src = "Automatic-Parking-Access-Control.v:33.12-33.22" *)
  output nx_alarm_1;
  wire nx_alarm_1;
  (* src = "Automatic-Parking-Access-Control.v:33.24-33.34" *)
  output nx_alarm_2;
  wire nx_alarm_2;
  (* src = "Automatic-Parking-Access-Control.v:33.50-33.63" *)
  output nx_close_gate;
  wire nx_close_gate;
  (* src = "Automatic-Parking-Access-Control.v:33.36-33.48" *)
  output nx_open_gate;
  wire nx_open_gate;
  (* src = "Automatic-Parking-Access-Control.v:39.11-39.20" *)
  wire [4:0] nxt_state;
  (* src = "Automatic-Parking-Access-Control.v:32.30-32.39" *)
  output open_gate;
  wire open_gate;
  (* src = "Automatic-Parking-Access-Control.v:29.13-29.25" *)
  input [7:0] psswrd_atmpt;
  wire [7:0] psswrd_atmpt;
  (* src = "Automatic-Parking-Access-Control.v:28.12-28.15" *)
  input rst;
  wire rst;
  (* src = "Automatic-Parking-Access-Control.v:28.17-28.25" *)
  input sensor_1;
  wire sensor_1;
  (* src = "Automatic-Parking-Access-Control.v:28.27-28.35" *)
  input sensor_2;
  wire sensor_2;
  (* src = "Automatic-Parking-Access-Control.v:36.11-36.16" *)
  wire [4:0] state;
  (* src = "Automatic-Parking-Access-Control.v:28.37-28.47" *)
  input try_psswrd;
  wire try_psswrd;
  NOT _248_ (
    .A(_162_),
    .Y(_088_)
  );
  NOT _249_ (
    .A(_160_),
    .Y(_089_)
  );
  NOT _250_ (
    .A(_033_),
    .Y(_090_)
  );
  NOT _251_ (
    .A(_032_),
    .Y(_091_)
  );
  NOT _252_ (
    .A(_031_),
    .Y(_092_)
  );
  NOT _253_ (
    .A(_030_),
    .Y(_093_)
  );
  NOT _254_ (
    .A(_155_),
    .Y(_094_)
  );
  NOT _255_ (
    .A(_163_),
    .Y(_095_)
  );
  NOT _256_ (
    .A(_158_),
    .Y(_096_)
  );
  NOT _257_ (
    .A(_159_),
    .Y(_097_)
  );
  NOR _258_ (
    .A(_162_),
    .B(_161_),
    .Y(_098_)
  );
  NOT _259_ (
    .A(_098_),
    .Y(_099_)
  );
  NOR _260_ (
    .A(_162_),
    .B(_160_),
    .Y(_100_)
  );
  NOT _261_ (
    .A(_100_),
    .Y(_101_)
  );
  NOR _262_ (
    .A(_161_),
    .B(_101_),
    .Y(_102_)
  );
  NOR _263_ (
    .A(_096_),
    .B(_097_),
    .Y(_103_)
  );
  NAND _264_ (
    .A(_158_),
    .B(_159_),
    .Y(_104_)
  );
  NAND _265_ (
    .A(_158_),
    .B(_102_),
    .Y(_105_)
  );
  NAND _266_ (
    .A(_102_),
    .B(_103_),
    .Y(_106_)
  );
  NOT _267_ (
    .A(_106_),
    .Y(_107_)
  );
  NAND _268_ (
    .A(_088_),
    .B(_161_),
    .Y(_108_)
  );
  NOR _269_ (
    .A(_160_),
    .B(_108_),
    .Y(_109_)
  );
  NAND _270_ (
    .A(_161_),
    .B(_100_),
    .Y(_110_)
  );
  NOR _271_ (
    .A(_089_),
    .B(_099_),
    .Y(_111_)
  );
  NAND _272_ (
    .A(_160_),
    .B(_098_),
    .Y(_112_)
  );
  NOR _273_ (
    .A(_109_),
    .B(_111_),
    .Y(_113_)
  );
  NOR _274_ (
    .A(_104_),
    .B(_113_),
    .Y(_114_)
  );
  NOR _275_ (
    .A(_016_),
    .B(_114_),
    .Y(_115_)
  );
  NAND _276_ (
    .A(_088_),
    .B(_113_),
    .Y(_116_)
  );
  NAND _277_ (
    .A(_153_),
    .B(_154_),
    .Y(_117_)
  );
  NAND _278_ (
    .A(_156_),
    .B(_094_),
    .Y(_118_)
  );
  NOR _279_ (
    .A(_117_),
    .B(_118_),
    .Y(_119_)
  );
  NAND _280_ (
    .A(_149_),
    .B(_150_),
    .Y(_120_)
  );
  NAND _281_ (
    .A(_151_),
    .B(_152_),
    .Y(_121_)
  );
  NOR _282_ (
    .A(_120_),
    .B(_121_),
    .Y(_122_)
  );
  NAND _283_ (
    .A(_119_),
    .B(_122_),
    .Y(_123_)
  );
  NOR _284_ (
    .A(_095_),
    .B(_123_),
    .Y(_124_)
  );
  NOT _285_ (
    .A(_124_),
    .Y(_125_)
  );
  NAND _286_ (
    .A(_161_),
    .B(_160_),
    .Y(_126_)
  );
  NOR _287_ (
    .A(_124_),
    .B(_126_),
    .Y(_127_)
  );
  NOR _288_ (
    .A(_116_),
    .B(_127_),
    .Y(_128_)
  );
  NOR _289_ (
    .A(_115_),
    .B(_128_),
    .Y(_129_)
  );
  NOR _290_ (
    .A(_107_),
    .B(_129_),
    .Y(_130_)
  );
  NOT _291_ (
    .A(_130_),
    .Y(_145_)
  );
  NOR _292_ (
    .A(_157_),
    .B(_130_),
    .Y(_017_)
  );
  NAND _293_ (
    .A(_098_),
    .B(_104_),
    .Y(_131_)
  );
  NAND _294_ (
    .A(_160_),
    .B(_163_),
    .Y(_132_)
  );
  NOR _295_ (
    .A(_103_),
    .B(_112_),
    .Y(_133_)
  );
  NOT _296_ (
    .A(_133_),
    .Y(_134_)
  );
  NOR _297_ (
    .A(_131_),
    .B(_132_),
    .Y(_135_)
  );
  NAND _298_ (
    .A(_163_),
    .B(_133_),
    .Y(_136_)
  );
  NOR _299_ (
    .A(_125_),
    .B(_134_),
    .Y(_137_)
  );
  NOR _300_ (
    .A(_157_),
    .B(_137_),
    .Y(_138_)
  );
  NOT _301_ (
    .A(_138_),
    .Y(_139_)
  );
  NOR _302_ (
    .A(_093_),
    .B(_136_),
    .Y(_140_)
  );
  NAND _303_ (
    .A(_030_),
    .B(_135_),
    .Y(_141_)
  );
  NAND _304_ (
    .A(_093_),
    .B(_136_),
    .Y(_142_)
  );
  NAND _305_ (
    .A(_141_),
    .B(_142_),
    .Y(_143_)
  );
  NOR _306_ (
    .A(_139_),
    .B(_143_),
    .Y(_018_)
  );
  NOR _307_ (
    .A(_092_),
    .B(_141_),
    .Y(_035_)
  );
  NOR _308_ (
    .A(_031_),
    .B(_140_),
    .Y(_036_)
  );
  NOT _309_ (
    .A(_036_),
    .Y(_037_)
  );
  NAND _310_ (
    .A(_138_),
    .B(_037_),
    .Y(_038_)
  );
  NOR _311_ (
    .A(_035_),
    .B(_038_),
    .Y(_019_)
  );
  NAND _312_ (
    .A(_032_),
    .B(_035_),
    .Y(_039_)
  );
  NOR _313_ (
    .A(_032_),
    .B(_035_),
    .Y(_040_)
  );
  NAND _314_ (
    .A(_138_),
    .B(_039_),
    .Y(_041_)
  );
  NOR _315_ (
    .A(_040_),
    .B(_041_),
    .Y(_020_)
  );
  NOR _316_ (
    .A(_090_),
    .B(_039_),
    .Y(_042_)
  );
  NAND _317_ (
    .A(_090_),
    .B(_039_),
    .Y(_043_)
  );
  NAND _318_ (
    .A(_138_),
    .B(_043_),
    .Y(_044_)
  );
  NOR _319_ (
    .A(_042_),
    .B(_044_),
    .Y(_021_)
  );
  NAND _320_ (
    .A(_034_),
    .B(_042_),
    .Y(_045_)
  );
  NOR _321_ (
    .A(_034_),
    .B(_042_),
    .Y(_046_)
  );
  NOT _322_ (
    .A(_046_),
    .Y(_047_)
  );
  NAND _323_ (
    .A(_045_),
    .B(_047_),
    .Y(_048_)
  );
  NOR _324_ (
    .A(_139_),
    .B(_048_),
    .Y(_022_)
  );
  NOR _325_ (
    .A(_163_),
    .B(_126_),
    .Y(_049_)
  );
  NOR _326_ (
    .A(_162_),
    .B(_049_),
    .Y(_050_)
  );
  NOR _327_ (
    .A(_034_),
    .B(_033_),
    .Y(_051_)
  );
  NAND _328_ (
    .A(_091_),
    .B(_031_),
    .Y(_052_)
  );
  NAND _329_ (
    .A(_030_),
    .B(_095_),
    .Y(_053_)
  );
  NOR _330_ (
    .A(_052_),
    .B(_053_),
    .Y(_054_)
  );
  NAND _331_ (
    .A(_051_),
    .B(_054_),
    .Y(_055_)
  );
  NOR _332_ (
    .A(_131_),
    .B(_055_),
    .Y(_056_)
  );
  NAND _333_ (
    .A(_160_),
    .B(_056_),
    .Y(_057_)
  );
  NAND _334_ (
    .A(_050_),
    .B(_057_),
    .Y(_058_)
  );
  NAND _335_ (
    .A(_160_),
    .B(_058_),
    .Y(_059_)
  );
  NAND _336_ (
    .A(_111_),
    .B(_055_),
    .Y(_060_)
  );
  NOR _337_ (
    .A(_124_),
    .B(_060_),
    .Y(_061_)
  );
  NOR _338_ (
    .A(_108_),
    .B(_132_),
    .Y(_062_)
  );
  NAND _339_ (
    .A(_123_),
    .B(_062_),
    .Y(_063_)
  );
  NAND _340_ (
    .A(_105_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _341_ (
    .A(_114_),
    .B(_064_),
    .Y(_065_)
  );
  NAND _342_ (
    .A(_059_),
    .B(_065_),
    .Y(_066_)
  );
  NOR _343_ (
    .A(_061_),
    .B(_066_),
    .Y(_067_)
  );
  NOR _344_ (
    .A(_157_),
    .B(_067_),
    .Y(_023_)
  );
  NAND _345_ (
    .A(_161_),
    .B(_058_),
    .Y(_068_)
  );
  NOR _346_ (
    .A(_103_),
    .B(_124_),
    .Y(_069_)
  );
  NOR _347_ (
    .A(_112_),
    .B(_069_),
    .Y(_070_)
  );
  NAND _348_ (
    .A(_096_),
    .B(_159_),
    .Y(_071_)
  );
  NOT _349_ (
    .A(_071_),
    .Y(_072_)
  );
  NOR _350_ (
    .A(_110_),
    .B(_072_),
    .Y(_073_)
  );
  NOT _351_ (
    .A(_073_),
    .Y(_074_)
  );
  NAND _352_ (
    .A(_106_),
    .B(_063_),
    .Y(_075_)
  );
  NOR _353_ (
    .A(_070_),
    .B(_073_),
    .Y(_076_)
  );
  NAND _354_ (
    .A(_068_),
    .B(_076_),
    .Y(_077_)
  );
  NOR _355_ (
    .A(_075_),
    .B(_077_),
    .Y(_078_)
  );
  NOR _356_ (
    .A(_157_),
    .B(_078_),
    .Y(_024_)
  );
  NOR _357_ (
    .A(_088_),
    .B(_157_),
    .Y(_025_)
  );
  NOR _358_ (
    .A(_015_),
    .B(_056_),
    .Y(_079_)
  );
  NOR _359_ (
    .A(_102_),
    .B(_079_),
    .Y(_144_)
  );
  NOT _360_ (
    .A(_144_),
    .Y(_080_)
  );
  NOR _361_ (
    .A(_157_),
    .B(_080_),
    .Y(_026_)
  );
  NOR _362_ (
    .A(_148_),
    .B(_137_),
    .Y(_081_)
  );
  NOT _363_ (
    .A(_081_),
    .Y(_082_)
  );
  NAND _364_ (
    .A(_100_),
    .B(_074_),
    .Y(_083_)
  );
  NAND _365_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  NOT _366_ (
    .A(_084_),
    .Y(_147_)
  );
  NOR _367_ (
    .A(_157_),
    .B(_084_),
    .Y(_027_)
  );
  NOR _368_ (
    .A(_101_),
    .B(_071_),
    .Y(_085_)
  );
  NOR _369_ (
    .A(_029_),
    .B(_085_),
    .Y(_086_)
  );
  NOR _370_ (
    .A(_102_),
    .B(_086_),
    .Y(_146_)
  );
  NOT _371_ (
    .A(_146_),
    .Y(_087_)
  );
  NOR _372_ (
    .A(_157_),
    .B(_087_),
    .Y(_028_)
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _373_ (
    .C(clk),
    .D(_183_),
    .Q(alarm_2)
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _374_ (
    .C(clk),
    .D(_185_),
    .Q(count0[0])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _375_ (
    .C(clk),
    .D(_187_),
    .Q(count0[1])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _376_ (
    .C(clk),
    .D(_189_),
    .Q(count0[2])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _377_ (
    .C(clk),
    .D(_191_),
    .Q(count0[3])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _378_ (
    .C(clk),
    .D(_193_),
    .Q(count0[4])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _379_ (
    .C(clk),
    .D(_195_),
    .Q(state[0])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _380_ (
    .C(clk),
    .D(_197_),
    .Q(state[1])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _381_ (
    .C(clk),
    .D(_199_),
    .Q(state[3])
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _382_ (
    .C(clk),
    .D(_200_),
    .Q(alarm_1)
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _383_ (
    .C(clk),
    .D(_201_),
    .Q(open_gate)
  );
  (* src = "Automatic-Parking-Access-Control.v:45.1-63.4" *)
  DFF _384_ (
    .C(clk),
    .D(_202_),
    .Q(close_gate)
  );
  assign { _000_[4:2], _000_[0] } = 4'h0;
  assign { _001_[4:2], _001_[0] } = { 3'h0, _001_[1] };
  assign _009_[3:2] = { _009_[4], _009_[4] };
  assign _012_[3:2] = { _012_[4], _012_[4] };
  assign _013_[3:1] = { _013_[4], _013_[4], _013_[4] };
  assign _014_[3:1] = { _014_[4], _014_[4], _014_[4] };
  assign _207_[1] = state[3];
  assign _209_[0] = _166_;
  assign _211_[1] = state[3];
  assign _213_[1] = state[3];
  assign _216_[1] = _169_;
  assign _222_[1] = state[3];
  assign { _226_[19:17], _226_[13:12], _226_[9:7], _226_[5], _226_[3:2], _226_[0] } = { 3'h0, _226_[14], _226_[14], 3'h0, _226_[16], _226_[4], _226_[4], _226_[1] };
  assign { _227_[19:17], _227_[13:12], _227_[9:7], _227_[3:2], _227_[0] } = { 3'h0, _227_[14], _227_[14], 3'h0, _227_[4], _227_[4], _227_[1] };
  assign _229_[3:2] = { _229_[4], _229_[4] };
  assign _230_[2] = _226_[16];
  assign _231_[2] = _227_[16];
  assign { _232_[2], _232_[0] } = { _228_[3], _228_[0] };
  assign _234_[1] = 1'h0;
  assign _235_[1] = 1'h0;
  assign _236_[2] = 1'h0;
  assign _237_[2] = 1'h0;
  assign _239_[1] = 1'h0;
  assign _240_[1] = 1'h0;
  assign { _241_[31:5], _241_[0] } = { 27'h0000000, count0[0] };
  assign _242_[31:1] = { 27'h0000000, count0[4:1] };
  assign { _243_[31:5], _243_[0] } = { 26'h0000000, _241_[4], _242_[0] };
  assign { nxt_state[4], nxt_state[2] } = { nxt_state[3], nxt_state[3] };
  assign { state[4], state[2] } = { state[3], state[3] };
  assign _162_ = state[3];
  assign _161_ = state[1];
  assign _160_ = state[0];
  assign _034_ = count0[4];
  assign _033_ = count0[3];
  assign _032_ = count0[2];
  assign _031_ = count0[1];
  assign _030_ = count0[0];
  assign nx_alarm_2 = _145_;
  assign _157_ = rst;
  assign _183_ = _017_;
  assign _185_ = _018_;
  assign _187_ = _019_;
  assign _189_ = _020_;
  assign _191_ = _021_;
  assign _193_ = _022_;
  assign _195_ = _023_;
  assign _197_ = _024_;
  assign _199_ = _025_;
  assign nx_alarm_1 = _144_;
  assign _200_ = _026_;
  assign nx_open_gate = _147_;
  assign _201_ = _027_;
  assign nx_close_gate = _146_;
  assign _202_ = _028_;
  assign _149_ = psswrd_atmpt[0];
  assign _150_ = psswrd_atmpt[1];
  assign _151_ = psswrd_atmpt[2];
  assign _152_ = psswrd_atmpt[3];
  assign _153_ = psswrd_atmpt[4];
  assign _154_ = psswrd_atmpt[5];
  assign _156_ = psswrd_atmpt[7];
  assign _155_ = psswrd_atmpt[6];
  assign _163_ = try_psswrd;
  assign _158_ = sensor_1;
  assign _159_ = sensor_2;
  assign _016_ = alarm_2;
  assign _029_ = close_gate;
  assign _148_ = open_gate;
  assign _015_ = alarm_1;
endmodule
