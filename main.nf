params.input_read_dir             = ""
params.backbone                   = "BB42"
params.reference                  = "T2T.fasta"



workflow {
    println ("just a test")
    read_dir_ch = Channel.fromPath( params.input_read_dir, type: 'dir', checkIfExists: true)
    reference_genome = Channel.fromPath(params.reference, checkIfExists: true)

}