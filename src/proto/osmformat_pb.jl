# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct HeaderBBox <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HeaderBBox(; kwargs...)
        obj = new(meta(HeaderBBox), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct HeaderBBox
const __meta_HeaderBBox = Ref{ProtoMeta}()
function meta(::Type{HeaderBBox})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HeaderBBox)
            __meta_HeaderBBox[] = target = ProtoMeta(HeaderBBox)
            req = Symbol[:left,:right,:top,:bottom]
            wtype = Dict(:left => :sint64, :right => :sint64, :top => :sint64, :bottom => :sint64)
            allflds = Pair{Symbol,Union{Type,String}}[:left => Int64, :right => Int64, :top => Int64, :bottom => Int64]
            meta(target, HeaderBBox, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HeaderBBox[]
    end
end
function Base.getproperty(obj::HeaderBBox, name::Symbol)
    if name === :left
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :right
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :top
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :bottom
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct HeaderBlock <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HeaderBlock(; kwargs...)
        obj = new(meta(HeaderBlock), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct HeaderBlock
const __meta_HeaderBlock = Ref{ProtoMeta}()
function meta(::Type{HeaderBlock})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HeaderBlock)
            __meta_HeaderBlock[] = target = ProtoMeta(HeaderBlock)
            fnum = Int[1,4,5,16,17,32,33,34]
            allflds = Pair{Symbol,Union{Type,String}}[:bbox => HeaderBBox, :required_features => Base.Vector{AbstractString}, :optional_features => Base.Vector{AbstractString}, :writingprogram => AbstractString, :source => AbstractString, :osmosis_replication_timestamp => Int64, :osmosis_replication_sequence_number => Int64, :osmosis_replication_base_url => AbstractString]
            meta(target, HeaderBlock, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HeaderBlock[]
    end
end
function Base.getproperty(obj::HeaderBlock, name::Symbol)
    if name === :bbox
        return (obj.__protobuf_jl_internal_values[name])::HeaderBBox
    elseif name === :required_features
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :optional_features
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :writingprogram
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :source
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :osmosis_replication_timestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :osmosis_replication_sequence_number
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :osmosis_replication_base_url
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct StringTable <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringTable(; kwargs...)
        obj = new(meta(StringTable), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct StringTable
const __meta_StringTable = Ref{ProtoMeta}()
function meta(::Type{StringTable})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringTable)
            __meta_StringTable[] = target = ProtoMeta(StringTable)
            allflds = Pair{Symbol,Union{Type,String}}[:s => Base.Vector{Array{UInt8,1}}]
            meta(target, StringTable, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringTable[]
    end
end
function Base.getproperty(obj::StringTable, name::Symbol)
    if name === :s
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Array{UInt8,1}}
    else
        getfield(obj, name)
    end
end

mutable struct Info <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Info(; kwargs...)
        obj = new(meta(Info), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Info
const __meta_Info = Ref{ProtoMeta}()
function meta(::Type{Info})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Info)
            __meta_Info[] = target = ProtoMeta(Info)
            val = Dict{Symbol,Any}(:version => -1)
            allflds = Pair{Symbol,Union{Type,String}}[:version => Int32, :timestamp => Int64, :changeset => Int64, :uid => Int32, :user_sid => UInt32, :visible => Bool]
            meta(target, Info, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Info[]
    end
end
function Base.getproperty(obj::Info, name::Symbol)
    if name === :version
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :timestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :changeset
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :uid
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :user_sid
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :visible
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct DenseInfo <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DenseInfo(; kwargs...)
        obj = new(meta(DenseInfo), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DenseInfo
const __meta_DenseInfo = Ref{ProtoMeta}()
function meta(::Type{DenseInfo})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DenseInfo)
            __meta_DenseInfo[] = target = ProtoMeta(DenseInfo)
            pack = Symbol[:version,:timestamp,:changeset,:uid,:user_sid,:visible]
            wtype = Dict(:timestamp => :sint64, :changeset => :sint64, :uid => :sint32, :user_sid => :sint32)
            allflds = Pair{Symbol,Union{Type,String}}[:version => Base.Vector{Int32}, :timestamp => Base.Vector{Int64}, :changeset => Base.Vector{Int64}, :uid => Base.Vector{Int32}, :user_sid => Base.Vector{Int32}, :visible => Base.Vector{Bool}]
            meta(target, DenseInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DenseInfo[]
    end
end
function Base.getproperty(obj::DenseInfo, name::Symbol)
    if name === :version
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :timestamp
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :changeset
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :uid
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :user_sid
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :visible
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    else
        getfield(obj, name)
    end
end

mutable struct ChangeSet <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ChangeSet(; kwargs...)
        obj = new(meta(ChangeSet), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ChangeSet
const __meta_ChangeSet = Ref{ProtoMeta}()
function meta(::Type{ChangeSet})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ChangeSet)
            __meta_ChangeSet[] = target = ProtoMeta(ChangeSet)
            req = Symbol[:id]
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64]
            meta(target, ChangeSet, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ChangeSet[]
    end
end
function Base.getproperty(obj::ChangeSet, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct Node <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Node(; kwargs...)
        obj = new(meta(Node), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Node
const __meta_Node = Ref{ProtoMeta}()
function meta(::Type{Node})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Node)
            __meta_Node[] = target = ProtoMeta(Node)
            req = Symbol[:id,:lat,:lon]
            fnum = Int[1,2,3,4,8,9]
            pack = Symbol[:keys,:vals]
            wtype = Dict(:id => :sint64, :lat => :sint64, :lon => :sint64)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :keys => Base.Vector{UInt32}, :vals => Base.Vector{UInt32}, :info => Info, :lat => Int64, :lon => Int64]
            meta(target, Node, allflds, req, fnum, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Node[]
    end
end
function Base.getproperty(obj::Node, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :vals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :info
        return (obj.__protobuf_jl_internal_values[name])::Info
    elseif name === :lat
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :lon
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct DenseNodes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DenseNodes(; kwargs...)
        obj = new(meta(DenseNodes), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DenseNodes
const __meta_DenseNodes = Ref{ProtoMeta}()
function meta(::Type{DenseNodes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DenseNodes)
            __meta_DenseNodes[] = target = ProtoMeta(DenseNodes)
            fnum = Int[1,5,8,9,10]
            pack = Symbol[:id,:lat,:lon,:keys_vals]
            wtype = Dict(:id => :sint64, :lat => :sint64, :lon => :sint64)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Base.Vector{Int64}, :denseinfo => DenseInfo, :lat => Base.Vector{Int64}, :lon => Base.Vector{Int64}, :keys_vals => Base.Vector{Int32}]
            meta(target, DenseNodes, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DenseNodes[]
    end
end
function Base.getproperty(obj::DenseNodes, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :denseinfo
        return (obj.__protobuf_jl_internal_values[name])::DenseInfo
    elseif name === :lat
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :lon
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keys_vals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    else
        getfield(obj, name)
    end
end

mutable struct Way <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Way(; kwargs...)
        obj = new(meta(Way), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Way
const __meta_Way = Ref{ProtoMeta}()
function meta(::Type{Way})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Way)
            __meta_Way[] = target = ProtoMeta(Way)
            req = Symbol[:id]
            fnum = Int[1,2,3,4,8,9,10]
            pack = Symbol[:keys,:vals,:refs,:lat,:lon]
            wtype = Dict(:refs => :sint64, :lat => :sint64, :lon => :sint64)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :keys => Base.Vector{UInt32}, :vals => Base.Vector{UInt32}, :info => Info, :refs => Base.Vector{Int64}, :lat => Base.Vector{Int64}, :lon => Base.Vector{Int64}]
            meta(target, Way, allflds, req, fnum, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Way[]
    end
end
function Base.getproperty(obj::Way, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :vals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :info
        return (obj.__protobuf_jl_internal_values[name])::Info
    elseif name === :refs
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :lat
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :lon
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

const Relation_MemberType = (;[
    Symbol("NODE") => Int32(0),
    Symbol("WAY") => Int32(1),
    Symbol("RELATION") => Int32(2),
]...)

mutable struct Relation <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Relation(; kwargs...)
        obj = new(meta(Relation), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Relation
const __meta_Relation = Ref{ProtoMeta}()
function meta(::Type{Relation})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Relation)
            __meta_Relation[] = target = ProtoMeta(Relation)
            req = Symbol[:id]
            fnum = Int[1,2,3,4,8,9,10]
            pack = Symbol[:keys,:vals,:roles_sid,:memids,:types]
            wtype = Dict(:memids => :sint64)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :keys => Base.Vector{UInt32}, :vals => Base.Vector{UInt32}, :info => Info, :roles_sid => Base.Vector{Int32}, :memids => Base.Vector{Int64}, :types => Base.Vector{Int32}]
            meta(target, Relation, allflds, req, fnum, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Relation[]
    end
end
function Base.getproperty(obj::Relation, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :vals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :info
        return (obj.__protobuf_jl_internal_values[name])::Info
    elseif name === :roles_sid
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :memids
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :types
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    else
        getfield(obj, name)
    end
end

mutable struct PrimitiveGroup <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PrimitiveGroup(; kwargs...)
        obj = new(meta(PrimitiveGroup), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct PrimitiveGroup
const __meta_PrimitiveGroup = Ref{ProtoMeta}()
function meta(::Type{PrimitiveGroup})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PrimitiveGroup)
            __meta_PrimitiveGroup[] = target = ProtoMeta(PrimitiveGroup)
            allflds = Pair{Symbol,Union{Type,String}}[:nodes => Base.Vector{Node}, :dense => DenseNodes, :ways => Base.Vector{Way}, :relations => Base.Vector{Relation}, :changesets => Base.Vector{ChangeSet}]
            meta(target, PrimitiveGroup, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PrimitiveGroup[]
    end
end
function Base.getproperty(obj::PrimitiveGroup, name::Symbol)
    if name === :nodes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Node}
    elseif name === :dense
        return (obj.__protobuf_jl_internal_values[name])::DenseNodes
    elseif name === :ways
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Way}
    elseif name === :relations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Relation}
    elseif name === :changesets
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ChangeSet}
    else
        getfield(obj, name)
    end
end

mutable struct PrimitiveBlock <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PrimitiveBlock(; kwargs...)
        obj = new(meta(PrimitiveBlock), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct PrimitiveBlock
const __meta_PrimitiveBlock = Ref{ProtoMeta}()
function meta(::Type{PrimitiveBlock})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PrimitiveBlock)
            __meta_PrimitiveBlock[] = target = ProtoMeta(PrimitiveBlock)
            req = Symbol[:stringtable]
            val = Dict{Symbol,Any}(:granularity => 100, :lat_offset => 0, :lon_offset => 0, :date_granularity => 1000)
            fnum = Int[1,2,17,19,20,18]
            allflds = Pair{Symbol,Union{Type,String}}[:stringtable => StringTable, :primitivegroup => Base.Vector{PrimitiveGroup}, :granularity => Int32, :lat_offset => Int64, :lon_offset => Int64, :date_granularity => Int32]
            meta(target, PrimitiveBlock, allflds, req, fnum, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PrimitiveBlock[]
    end
end
function Base.getproperty(obj::PrimitiveBlock, name::Symbol)
    if name === :stringtable
        return (obj.__protobuf_jl_internal_values[name])::StringTable
    elseif name === :primitivegroup
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{PrimitiveGroup}
    elseif name === :granularity
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :lat_offset
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :lon_offset
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :date_granularity
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export HeaderBlock, HeaderBBox, PrimitiveBlock, PrimitiveGroup, StringTable, Info, DenseInfo, ChangeSet, Node, DenseNodes, Way, Relation_MemberType, Relation
