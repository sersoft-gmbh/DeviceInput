import Foundation
/**
* This strcut is replicating a C struct.
* It's crucial that this is not changed and matches the C Struct exactly.
* Otherwise it might not be possible to read events!
*/
internal struct CInputEvent {
    let time: timeval
    let type: CUnsignedShort
    let code: CUnsignedShort
    let value: CUnsignedInt

    // Instances are created by the system. No init needed. This gets optimized away by the compiler.
    private init() { time = timeval(); type = CUnsignedShort(); code = CUnsignedShort(); value = CUnsignedInt() }
}
