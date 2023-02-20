
process VcfToBed{
    // publishDir "${params.output_dir}/${task.process.replaceAll(':', '/')}", pattern: "", mode: 'copy'
    container 'damicyclomics/cyclomicseq:0.7.2'

    input:
        path(vcf)

    output:
       path("${vcf.simpleName}.bed")
    
    script:
        """
        vcf2bed < $vcf > ${vcf.simpleName}.bed
        """
}
