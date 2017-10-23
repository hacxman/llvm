#include "Pipelogic.h"
#include "llvm/Support/TargetRegistry.h"
using namespace llvm;

Target &llvm::getThePipeLogicLETarget() {
  static Target ThePipeLogicLETarget;
  return ThePipeLogicLETarget;
}
/*Target &llvm::getThePipeLogicBETarget() {
  static Target ThePipeLogicBETarget;
  return ThePipeLogicBETarget;
}
Target &llvm::getThePipeLogicTarget() {
  static Target ThePipeLogicTarget;
  return ThePipeLogicTarget;
}*/

extern "C" void LLVMInitializePipeLogicTargetInfo() {
  RegisterTarget<Triple::pipelogic, /*HasJIT=*/true>
    X(getThePipeLogicLETarget(), "pipel", "PipeLogic");
}
