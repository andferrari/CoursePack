include("src/nfxp.jl")
nfxp.maxlike()
p = nfxp.Param()
nfxp.VFI!(p)
data = nfxp.simdata(50,119,p)
include("test/runtests.jl")
nfxp.max_optim()
nfxp.max_nlopt()