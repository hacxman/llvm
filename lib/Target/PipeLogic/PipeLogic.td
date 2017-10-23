include "llvm/Target/Target.td"

include "PipeLogicInstrInfo.td"

def PipeLogicInstrInfo : InstrInfo;

def PipeLogicInstPrinter : AsmWriter {
  string AsmWriterClassName = "InstPrinter";
  bit isMCAsmWriter = 1;
}

def PipeLogicAsmParser : AsmParser {
  bit HasMnemonicFirst = 0;
}

def BPFAsmParserVariant : AsmParserVariant {
  int Variant = 0;
  string Name = "PipeLogic"
  string BreakCharacters = ".";
}

def PipeLogic : Target {
  let InstructionSet = PipeLogicInstrInfo;
  let AssemblyWriters = [PipeLogicInstPrinter];
  let AssemblyParsers = [PipeLogicAsmParser];
  let AssemblyParserVariants = [PipeLogicParserVariant];
}
