u = Union(Uint8, Bool)            # A new type
@assert typeof(u) == UnionType    # Julia has a type for all union types

@assert isa(0x08, u)              # Uint8 values belong
@assert isa(false, u)             # Boolean values belong
@assert isa(true, u)
@assert !isa(256, u)              # Not a Uint8, does not belong
@assert !isa((0x08, true), u)     # Tuples do not belong
