import Base.@deprecate

import Base:
    joinpath,
    dirname,
    ispath,
    realpath,
    normpath,
    abspath,
    relpath,
    filemode,
    isabspath,
    mkpath,
    mv,
    rm

@deprecate joinpath(root::AbstractPath, pieces::Union{AbstractPath, AbstractString}...) join(root, pieces...)
@deprecate dirname(path::AbstractPath) parent(path)
@deprecate ispath(path::AbstractPath) exists(path)
@deprecate realpath(path::AbstractPath) real(path)
@deprecate normpath(path::AbstractPath) norm(path)
@deprecate abspath(path::AbstractPath) abs(path)
@deprecate relpath(path::AbstractPath) relative(path)
@deprecate filemode(path::AbstractPath) mode(path)
@deprecate isabspath(path::AbstractPath) isabs(path)
@deprecate mkpath(path::AbstractPath) mkdir(path; recursive=true)
@deprecate mv(src::AbstractPath, dest::AbstractPath; kwargs...) move(src, dest; kwargs...)
@deprecate rm(path::AbstractPath; kwargs...) remove(path; kwargs...)
