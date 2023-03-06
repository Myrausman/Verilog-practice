module Top(
  input         clock,
  input         reset,
  output [31:0] io_pin
);
  wire  core_clock; // @[Top.scala 14:26]
  wire  core_reset; // @[Top.scala 14:26]
  wire [31:0] core_io_pin; // @[Top.scala 14:26]
  wire  core_io_dmemReq_valid; // @[Top.scala 14:26]
  wire [31:0] core_io_dmemReq_bits_addrRequest; // @[Top.scala 14:26]
  wire [31:0] core_io_dmemReq_bits_dataRequest; // @[Top.scala 14:26]
  wire [3:0] core_io_dmemReq_bits_activeByteLane; // @[Top.scala 14:26]
  wire  core_io_dmemReq_bits_isWrite; // @[Top.scala 14:26]
  wire  core_io_dmemRsp_valid; // @[Top.scala 14:26]
  wire [31:0] core_io_dmemRsp_bits_dataResponse; // @[Top.scala 14:26]
  wire  core_io_imemReq_valid; // @[Top.scala 14:26]
  wire [31:0] core_io_imemReq_bits_addrRequest; // @[Top.scala 14:26]
  wire  core_io_imemRsp_valid; // @[Top.scala 14:26]
  wire [31:0] core_io_imemRsp_bits_dataResponse; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiUInt_0; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiUInt_1; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiUInt_2; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiUInt_3; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiSInt_0; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiSInt_1; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiSInt_2; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiSInt_3; // @[Top.scala 14:26]
  wire [31:0] core_io_rvfiSInt_4; // @[Top.scala 14:26]
  wire  core_io_rvfiBool_0; // @[Top.scala 14:26]
  wire [4:0] core_io_rvfiRegAddr_0; // @[Top.scala 14:26]
  wire [4:0] core_io_rvfiRegAddr_1; // @[Top.scala 14:26]
  wire [4:0] core_io_rvfiRegAddr_2; // @[Top.scala 14:26]
  wire  dmem_clock; // @[Top.scala 17:20]
  wire  dmem_reset; // @[Top.scala 17:20]
  wire  dmem_io_req_valid; // @[Top.scala 17:20]
  wire [31:0] dmem_io_req_bits_addrRequest; // @[Top.scala 17:20]
  wire [31:0] dmem_io_req_bits_dataRequest; // @[Top.scala 17:20]
  wire [3:0] dmem_io_req_bits_activeByteLane; // @[Top.scala 17:20]
  wire  dmem_io_req_bits_isWrite; // @[Top.scala 17:20]
  wire  dmem_io_rsp_valid; // @[Top.scala 17:20]
  wire [31:0] dmem_io_rsp_bits_dataResponse; // @[Top.scala 17:20]
  wire  imem_clock; // @[Top.scala 18:20]
  wire  imem_reset; // @[Top.scala 18:20]
  wire  imem_io_req_valid; // @[Top.scala 18:20]
  wire [31:0] imem_io_req_bits_addrRequest; // @[Top.scala 18:20]
  wire  imem_io_rsp_valid; // @[Top.scala 18:20]
  wire [31:0] imem_io_rsp_bits_dataResponse; // @[Top.scala 18:20]
  wire  Tracer_clock; // @[Top.scala 32:24]
  wire  Tracer_reset; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiUInt_0; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiUInt_1; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiUInt_2; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiUInt_3; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiSInt_0; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiSInt_1; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiSInt_2; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiSInt_3; // @[Top.scala 32:24]
  wire [31:0] Tracer_io_rvfiSInt_4; // @[Top.scala 32:24]
  wire  Tracer_io_rvfiBool_0; // @[Top.scala 32:24]
  wire [4:0] Tracer_io_rvfiRegAddr_0; // @[Top.scala 32:24]
  wire [4:0] Tracer_io_rvfiRegAddr_1; // @[Top.scala 32:24]
  wire [4:0] Tracer_io_rvfiRegAddr_2; // @[Top.scala 32:24]
  Core core ( // @[Top.scala 14:26]
    .clock(core_clock),
    .reset(core_reset),
    .io_pin(core_io_pin),
    .io_dmemReq_valid(core_io_dmemReq_valid),
    .io_dmemReq_bits_addrRequest(core_io_dmemReq_bits_addrRequest),
    .io_dmemReq_bits_dataRequest(core_io_dmemReq_bits_dataRequest),
    .io_dmemReq_bits_activeByteLane(core_io_dmemReq_bits_activeByteLane),
    .io_dmemReq_bits_isWrite(core_io_dmemReq_bits_isWrite),
    .io_dmemRsp_valid(core_io_dmemRsp_valid),
    .io_dmemRsp_bits_dataResponse(core_io_dmemRsp_bits_dataResponse),
    .io_imemReq_valid(core_io_imemReq_valid),
    .io_imemReq_bits_addrRequest(core_io_imemReq_bits_addrRequest),
    .io_imemRsp_valid(core_io_imemRsp_valid),
    .io_imemRsp_bits_dataResponse(core_io_imemRsp_bits_dataResponse),
    .io_rvfiUInt_0(core_io_rvfiUInt_0),
    .io_rvfiUInt_1(core_io_rvfiUInt_1),
    .io_rvfiUInt_2(core_io_rvfiUInt_2),
    .io_rvfiUInt_3(core_io_rvfiUInt_3),
    .io_rvfiSInt_0(core_io_rvfiSInt_0),
    .io_rvfiSInt_1(core_io_rvfiSInt_1),
    .io_rvfiSInt_2(core_io_rvfiSInt_2),
    .io_rvfiSInt_3(core_io_rvfiSInt_3),
    .io_rvfiSInt_4(core_io_rvfiSInt_4),
    .io_rvfiBool_0(core_io_rvfiBool_0),
    .io_rvfiRegAddr_0(core_io_rvfiRegAddr_0),
    .io_rvfiRegAddr_1(core_io_rvfiRegAddr_1),
    .io_rvfiRegAddr_2(core_io_rvfiRegAddr_2)
  );
  SRamTop dmem ( // @[Top.scala 17:20]
    .clock(dmem_clock),
    .reset(dmem_reset),
    .io_req_valid(dmem_io_req_valid),
    .io_req_bits_addrRequest(dmem_io_req_bits_addrRequest),
    .io_req_bits_dataRequest(dmem_io_req_bits_dataRequest),
    .io_req_bits_activeByteLane(dmem_io_req_bits_activeByteLane),
    .io_req_bits_isWrite(dmem_io_req_bits_isWrite),
    .io_rsp_valid(dmem_io_rsp_valid),
    .io_rsp_bits_dataResponse(dmem_io_rsp_bits_dataResponse)
  );
  SRamTop_1 imem ( // @[Top.scala 18:20]
    .clock(imem_clock),
    .reset(imem_reset),
    .io_req_valid(imem_io_req_valid),
    .io_req_bits_addrRequest(imem_io_req_bits_addrRequest),
    .io_rsp_valid(imem_io_rsp_valid),
    .io_rsp_bits_dataResponse(imem_io_rsp_bits_dataResponse)
  );
  Tracer Tracer ( // @[Top.scala 32:24]
    .clock(Tracer_clock),
    .reset(Tracer_reset),
    .io_rvfiUInt_0(Tracer_io_rvfiUInt_0),
    .io_rvfiUInt_1(Tracer_io_rvfiUInt_1),
    .io_rvfiUInt_2(Tracer_io_rvfiUInt_2),
    .io_rvfiUInt_3(Tracer_io_rvfiUInt_3),
    .io_rvfiSInt_0(Tracer_io_rvfiSInt_0),
    .io_rvfiSInt_1(Tracer_io_rvfiSInt_1),
    .io_rvfiSInt_2(Tracer_io_rvfiSInt_2),
    .io_rvfiSInt_3(Tracer_io_rvfiSInt_3),
    .io_rvfiSInt_4(Tracer_io_rvfiSInt_4),
    .io_rvfiBool_0(Tracer_io_rvfiBool_0),
    .io_rvfiRegAddr_0(Tracer_io_rvfiRegAddr_0),
    .io_rvfiRegAddr_1(Tracer_io_rvfiRegAddr_1),
    .io_rvfiRegAddr_2(Tracer_io_rvfiRegAddr_2)
  );
  assign io_pin = core_io_pin; // @[Top.scala 29:10]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_dmemRsp_valid = dmem_io_rsp_valid; // @[Top.scala 26:19]
  assign core_io_dmemRsp_bits_dataResponse = dmem_io_rsp_bits_dataResponse; // @[Top.scala 26:19]
  assign core_io_imemRsp_valid = imem_io_rsp_valid; // @[Top.scala 21:19]
  assign core_io_imemRsp_bits_dataResponse = imem_io_rsp_bits_dataResponse; // @[Top.scala 21:19]
  assign dmem_clock = clock;
  assign dmem_reset = reset;
  assign dmem_io_req_valid = core_io_dmemReq_valid; // @[Top.scala 27:15]
  assign dmem_io_req_bits_addrRequest = core_io_dmemReq_bits_addrRequest; // @[Top.scala 27:15]
  assign dmem_io_req_bits_dataRequest = core_io_dmemReq_bits_dataRequest; // @[Top.scala 27:15]
  assign dmem_io_req_bits_activeByteLane = core_io_dmemReq_bits_activeByteLane; // @[Top.scala 27:15]
  assign dmem_io_req_bits_isWrite = core_io_dmemReq_bits_isWrite; // @[Top.scala 27:15]
  assign imem_clock = clock;
  assign imem_reset = reset;
  assign imem_io_req_valid = core_io_imemReq_valid; // @[Top.scala 22:15]
  assign imem_io_req_bits_addrRequest = core_io_imemReq_bits_addrRequest; // @[Top.scala 22:15]
  assign Tracer_clock = clock;
  assign Tracer_reset = reset;
  assign Tracer_io_rvfiUInt_0 = core_io_rvfiUInt_0; // @[Top.scala 40:19]
  assign Tracer_io_rvfiUInt_1 = core_io_rvfiUInt_1; // @[Top.scala 40:19]
  assign Tracer_io_rvfiUInt_2 = core_io_rvfiUInt_2; // @[Top.scala 40:19]
  assign Tracer_io_rvfiUInt_3 = core_io_rvfiUInt_3; // @[Top.scala 40:19]
  assign Tracer_io_rvfiSInt_0 = core_io_rvfiSInt_0; // @[Top.scala 40:19]
  assign Tracer_io_rvfiSInt_1 = core_io_rvfiSInt_1; // @[Top.scala 40:19]
  assign Tracer_io_rvfiSInt_2 = core_io_rvfiSInt_2; // @[Top.scala 40:19]
  assign Tracer_io_rvfiSInt_3 = core_io_rvfiSInt_3; // @[Top.scala 40:19]
  assign Tracer_io_rvfiSInt_4 = core_io_rvfiSInt_4; // @[Top.scala 40:19]
  assign Tracer_io_rvfiBool_0 = core_io_rvfiBool_0; // @[Top.scala 40:19]
  assign Tracer_io_rvfiRegAddr_0 = core_io_rvfiRegAddr_0; // @[Top.scala 40:19]
  assign Tracer_io_rvfiRegAddr_1 = core_io_rvfiRegAddr_1; // @[Top.scala 40:19]
  assign Tracer_io_rvfiRegAddr_2 = core_io_rvfiRegAddr_2; // @[Top.scala 40:19]
endmodule
