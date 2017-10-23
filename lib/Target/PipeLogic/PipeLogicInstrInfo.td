class PipeLogicOp<bits<4> val> {
  bits<4> Value = val;
}

def PPL_SUB : PipeLogicOp<0x0>;
def PPL_MOV : PipeLogicOp<0x0>;
def PPL_BR : PipeLogicOp<0x0>;
def PPL_LD : PipeLogicOp<0x0>;
def PPL_ST : PipeLogicOp<0x0>;
def PPL_SHL : PipeLogicOp<0x0>;
def PPL_ROT : PipeLogicOp<0x0>;
def PPL_NOR : PipeLogicOp<0x0>;

def PPL_CSUB : PipeLogicOp<0x0>;
def PPL_CMOV : PipeLogicOp<0x0>;
def PPL_CBR : PipeLogicOp<0x0>;
def PPL_CLD : PipeLogicOp<0x0>;
def PPL_CST : PipeLogicOp<0x0>;
def PPL_CSHL : PipeLogicOp<0x0>;
def PPL_CROT : PipeLogicOp<0x0>;
def PPL_CNOR : PipeLogicOp<0x0>;

class InstPipeLogic<dag outs, dag ins, string asmstr, list<dag> pattern>
  : Instruction {
  field bits<16> Inst;
  field bits<16> SoftFail = 0;
  let Size = 2;

  let Namespace = "PipeLogic";
  let DecoderNamespace = "PipeLogic";

  PipeLogicOp PPLop;
  let Inst{15-12} = PPLop.Value;

  dag OutOperandList = outs;
  dag InOperandList = ins;
  let AsmString = asmstr;
  let Pattern = pattern;
}
