# Autogenerated using ProtoBuf.jl v1.0.14 on 2023-10-30T15:35:07.535
# original file: /Users/mwbc/git/OSMPBF.jl/proto/osmformat.proto (proto2 syntax)

import ProtoBuf as PB
using ProtoBuf: OneOf
using ProtoBuf.EnumX: @enumx

export var"Relation.MemberType", DenseInfo, StringTable, ChangeSet, HeaderBBox, Info
export DenseNodes, HeaderBlock, Relation, Node, Way, PrimitiveGroup, PrimitiveBlock

@enumx var"Relation.MemberType" NODE=0 WAY=1 RELATION=2

struct DenseInfo
    version::Vector{Int32}
    timestamp::Vector{Int64}
    changeset::Vector{Int64}
    uid::Vector{Int32}
    user_sid::Vector{Int32}
    visible::Vector{Bool}
end
PB.default_values(::Type{DenseInfo}) = (;version = Vector{Int32}(), timestamp = Vector{Int64}(), changeset = Vector{Int64}(), uid = Vector{Int32}(), user_sid = Vector{Int32}(), visible = Vector{Bool}())
PB.field_numbers(::Type{DenseInfo}) = (;version = 1, timestamp = 2, changeset = 3, uid = 4, user_sid = 5, visible = 6)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:DenseInfo})
    version = PB.BufferedVector{Int32}()
    timestamp = PB.BufferedVector{Int64}()
    changeset = PB.BufferedVector{Int64}()
    uid = PB.BufferedVector{Int32}()
    user_sid = PB.BufferedVector{Int32}()
    visible = PB.BufferedVector{Bool}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, wire_type, version)
        elseif field_number == 2
            PB.decode!(d, wire_type, timestamp, Val{:zigzag})
        elseif field_number == 3
            PB.decode!(d, wire_type, changeset, Val{:zigzag})
        elseif field_number == 4
            PB.decode!(d, wire_type, uid, Val{:zigzag})
        elseif field_number == 5
            PB.decode!(d, wire_type, user_sid, Val{:zigzag})
        elseif field_number == 6
            PB.decode!(d, wire_type, visible)
        else
            PB.skip(d, wire_type)
        end
    end
    return DenseInfo(version[], timestamp[], changeset[], uid[], user_sid[], visible[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::DenseInfo)
    initpos = position(e.io)
    !isempty(x.version) && PB.encode(e, 1, x.version)
    !isempty(x.timestamp) && PB.encode(e, 2, x.timestamp, Val{:zigzag})
    !isempty(x.changeset) && PB.encode(e, 3, x.changeset, Val{:zigzag})
    !isempty(x.uid) && PB.encode(e, 4, x.uid, Val{:zigzag})
    !isempty(x.user_sid) && PB.encode(e, 5, x.user_sid, Val{:zigzag})
    !isempty(x.visible) && PB.encode(e, 6, x.visible)
    return position(e.io) - initpos
end
function PB._encoded_size(x::DenseInfo)
    encoded_size = 0
    !isempty(x.version) && (encoded_size += PB._encoded_size(x.version, 1))
    !isempty(x.timestamp) && (encoded_size += PB._encoded_size(x.timestamp, 2, Val{:zigzag}))
    !isempty(x.changeset) && (encoded_size += PB._encoded_size(x.changeset, 3, Val{:zigzag}))
    !isempty(x.uid) && (encoded_size += PB._encoded_size(x.uid, 4, Val{:zigzag}))
    !isempty(x.user_sid) && (encoded_size += PB._encoded_size(x.user_sid, 5, Val{:zigzag}))
    !isempty(x.visible) && (encoded_size += PB._encoded_size(x.visible, 6))
    return encoded_size
end

struct StringTable
    s::Vector{Vector{UInt8}}
end
PB.default_values(::Type{StringTable}) = (;s = Vector{Vector{UInt8}}())
PB.field_numbers(::Type{StringTable}) = (;s = 1)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:StringTable})
    s = PB.BufferedVector{Vector{UInt8}}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, s)
        else
            PB.skip(d, wire_type)
        end
    end
    return StringTable(s[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::StringTable)
    initpos = position(e.io)
    !isempty(x.s) && PB.encode(e, 1, x.s)
    return position(e.io) - initpos
end
function PB._encoded_size(x::StringTable)
    encoded_size = 0
    !isempty(x.s) && (encoded_size += PB._encoded_size(x.s, 1))
    return encoded_size
end

struct ChangeSet
    id::Int64
end
PB.default_values(::Type{ChangeSet}) = (;id = zero(Int64))
PB.field_numbers(::Type{ChangeSet}) = (;id = 1)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:ChangeSet})
    id = zero(Int64)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            id = PB.decode(d, Int64)
        else
            PB.skip(d, wire_type)
        end
    end
    return ChangeSet(id)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::ChangeSet)
    initpos = position(e.io)
    x.id != zero(Int64) && PB.encode(e, 1, x.id)
    return position(e.io) - initpos
end
function PB._encoded_size(x::ChangeSet)
    encoded_size = 0
    x.id != zero(Int64) && (encoded_size += PB._encoded_size(x.id, 1))
    return encoded_size
end

struct HeaderBBox
    left::Int64
    right::Int64
    top::Int64
    bottom::Int64
end
PB.default_values(::Type{HeaderBBox}) = (;left = zero(Int64), right = zero(Int64), top = zero(Int64), bottom = zero(Int64))
PB.field_numbers(::Type{HeaderBBox}) = (;left = 1, right = 2, top = 3, bottom = 4)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:HeaderBBox})
    left = zero(Int64)
    right = zero(Int64)
    top = zero(Int64)
    bottom = zero(Int64)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            left = PB.decode(d, Int64, Val{:zigzag})
        elseif field_number == 2
            right = PB.decode(d, Int64, Val{:zigzag})
        elseif field_number == 3
            top = PB.decode(d, Int64, Val{:zigzag})
        elseif field_number == 4
            bottom = PB.decode(d, Int64, Val{:zigzag})
        else
            PB.skip(d, wire_type)
        end
    end
    return HeaderBBox(left, right, top, bottom)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::HeaderBBox)
    initpos = position(e.io)
    x.left != zero(Int64) && PB.encode(e, 1, x.left, Val{:zigzag})
    x.right != zero(Int64) && PB.encode(e, 2, x.right, Val{:zigzag})
    x.top != zero(Int64) && PB.encode(e, 3, x.top, Val{:zigzag})
    x.bottom != zero(Int64) && PB.encode(e, 4, x.bottom, Val{:zigzag})
    return position(e.io) - initpos
end
function PB._encoded_size(x::HeaderBBox)
    encoded_size = 0
    x.left != zero(Int64) && (encoded_size += PB._encoded_size(x.left, 1, Val{:zigzag}))
    x.right != zero(Int64) && (encoded_size += PB._encoded_size(x.right, 2, Val{:zigzag}))
    x.top != zero(Int64) && (encoded_size += PB._encoded_size(x.top, 3, Val{:zigzag}))
    x.bottom != zero(Int64) && (encoded_size += PB._encoded_size(x.bottom, 4, Val{:zigzag}))
    return encoded_size
end

struct Info
    version::Int32
    timestamp::Int64
    changeset::Int64
    uid::Int32
    user_sid::UInt32
    visible::Bool
end
PB.default_values(::Type{Info}) = (;version = Int32(-1), timestamp = zero(Int64), changeset = zero(Int64), uid = zero(Int32), user_sid = zero(UInt32), visible = false)
PB.field_numbers(::Type{Info}) = (;version = 1, timestamp = 2, changeset = 3, uid = 4, user_sid = 5, visible = 6)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:Info})
    version = Int32(-1)
    timestamp = zero(Int64)
    changeset = zero(Int64)
    uid = zero(Int32)
    user_sid = zero(UInt32)
    visible = false
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            version = PB.decode(d, Int32)
        elseif field_number == 2
            timestamp = PB.decode(d, Int64)
        elseif field_number == 3
            changeset = PB.decode(d, Int64)
        elseif field_number == 4
            uid = PB.decode(d, Int32)
        elseif field_number == 5
            user_sid = PB.decode(d, UInt32)
        elseif field_number == 6
            visible = PB.decode(d, Bool)
        else
            PB.skip(d, wire_type)
        end
    end
    return Info(version, timestamp, changeset, uid, user_sid, visible)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::Info)
    initpos = position(e.io)
    x.version != Int32(-1) && PB.encode(e, 1, x.version)
    x.timestamp != zero(Int64) && PB.encode(e, 2, x.timestamp)
    x.changeset != zero(Int64) && PB.encode(e, 3, x.changeset)
    x.uid != zero(Int32) && PB.encode(e, 4, x.uid)
    x.user_sid != zero(UInt32) && PB.encode(e, 5, x.user_sid)
    x.visible != false && PB.encode(e, 6, x.visible)
    return position(e.io) - initpos
end
function PB._encoded_size(x::Info)
    encoded_size = 0
    x.version != Int32(-1) && (encoded_size += PB._encoded_size(x.version, 1))
    x.timestamp != zero(Int64) && (encoded_size += PB._encoded_size(x.timestamp, 2))
    x.changeset != zero(Int64) && (encoded_size += PB._encoded_size(x.changeset, 3))
    x.uid != zero(Int32) && (encoded_size += PB._encoded_size(x.uid, 4))
    x.user_sid != zero(UInt32) && (encoded_size += PB._encoded_size(x.user_sid, 5))
    x.visible != false && (encoded_size += PB._encoded_size(x.visible, 6))
    return encoded_size
end

struct DenseNodes
    id::Vector{Int64}
    denseinfo::Union{Nothing,DenseInfo}
    lat::Vector{Int64}
    lon::Vector{Int64}
    keys_vals::Vector{Int32}
end
PB.default_values(::Type{DenseNodes}) = (;id = Vector{Int64}(), denseinfo = nothing, lat = Vector{Int64}(), lon = Vector{Int64}(), keys_vals = Vector{Int32}())
PB.field_numbers(::Type{DenseNodes}) = (;id = 1, denseinfo = 5, lat = 8, lon = 9, keys_vals = 10)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:DenseNodes})
    id = PB.BufferedVector{Int64}()
    denseinfo = Ref{Union{Nothing,DenseInfo}}(nothing)
    lat = PB.BufferedVector{Int64}()
    lon = PB.BufferedVector{Int64}()
    keys_vals = PB.BufferedVector{Int32}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, wire_type, id, Val{:zigzag})
        elseif field_number == 5
            PB.decode!(d, denseinfo)
        elseif field_number == 8
            PB.decode!(d, wire_type, lat, Val{:zigzag})
        elseif field_number == 9
            PB.decode!(d, wire_type, lon, Val{:zigzag})
        elseif field_number == 10
            PB.decode!(d, wire_type, keys_vals)
        else
            PB.skip(d, wire_type)
        end
    end
    return DenseNodes(id[], denseinfo[], lat[], lon[], keys_vals[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::DenseNodes)
    initpos = position(e.io)
    !isempty(x.id) && PB.encode(e, 1, x.id, Val{:zigzag})
    !isnothing(x.denseinfo) && PB.encode(e, 5, x.denseinfo)
    !isempty(x.lat) && PB.encode(e, 8, x.lat, Val{:zigzag})
    !isempty(x.lon) && PB.encode(e, 9, x.lon, Val{:zigzag})
    !isempty(x.keys_vals) && PB.encode(e, 10, x.keys_vals)
    return position(e.io) - initpos
end
function PB._encoded_size(x::DenseNodes)
    encoded_size = 0
    !isempty(x.id) && (encoded_size += PB._encoded_size(x.id, 1, Val{:zigzag}))
    !isnothing(x.denseinfo) && (encoded_size += PB._encoded_size(x.denseinfo, 5))
    !isempty(x.lat) && (encoded_size += PB._encoded_size(x.lat, 8, Val{:zigzag}))
    !isempty(x.lon) && (encoded_size += PB._encoded_size(x.lon, 9, Val{:zigzag}))
    !isempty(x.keys_vals) && (encoded_size += PB._encoded_size(x.keys_vals, 10))
    return encoded_size
end

struct HeaderBlock
    bbox::Union{Nothing,HeaderBBox}
    required_features::Vector{String}
    optional_features::Vector{String}
    writingprogram::String
    source::String
    osmosis_replication_timestamp::Int64
    osmosis_replication_sequence_number::Int64
    osmosis_replication_base_url::String
end
PB.default_values(::Type{HeaderBlock}) = (;bbox = nothing, required_features = Vector{String}(), optional_features = Vector{String}(), writingprogram = "", source = "", osmosis_replication_timestamp = zero(Int64), osmosis_replication_sequence_number = zero(Int64), osmosis_replication_base_url = "")
PB.field_numbers(::Type{HeaderBlock}) = (;bbox = 1, required_features = 4, optional_features = 5, writingprogram = 16, source = 17, osmosis_replication_timestamp = 32, osmosis_replication_sequence_number = 33, osmosis_replication_base_url = 34)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:HeaderBlock})
    bbox = Ref{Union{Nothing,HeaderBBox}}(nothing)
    required_features = PB.BufferedVector{String}()
    optional_features = PB.BufferedVector{String}()
    writingprogram = ""
    source = ""
    osmosis_replication_timestamp = zero(Int64)
    osmosis_replication_sequence_number = zero(Int64)
    osmosis_replication_base_url = ""
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, bbox)
        elseif field_number == 4
            PB.decode!(d, required_features)
        elseif field_number == 5
            PB.decode!(d, optional_features)
        elseif field_number == 16
            writingprogram = PB.decode(d, String)
        elseif field_number == 17
            source = PB.decode(d, String)
        elseif field_number == 32
            osmosis_replication_timestamp = PB.decode(d, Int64)
        elseif field_number == 33
            osmosis_replication_sequence_number = PB.decode(d, Int64)
        elseif field_number == 34
            osmosis_replication_base_url = PB.decode(d, String)
        else
            PB.skip(d, wire_type)
        end
    end
    return HeaderBlock(bbox[], required_features[], optional_features[], writingprogram, source, osmosis_replication_timestamp, osmosis_replication_sequence_number, osmosis_replication_base_url)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::HeaderBlock)
    initpos = position(e.io)
    !isnothing(x.bbox) && PB.encode(e, 1, x.bbox)
    !isempty(x.required_features) && PB.encode(e, 4, x.required_features)
    !isempty(x.optional_features) && PB.encode(e, 5, x.optional_features)
    !isempty(x.writingprogram) && PB.encode(e, 16, x.writingprogram)
    !isempty(x.source) && PB.encode(e, 17, x.source)
    x.osmosis_replication_timestamp != zero(Int64) && PB.encode(e, 32, x.osmosis_replication_timestamp)
    x.osmosis_replication_sequence_number != zero(Int64) && PB.encode(e, 33, x.osmosis_replication_sequence_number)
    !isempty(x.osmosis_replication_base_url) && PB.encode(e, 34, x.osmosis_replication_base_url)
    return position(e.io) - initpos
end
function PB._encoded_size(x::HeaderBlock)
    encoded_size = 0
    !isnothing(x.bbox) && (encoded_size += PB._encoded_size(x.bbox, 1))
    !isempty(x.required_features) && (encoded_size += PB._encoded_size(x.required_features, 4))
    !isempty(x.optional_features) && (encoded_size += PB._encoded_size(x.optional_features, 5))
    !isempty(x.writingprogram) && (encoded_size += PB._encoded_size(x.writingprogram, 16))
    !isempty(x.source) && (encoded_size += PB._encoded_size(x.source, 17))
    x.osmosis_replication_timestamp != zero(Int64) && (encoded_size += PB._encoded_size(x.osmosis_replication_timestamp, 32))
    x.osmosis_replication_sequence_number != zero(Int64) && (encoded_size += PB._encoded_size(x.osmosis_replication_sequence_number, 33))
    !isempty(x.osmosis_replication_base_url) && (encoded_size += PB._encoded_size(x.osmosis_replication_base_url, 34))
    return encoded_size
end

struct Relation
    id::Int64
    keys::Vector{UInt32}
    vals::Vector{UInt32}
    info::Union{Nothing,Info}
    roles_sid::Vector{Int32}
    memids::Vector{Int64}
    types::Vector{var"Relation.MemberType".T}
end
PB.default_values(::Type{Relation}) = (;id = zero(Int64), keys = Vector{UInt32}(), vals = Vector{UInt32}(), info = nothing, roles_sid = Vector{Int32}(), memids = Vector{Int64}(), types = Vector{var"Relation.MemberType".T}())
PB.field_numbers(::Type{Relation}) = (;id = 1, keys = 2, vals = 3, info = 4, roles_sid = 8, memids = 9, types = 10)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:Relation})
    id = zero(Int64)
    keys = PB.BufferedVector{UInt32}()
    vals = PB.BufferedVector{UInt32}()
    info = Ref{Union{Nothing,Info}}(nothing)
    roles_sid = PB.BufferedVector{Int32}()
    memids = PB.BufferedVector{Int64}()
    types = PB.BufferedVector{var"Relation.MemberType".T}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            id = PB.decode(d, Int64)
        elseif field_number == 2
            PB.decode!(d, wire_type, keys)
        elseif field_number == 3
            PB.decode!(d, wire_type, vals)
        elseif field_number == 4
            PB.decode!(d, info)
        elseif field_number == 8
            PB.decode!(d, wire_type, roles_sid)
        elseif field_number == 9
            PB.decode!(d, wire_type, memids, Val{:zigzag})
        elseif field_number == 10
            PB.decode!(d, wire_type, types)
        else
            PB.skip(d, wire_type)
        end
    end
    return Relation(id, keys[], vals[], info[], roles_sid[], memids[], types[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::Relation)
    initpos = position(e.io)
    x.id != zero(Int64) && PB.encode(e, 1, x.id)
    !isempty(x.keys) && PB.encode(e, 2, x.keys)
    !isempty(x.vals) && PB.encode(e, 3, x.vals)
    !isnothing(x.info) && PB.encode(e, 4, x.info)
    !isempty(x.roles_sid) && PB.encode(e, 8, x.roles_sid)
    !isempty(x.memids) && PB.encode(e, 9, x.memids, Val{:zigzag})
    !isempty(x.types) && PB.encode(e, 10, x.types)
    return position(e.io) - initpos
end
function PB._encoded_size(x::Relation)
    encoded_size = 0
    x.id != zero(Int64) && (encoded_size += PB._encoded_size(x.id, 1))
    !isempty(x.keys) && (encoded_size += PB._encoded_size(x.keys, 2))
    !isempty(x.vals) && (encoded_size += PB._encoded_size(x.vals, 3))
    !isnothing(x.info) && (encoded_size += PB._encoded_size(x.info, 4))
    !isempty(x.roles_sid) && (encoded_size += PB._encoded_size(x.roles_sid, 8))
    !isempty(x.memids) && (encoded_size += PB._encoded_size(x.memids, 9, Val{:zigzag}))
    !isempty(x.types) && (encoded_size += PB._encoded_size(x.types, 10))
    return encoded_size
end

struct Node
    id::Int64
    keys::Vector{UInt32}
    vals::Vector{UInt32}
    info::Union{Nothing,Info}
    lat::Int64
    lon::Int64
end
PB.default_values(::Type{Node}) = (;id = zero(Int64), keys = Vector{UInt32}(), vals = Vector{UInt32}(), info = nothing, lat = zero(Int64), lon = zero(Int64))
PB.field_numbers(::Type{Node}) = (;id = 1, keys = 2, vals = 3, info = 4, lat = 8, lon = 9)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:Node})
    id = zero(Int64)
    keys = PB.BufferedVector{UInt32}()
    vals = PB.BufferedVector{UInt32}()
    info = Ref{Union{Nothing,Info}}(nothing)
    lat = zero(Int64)
    lon = zero(Int64)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            id = PB.decode(d, Int64, Val{:zigzag})
        elseif field_number == 2
            PB.decode!(d, wire_type, keys)
        elseif field_number == 3
            PB.decode!(d, wire_type, vals)
        elseif field_number == 4
            PB.decode!(d, info)
        elseif field_number == 8
            lat = PB.decode(d, Int64, Val{:zigzag})
        elseif field_number == 9
            lon = PB.decode(d, Int64, Val{:zigzag})
        else
            PB.skip(d, wire_type)
        end
    end
    return Node(id, keys[], vals[], info[], lat, lon)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::Node)
    initpos = position(e.io)
    x.id != zero(Int64) && PB.encode(e, 1, x.id, Val{:zigzag})
    !isempty(x.keys) && PB.encode(e, 2, x.keys)
    !isempty(x.vals) && PB.encode(e, 3, x.vals)
    !isnothing(x.info) && PB.encode(e, 4, x.info)
    x.lat != zero(Int64) && PB.encode(e, 8, x.lat, Val{:zigzag})
    x.lon != zero(Int64) && PB.encode(e, 9, x.lon, Val{:zigzag})
    return position(e.io) - initpos
end
function PB._encoded_size(x::Node)
    encoded_size = 0
    x.id != zero(Int64) && (encoded_size += PB._encoded_size(x.id, 1, Val{:zigzag}))
    !isempty(x.keys) && (encoded_size += PB._encoded_size(x.keys, 2))
    !isempty(x.vals) && (encoded_size += PB._encoded_size(x.vals, 3))
    !isnothing(x.info) && (encoded_size += PB._encoded_size(x.info, 4))
    x.lat != zero(Int64) && (encoded_size += PB._encoded_size(x.lat, 8, Val{:zigzag}))
    x.lon != zero(Int64) && (encoded_size += PB._encoded_size(x.lon, 9, Val{:zigzag}))
    return encoded_size
end

struct Way
    id::Int64
    keys::Vector{UInt32}
    vals::Vector{UInt32}
    info::Union{Nothing,Info}
    refs::Vector{Int64}
    lat::Vector{Int64}
    lon::Vector{Int64}
end
PB.default_values(::Type{Way}) = (;id = zero(Int64), keys = Vector{UInt32}(), vals = Vector{UInt32}(), info = nothing, refs = Vector{Int64}(), lat = Vector{Int64}(), lon = Vector{Int64}())
PB.field_numbers(::Type{Way}) = (;id = 1, keys = 2, vals = 3, info = 4, refs = 8, lat = 9, lon = 10)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:Way})
    id = zero(Int64)
    keys = PB.BufferedVector{UInt32}()
    vals = PB.BufferedVector{UInt32}()
    info = Ref{Union{Nothing,Info}}(nothing)
    refs = PB.BufferedVector{Int64}()
    lat = PB.BufferedVector{Int64}()
    lon = PB.BufferedVector{Int64}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            id = PB.decode(d, Int64)
        elseif field_number == 2
            PB.decode!(d, wire_type, keys)
        elseif field_number == 3
            PB.decode!(d, wire_type, vals)
        elseif field_number == 4
            PB.decode!(d, info)
        elseif field_number == 8
            PB.decode!(d, wire_type, refs, Val{:zigzag})
        elseif field_number == 9
            PB.decode!(d, wire_type, lat, Val{:zigzag})
        elseif field_number == 10
            PB.decode!(d, wire_type, lon, Val{:zigzag})
        else
            PB.skip(d, wire_type)
        end
    end
    return Way(id, keys[], vals[], info[], refs[], lat[], lon[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::Way)
    initpos = position(e.io)
    x.id != zero(Int64) && PB.encode(e, 1, x.id)
    !isempty(x.keys) && PB.encode(e, 2, x.keys)
    !isempty(x.vals) && PB.encode(e, 3, x.vals)
    !isnothing(x.info) && PB.encode(e, 4, x.info)
    !isempty(x.refs) && PB.encode(e, 8, x.refs, Val{:zigzag})
    !isempty(x.lat) && PB.encode(e, 9, x.lat, Val{:zigzag})
    !isempty(x.lon) && PB.encode(e, 10, x.lon, Val{:zigzag})
    return position(e.io) - initpos
end
function PB._encoded_size(x::Way)
    encoded_size = 0
    x.id != zero(Int64) && (encoded_size += PB._encoded_size(x.id, 1))
    !isempty(x.keys) && (encoded_size += PB._encoded_size(x.keys, 2))
    !isempty(x.vals) && (encoded_size += PB._encoded_size(x.vals, 3))
    !isnothing(x.info) && (encoded_size += PB._encoded_size(x.info, 4))
    !isempty(x.refs) && (encoded_size += PB._encoded_size(x.refs, 8, Val{:zigzag}))
    !isempty(x.lat) && (encoded_size += PB._encoded_size(x.lat, 9, Val{:zigzag}))
    !isempty(x.lon) && (encoded_size += PB._encoded_size(x.lon, 10, Val{:zigzag}))
    return encoded_size
end

struct PrimitiveGroup
    nodes::Vector{Node}
    dense::Union{Nothing,DenseNodes}
    ways::Vector{Way}
    relations::Vector{Relation}
    changesets::Vector{ChangeSet}
end
PB.default_values(::Type{PrimitiveGroup}) = (;nodes = Vector{Node}(), dense = nothing, ways = Vector{Way}(), relations = Vector{Relation}(), changesets = Vector{ChangeSet}())
PB.field_numbers(::Type{PrimitiveGroup}) = (;nodes = 1, dense = 2, ways = 3, relations = 4, changesets = 5)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:PrimitiveGroup})
    nodes = PB.BufferedVector{Node}()
    dense = Ref{Union{Nothing,DenseNodes}}(nothing)
    ways = PB.BufferedVector{Way}()
    relations = PB.BufferedVector{Relation}()
    changesets = PB.BufferedVector{ChangeSet}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, nodes)
        elseif field_number == 2
            PB.decode!(d, dense)
        elseif field_number == 3
            PB.decode!(d, ways)
        elseif field_number == 4
            PB.decode!(d, relations)
        elseif field_number == 5
            PB.decode!(d, changesets)
        else
            PB.skip(d, wire_type)
        end
    end
    return PrimitiveGroup(nodes[], dense[], ways[], relations[], changesets[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::PrimitiveGroup)
    initpos = position(e.io)
    !isempty(x.nodes) && PB.encode(e, 1, x.nodes)
    !isnothing(x.dense) && PB.encode(e, 2, x.dense)
    !isempty(x.ways) && PB.encode(e, 3, x.ways)
    !isempty(x.relations) && PB.encode(e, 4, x.relations)
    !isempty(x.changesets) && PB.encode(e, 5, x.changesets)
    return position(e.io) - initpos
end
function PB._encoded_size(x::PrimitiveGroup)
    encoded_size = 0
    !isempty(x.nodes) && (encoded_size += PB._encoded_size(x.nodes, 1))
    !isnothing(x.dense) && (encoded_size += PB._encoded_size(x.dense, 2))
    !isempty(x.ways) && (encoded_size += PB._encoded_size(x.ways, 3))
    !isempty(x.relations) && (encoded_size += PB._encoded_size(x.relations, 4))
    !isempty(x.changesets) && (encoded_size += PB._encoded_size(x.changesets, 5))
    return encoded_size
end

struct PrimitiveBlock
    stringtable::StringTable
    primitivegroup::Vector{PrimitiveGroup}
    granularity::Int32
    lat_offset::Int64
    lon_offset::Int64
    date_granularity::Int32
end
PB.default_values(::Type{PrimitiveBlock}) = (;stringtable, primitivegroup = Vector{PrimitiveGroup}(), granularity = Int32(100), lat_offset = Int64(0), lon_offset = Int64(0), date_granularity = Int32(1000))
PB.field_numbers(::Type{PrimitiveBlock}) = (;stringtable = 1, primitivegroup = 2, granularity = 17, lat_offset = 19, lon_offset = 20, date_granularity = 18)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:PrimitiveBlock})
    stringtable = Ref{StringTable}()
    primitivegroup = PB.BufferedVector{PrimitiveGroup}()
    granularity = Int32(100)
    lat_offset = Int64(0)
    lon_offset = Int64(0)
    date_granularity = Int32(1000)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, stringtable)
        elseif field_number == 2
            PB.decode!(d, primitivegroup)
        elseif field_number == 17
            granularity = PB.decode(d, Int32)
        elseif field_number == 19
            lat_offset = PB.decode(d, Int64)
        elseif field_number == 20
            lon_offset = PB.decode(d, Int64)
        elseif field_number == 18
            date_granularity = PB.decode(d, Int32)
        else
            PB.skip(d, wire_type)
        end
    end
    return PrimitiveBlock(stringtable[], primitivegroup[], granularity, lat_offset, lon_offset, date_granularity)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::PrimitiveBlock)
    initpos = position(e.io)
    !isnothing(x.stringtable) && PB.encode(e, 1, x.stringtable)
    !isempty(x.primitivegroup) && PB.encode(e, 2, x.primitivegroup)
    x.granularity != Int32(100) && PB.encode(e, 17, x.granularity)
    x.lat_offset != Int64(0) && PB.encode(e, 19, x.lat_offset)
    x.lon_offset != Int64(0) && PB.encode(e, 20, x.lon_offset)
    x.date_granularity != Int32(1000) && PB.encode(e, 18, x.date_granularity)
    return position(e.io) - initpos
end
function PB._encoded_size(x::PrimitiveBlock)
    encoded_size = 0
    !isnothing(x.stringtable) && (encoded_size += PB._encoded_size(x.stringtable, 1))
    !isempty(x.primitivegroup) && (encoded_size += PB._encoded_size(x.primitivegroup, 2))
    x.granularity != Int32(100) && (encoded_size += PB._encoded_size(x.granularity, 17))
    x.lat_offset != Int64(0) && (encoded_size += PB._encoded_size(x.lat_offset, 19))
    x.lon_offset != Int64(0) && (encoded_size += PB._encoded_size(x.lon_offset, 20))
    x.date_granularity != Int32(1000) && (encoded_size += PB._encoded_size(x.date_granularity, 18))
    return encoded_size
end
