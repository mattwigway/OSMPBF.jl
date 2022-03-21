# OSMPBF.jl

Julia library for reading [OSM PBF](https://wiki.openstreetmap.org/wiki/PBF_Format). The basic interface is through the function `scan_pbf`, which is called with callbacks for nodes, ways, and relations. It may require several passes through the file to read everything, as there is no guarantee that (say) nodes come before ways. For instance, this code will extract all nodes that occur in highways.

```julia

include("src/OSMPBF.jl")

using .OSMPBF

highway_node_ids = Set{Int64}()
highway_nodes = Dict{Int64, Node}()

function way_handler(way)
    if haskey(way.tags, "highway")
        union!(highway_node_ids, way.nodes)
    end
end

function node_handler(node)
    # store node
    if in(node.id, highway_node_ids)
        highway_nodes[node.id] = node
    end
end

# parse ways
scan_pbf(pbf_file, ways=way_handler)

# second pass, parse nodes
scan_pbf(pbf_file, nodes=node_handler)

```

## OSMTool

OSMPBF.jl also ships with a command-line tool for processing OSM data, in `scripts/osmtool`. This is mostly a proof-of-concept (and the code may be useful as an example of using OSMPBF.jl), as other tools are more fully featured, but it allows you to convert OSM PBF data to any GDAL-supported format, while optionally filtering based on node and way tags. For instance,

    osmtool --filter-ways !isnothing(highway) --write-gdal-ways ways.gpkg --gdal-driver GeoPackage file.osm.pbf

Will filter out only ways with highway tags from file.osm.pbf and write them to ways.gpkg. See `osmtool --help` for more information.