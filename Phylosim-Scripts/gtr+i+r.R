# Load necessary libraries
library(phylosim)
library(ape)

set.seed(42)

# Define the output directory. Change it with your path
output_dir <- "~/Desktop/Course_Work/Fall2024/Comp_Methods/Project-Files and Reports"

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# Define taxa quantities and sequence lengths
taxa_values <- c(10, 25, 50)
seq_lengths <- c(500, 1000, 1500)

# Loop through all combinations of taxa and sequence lengths
for (num_taxa in taxa_values) {
  for (sequence_length in seq_lengths) {
    
    cat("Running GTR + I + R simulation for", num_taxa, "taxa and", sequence_length, "bp...\n")
    
    # Create a random phylogenetic tree with 'num_taxa' taxa
    tree <- rtree(num_taxa)
    tree$root.edge <- 0.1  # Add a root edge
    
    # Save the tree to a Newick file
    write.tree(tree, file=file.path(output_dir, paste0("gtr_tree_", num_taxa, "_taxa_", sequence_length, "bp.nwk")))
    
    # Set up the GTR + I + R substitution model
    gtr_model <- GTR(
      rate.params = list("a"=1, "b"=2, "c"=1, "d"=2, "e"=1, "f"=2),
      invariant.prob=0.1,
      rate.params.rate=1.5
    )
    
    # Create root sequence with 'sequence_length' nucleotides
    root_seq <- NucleotideSequence(
      length=sequence_length,
      processes=list(list(gtr_model))
    )
    
    # Sample nucleotide states for the root sequence
    sampleStates(root_seq)
    
    # Create and run the simulation
    sim <- PhyloSim(
      root.seq=root_seq,
      phylo=tree
    )
    Simulate(sim)
    
    # Save the alignments in various formats
    saveAlignment(sim, file=file.path(output_dir, paste0("gtr_alignment_", num_taxa, "_taxa_", sequence_length, "bp.fasta")), format="fasta")
    saveAlignment(sim, file=file.path(output_dir, paste0("gtr_alignment_", num_taxa, "_taxa_", sequence_length, "bp.nexus")), format="nexus")
    
    # Save the true tree for comparison
    write.tree(sim$phylo, file=file.path(output_dir, paste0("gtr_true_tree_", num_taxa, "_taxa_", sequence_length, "bp.nwk")))
    
    cat("GTR + I + R simulation complete for", num_taxa, "taxa and", sequence_length, "bp.\n\n")
  }
}

cat("All GTR + I + R simulations completed. Files saved in:", output_dir, "\n")
