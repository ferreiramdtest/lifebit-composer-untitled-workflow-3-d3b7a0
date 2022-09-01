nextflow.enable.dsl=2

include { traits_gcta_greml # 1 } from './modules/traits_gcta_greml # 1/module.nf'
include { gwas # 1 } from './modules/gwas # 1/module.nf'

workflow {
input1 = Channel.fromPath(params.input1)
input2 = Channel.fromPath(params.input2)
input3 = Channel.fromPath(params.input3).splitCsv()
input4 = Channel.fromPath(params.input4)
traits_gcta_greml # 1(input1, input2)
gwas # 1(input3, input4)
}
