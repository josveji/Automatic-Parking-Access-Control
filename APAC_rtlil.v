/* Generated by Yosys 0.23 (git sha1 7ce5011c24b) */

(* cells_not_processed =  1  *)
(* src = "Automatic-Parking-Access-Control.v:13.1-142.10" *)
module ControladorParqueo(clk, rst, sensor_1, sensor_2, try_psswrd, psswrd_atmpt, alarm_1, alarm_2, open_gate, close_gate);
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _000_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _001_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _002_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _003_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _004_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _005_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _006_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  wire [4:0] _007_;
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
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire [1:0] _079_;
  wire _080_;
  wire [1:0] _081_;
  wire _082_;
  wire [1:0] _083_;
  wire _084_;
  wire [1:0] _085_;
  wire [1:0] _086_;
  wire [1:0] _087_;
  wire [1:0] _088_;
  wire _089_;
  wire [1:0] _090_;
  wire [1:0] _091_;
  wire [1:0] _092_;
  wire [1:0] _093_;
  wire [3:0] _094_;
  wire [1:0] _095_;
  wire [1:0] _096_;
  wire _097_;
  wire [1:0] _098_;
  wire _099_;
  wire [1:0] _100_;
  wire _101_;
  wire [4:0] _102_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:571.28-571.29" *)
  wire [19:0] _103_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [19:0] _104_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:573.22-573.23" *)
  wire [3:0] _105_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:578.19-578.22" *)
  wire [4:0] _106_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:583.28-583.35" *)
  wire [1:0] _107_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:575.21-575.22" *)
  wire _108_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "4" *)
  wire [31:0] _109_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:270.23-270.24" *)
  wire [31:0] _110_;
  (* force_downto = 32'd1 *)
  (* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "5" *)
  wire [31:0] _111_;
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)
  wire _112_;
  (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)
  wire _113_;
  (* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:241.12-241.34" *)
  wire _114_;
  (* src = "Automatic-Parking-Access-Control.v:31.12-31.19" *)
  output alarm_1;
  reg alarm_1;
  (* src = "Automatic-Parking-Access-Control.v:31.21-31.28" *)
  output alarm_2;
  reg alarm_2;
  (* src = "Automatic-Parking-Access-Control.v:27.7-27.10" *)
  input clk;
  wire clk;
  (* src = "Automatic-Parking-Access-Control.v:31.41-31.51" *)
  output close_gate;
  reg close_gate;
  (* src = "Automatic-Parking-Access-Control.v:35.11-35.17" *)
  reg [4:0] count0;
  (* src = "Automatic-Parking-Access-Control.v:37.11-37.20" *)
  wire [4:0] nxt_state;
  (* src = "Automatic-Parking-Access-Control.v:31.30-31.39" *)
  output open_gate;
  reg open_gate;
  (* src = "Automatic-Parking-Access-Control.v:28.13-28.25" *)
  input [7:0] psswrd_atmpt;
  wire [7:0] psswrd_atmpt;
  (* src = "Automatic-Parking-Access-Control.v:27.12-27.15" *)
  input rst;
  wire rst;
  (* src = "Automatic-Parking-Access-Control.v:27.17-27.25" *)
  input sensor_1;
  wire sensor_1;
  (* src = "Automatic-Parking-Access-Control.v:27.27-27.35" *)
  input sensor_2;
  wire sensor_2;
  (* src = "Automatic-Parking-Access-Control.v:34.11-34.16" *)
  wire [4:0] state;
  (* src = "Automatic-Parking-Access-Control.v:27.37-27.47" *)
  input try_psswrd;
  wire try_psswrd;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  always @*
    if (!_029_) alarm_1 = _105_[2];
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  always @*
    if (!_038_) alarm_2 = _108_;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  always @*
    if (!_051_) open_gate = _105_[2];
  reg \state_reg[0] ;
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) \state_reg[0]  <= 1'h0;
    else if (_012_) \state_reg[0]  <= nxt_state[0];
  assign state[0] = \state_reg[0] ;
  reg \state_reg[1] ;
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) \state_reg[1]  <= 1'h0;
    else if (_012_) \state_reg[1]  <= nxt_state[1];
  assign state[1] = \state_reg[1] ;
  reg \state_reg[3] ;
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) \state_reg[3]  <= 1'h0;
    else if (_012_) \state_reg[3]  <= nxt_state[3];
  assign state[3] = \state_reg[3] ;
  (* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)
  always @*
    if (!_052_) close_gate = _105_[1];
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) count0[0] <= 1'h0;
    else if (_013_) count0[0] <= _002_[0];
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) count0[1] <= 1'h0;
    else if (_013_) count0[1] <= _002_[1];
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) count0[2] <= 1'h0;
    else if (_013_) count0[2] <= _002_[2];
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) count0[3] <= 1'h0;
    else if (_013_) count0[3] <= _002_[3];
  (* src = "Automatic-Parking-Access-Control.v:43.1-51.4" *)
  always @(posedge clk)
    if (rst) count0[4] <= 1'h0;
    else if (_013_) count0[4] <= _002_[4];
  assign _069_ = ~state[1];
  assign _070_ = ~state[0];
  assign _071_ = ~count0[1];
  assign _072_ = ~psswrd_atmpt[7];
  assign _073_ = ~psswrd_atmpt[5];
  assign _074_ = ~psswrd_atmpt[4];
  assign _075_ = ~psswrd_atmpt[3];
  assign _076_ = ~psswrd_atmpt[2];
  assign _077_ = ~psswrd_atmpt[1];
  assign _078_ = ~psswrd_atmpt[0];
  assign _110_[0] = ~count0[0];
  assign _017_ = ~try_psswrd;
  assign _079_[0] = state[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  _069_;
  assign _080_ = _079_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _019_ = _080_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _081_[0] = _070_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[1];
  assign _082_ = _081_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _015_ = _082_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _024_ = try_psswrd |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _054_;
  assign _027_ = _055_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _103_[16];
  assign _029_ = _053_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _056_;
  assign _034_ = _017_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _058_;
  assign _083_[0] = _057_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _059_;
  assign _083_[1] = _060_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _061_;
  assign _038_ = _083_[0] |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _083_[1];
  assign _042_ = _103_[16] |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _063_;
  assign _046_ = _017_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _065_;
  assign _049_ = _103_[16] |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _066_;
  assign _084_ = _062_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _064_;
  assign _051_ = _084_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _067_;
  assign _085_[0] = try_psswrd & _105_[2];
  assign _013_ = _085_[0] & _016_;
  assign _086_[0] = _011_ & _010_;
  assign _086_[1] = _009_ & _008_;
  assign _012_ = _086_[0] & _086_[1];
  assign _087_[0] = _105_[0] | _105_[2];
  assign _087_[1] = _105_[3] | _105_[1];
  assign _011_ = _087_[0] | _087_[1];
  assign _088_[0] = _017_ | _001_[1];
  assign _088_[1] = _102_[2] | _015_;
  assign _089_ = _088_[0] | _088_[1];
  assign _010_ = _089_ | _103_[16];
  assign _009_ = try_psswrd | _020_;
  assign _090_[0] = try_psswrd | _018_;
  assign _090_[1] = _015_ | _103_[16];
  assign _008_ = _090_[0] | _090_[1];
  assign _052_ = _064_ |(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _068_;
  assign _113_ = _105_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)  _107_[1];
  assign _106_[4] = _104_[4] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _104_[14];
  assign _091_[0] = _104_[1] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _104_[6];
  assign _091_[1] = _104_[11] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _104_[16];
  assign _106_[1] = _091_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _091_[1];
  assign _092_[0] = _104_[1] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _104_[5];
  assign _092_[1] = _104_[10] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _104_[15];
  assign _106_[0] = _092_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:593.20-593.31" *)  _092_[1];
  assign _093_[0] = _105_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)  _105_[1];
  assign _093_[1] = _105_[2] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)  _105_[3];
  assign _112_ = _093_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.15" *)  _093_[1];
  assign _096_[0] = _110_[0] |(* src = "Automatic-Parking-Access-Control.v:106.30-106.45" *)  _071_;
  assign _096_[1] = count0[2] |(* src = "Automatic-Parking-Access-Control.v:106.30-106.45" *)  count0[3];
  assign _097_ = _096_[0] |(* src = "Automatic-Parking-Access-Control.v:106.30-106.45" *)  _096_[1];
  assign _018_ = _097_ |(* src = "Automatic-Parking-Access-Control.v:106.30-106.45" *)  count0[4];
  assign _094_[0] = _078_ |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _077_;
  assign _094_[1] = _076_ |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _075_;
  assign _094_[2] = _074_ |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _073_;
  assign _094_[3] = psswrd_atmpt[6] |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _072_;
  assign _095_[0] = _094_[0] |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _094_[1];
  assign _095_[1] = _094_[2] |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _094_[3];
  assign _001_[1] = _095_[0] |(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *)  _095_[1];
  assign _107_[1] = _105_[2] | _105_[1];
  assign _098_[0] = _070_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  _069_;
  assign _099_ = _098_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _020_ = _099_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _100_[0] = state[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[1];
  assign _101_ = _100_[0] |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _014_ = _101_ |(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *)  state[3];
  assign _105_[3] = ~(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *) _014_;
  assign _102_[2] = ~(* src = "Automatic-Parking-Access-Control.v:130.27-130.49" *) _001_[1];
  assign _105_[0] = ~(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *) _020_;
  assign _103_[16] = sensor_1 &(* src = "Automatic-Parking-Access-Control.v:113.25-113.45" *)  sensor_2;
  assign _105_[2] = ~(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *) _015_;
  assign _105_[1] = ~(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12" *) _019_;
  assign _108_ = _113_ ? (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.25" *) _107_[1] : _103_[16];
  assign nxt_state[0] = _112_ ? (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.25" *) _106_[0] : 1'hx;
  assign nxt_state[1] = _112_ ? (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.25" *) _106_[1] : 1'hx;
  assign nxt_state[3] = _112_ ? (* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:597.13-597.25" *) _106_[4] : 1'hx;
  assign _103_[1] = try_psswrd ? (* src = "Automatic-Parking-Access-Control.v:128.25-128.35|Automatic-Parking-Access-Control.v:128.21-134.24" *) _001_[1] : 1'hx;
  assign _103_[4] = try_psswrd ? (* src = "Automatic-Parking-Access-Control.v:128.25-128.35|Automatic-Parking-Access-Control.v:128.21-134.24" *) 1'h0 : 1'hx;
  assign _000_[1] = ~(* src = "Automatic-Parking-Access-Control.v:118.30-118.38|Automatic-Parking-Access-Control.v:118.26-122.50" *) sensor_2;
  assign _103_[6] = _103_[16] ? (* src = "Automatic-Parking-Access-Control.v:113.25-113.45|Automatic-Parking-Access-Control.v:113.21-122.50" *) 1'h1 : _000_[1];
  assign _007_[0] = _018_ ? (* src = "Automatic-Parking-Access-Control.v:106.30-106.45|Automatic-Parking-Access-Control.v:106.26-107.46" *) 1'h1 : 1'hx;
  assign _007_[4] = _018_ ? (* src = "Automatic-Parking-Access-Control.v:106.30-106.45|Automatic-Parking-Access-Control.v:106.26-107.46" *) 1'h0 : 1'hx;
  assign _006_[0] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) 1'h1 : 1'hx;
  assign _006_[4] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) 1'h0 : 1'hx;
  assign _003_[0] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) _110_[0] : 1'hx;
  assign _003_[1] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) _111_[1] : 1'hx;
  assign _003_[2] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) _111_[2] : 1'hx;
  assign _003_[3] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) _111_[3] : 1'hx;
  assign _003_[4] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:101.27-101.49|Automatic-Parking-Access-Control.v:101.23-104.26" *) _111_[4] : 1'hx;
  assign _005_[0] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _006_[0] : 1'h0;
  assign _005_[1] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _006_[4] : 1'h1;
  assign _005_[4] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _006_[4] : 1'h0;
  assign _002_[0] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _003_[0] : 1'h0;
  assign _002_[1] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _003_[1] : 1'h0;
  assign _002_[2] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _003_[2] : 1'h0;
  assign _002_[3] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _003_[3] : 1'h0;
  assign _002_[4] = _001_[1] ? (* src = "Automatic-Parking-Access-Control.v:94.27-94.49|Automatic-Parking-Access-Control.v:94.23-104.26" *) _003_[4] : 1'h0;
  assign _004_[0] = try_psswrd ? (* src = "Automatic-Parking-Access-Control.v:92.30-92.40|Automatic-Parking-Access-Control.v:92.26-107.46" *) _005_[0] : _007_[0];
  assign _004_[1] = try_psswrd ? (* src = "Automatic-Parking-Access-Control.v:92.30-92.40|Automatic-Parking-Access-Control.v:92.26-107.46" *) _005_[1] : _007_[4];
  assign _004_[4] = try_psswrd ? (* src = "Automatic-Parking-Access-Control.v:92.30-92.40|Automatic-Parking-Access-Control.v:92.26-107.46" *) _005_[4] : _007_[4];
  assign _103_[10] = _103_[16] ? (* src = "Automatic-Parking-Access-Control.v:87.25-87.45|Automatic-Parking-Access-Control.v:87.21-107.46" *) 1'h1 : _004_[0];
  assign _103_[11] = _103_[16] ? (* src = "Automatic-Parking-Access-Control.v:87.25-87.45|Automatic-Parking-Access-Control.v:87.21-107.46" *) 1'h1 : _004_[1];
  assign _103_[14] = _103_[16] ? (* src = "Automatic-Parking-Access-Control.v:87.25-87.45|Automatic-Parking-Access-Control.v:87.21-107.46" *) 1'h0 : _004_[4];
  assign _103_[15] = _103_[16] ? (* src = "Automatic-Parking-Access-Control.v:76.25-76.45|Automatic-Parking-Access-Control.v:76.21-82.46" *) 1'h1 : sensor_1;
  assign _016_ = ~_103_[16];
  assign _053_ = _014_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _015_;
  assign _021_ = _017_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _018_;
  assign _022_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _021_;
  assign _023_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _022_;
  assign _054_ = _017_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _023_;
  assign _025_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _024_;
  assign _026_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _025_;
  assign _055_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _026_;
  assign _028_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _027_;
  assign _056_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _028_;
  assign _030_ = _019_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _020_;
  assign _031_ = _015_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _030_;
  assign _057_ = _014_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _031_;
  assign _032_ = try_psswrd &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _001_[1];
  assign _033_ = _105_[0] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _032_;
  assign _058_ = try_psswrd &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _033_;
  assign _035_ = _105_[0] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _034_;
  assign _059_ = _105_[0] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _035_;
  assign _036_ = _105_[1] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _016_;
  assign _060_ = _105_[1] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _036_;
  assign _037_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _016_;
  assign _061_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _037_;
  assign _039_ = _015_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _019_;
  assign _062_ = _014_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _039_;
  assign _040_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _000_[1];
  assign _041_ = _105_[1] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _040_;
  assign _063_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _041_;
  assign _043_ = _105_[1] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _042_;
  assign _064_ = _105_[1] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _043_;
  assign _044_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _032_;
  assign _045_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _044_;
  assign _065_ = try_psswrd &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _045_;
  assign _047_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _046_;
  assign _048_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _047_;
  assign _066_ = _016_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _048_;
  assign _050_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _049_;
  assign _067_ = _105_[2] &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _050_;
  assign _068_ = _014_ &(* src = "Automatic-Parking-Access-Control.v:56.1-139.4" *)  _019_;
  assign _104_[15] = _103_[15] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[3];
  assign _104_[16] = _103_[16] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[3];
  assign _104_[10] = _103_[10] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[2];
  assign _104_[11] = _103_[11] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[2];
  assign _104_[14] = _103_[14] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[2];
  assign _104_[1] = _103_[1] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[0];
  assign _104_[4] = _103_[4] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[0];
  assign _104_[5] = _103_[16] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[1];
  assign _104_[6] = _103_[6] &(* src = "Automatic-Parking-Access-Control.v:0.0-0.0|Automatic-Parking-Access-Control.v:62.5-137.12|/usr/bin/../share/yosys/techmap.v:585.44-585.84" *)  _105_[1];
  assign _111_[1] = count0[1] ^(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:289.13-289.25" *)  count0[0];
  assign _111_[2] = count0[2] ^(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:289.13-289.25" *)  _109_[1];
  assign _111_[3] = count0[3] ^(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:289.13-289.25" *)  _109_[2];
  assign _111_[4] = count0[4] ^(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:289.13-289.25" *)  _109_[3];
  assign _109_[1] = count0[1] &(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:240.19-240.41" *)  count0[0];
  assign _109_[3] = _114_ &(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:240.19-240.41" *)  _109_[1];
  assign _114_ = count0[3] &(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:241.12-241.34" *)  count0[2];
  assign _109_[2] = count0[2] &(* src = "Automatic-Parking-Access-Control.v:102.38-102.46|/usr/bin/../share/yosys/techmap.v:286.27-286.69|/usr/bin/../share/yosys/techmap.v:248.19-248.41" *)  _109_[1];
  assign { _000_[4:2], _000_[0] } = 4'h0;
  assign { _001_[4:2], _001_[0] } = { 3'h0, _001_[1] };
  assign _004_[3:2] = { _004_[4], _004_[4] };
  assign _005_[3:2] = { _005_[4], _005_[4] };
  assign _006_[3:1] = { _006_[4], _006_[4], _006_[4] };
  assign _007_[3:1] = { _007_[4], _007_[4], _007_[4] };
  assign _079_[1] = state[3];
  assign _081_[1] = state[3];
  assign _085_[1] = _016_;
  assign _098_[1] = state[3];
  assign _100_[1] = state[3];
  assign { _102_[4:3], _102_[1:0] } = { _103_[16], _015_, _001_[1], _017_ };
  assign { _103_[19:17], _103_[13:12], _103_[9:7], _103_[5], _103_[3:2], _103_[0] } = { 3'h0, _103_[14], _103_[14], 3'h0, _103_[16], _103_[4], _103_[4], _103_[1] };
  assign { _104_[19:17], _104_[13:12], _104_[9:7], _104_[3:2], _104_[0] } = { 3'h0, _104_[14], _104_[14], 3'h0, _104_[4], _104_[4], _104_[1] };
  assign _106_[3:2] = { _106_[4], _106_[4] };
  assign _107_[0] = 1'h0;
  assign { _109_[31:5], _109_[0] } = { 27'h0000000, count0[0] };
  assign _110_[31:1] = { 27'h0000000, count0[4:1] };
  assign { _111_[31:5], _111_[0] } = { 26'h0000000, _109_[4], _110_[0] };
  assign { nxt_state[4], nxt_state[2] } = { nxt_state[3], nxt_state[3] };
  assign { state[4], state[2] } = { state[3], state[3] };
endmodule
