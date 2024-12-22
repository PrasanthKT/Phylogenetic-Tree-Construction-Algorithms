# Exploring Phylogenetic Tree Construction: A Framework for Initial Algorithm Selection
Phylogenetic tree construction is the process of creating diagrams that represent evolutionary relationships among different species or genes based on their genetic data. It helps to understand evolutionary relationships, trace the origin of species, and study the genetic relationships between organisms/taxa.

### Objective
This study aims to identify a phylogenetic tree construction method balancing accuracy and efficiency. Simulated trees, generated under simple (JC69) and complex (GTR + I + R) models, were reconstructed using distance-based (Neighbor-Joining, Minimum Evolution, UPGMA) and character-based (Maximum Likelihood, Maximum Parsimony) methods. Tree accuracy was evaluated using Maximum Agreement Subtree (MAST), CopheneticL2 (CL2), and RFCluster Weighted metrics. Distance-based methods are expected to perform well for simpler models, while Maximum Likelihood captures complex patterns with higher computational cost.

### Tools and Dependencies
  	
1. Phylosim
R package for simulating molecular sequence evolution along phylogenetic trees. Phylosim supports both simple and complex evolutionary models, allowing precise control over sequence length, taxa, and substitution rates. It generates reference datasets for benchmarking tree construction methods.
The detailed R scripts can be found in the ```Phylosim-Scripts``` folder.
	
2. MEGA-11
A user-friendly software for phylogenetic tree construction and visualization. MEGA-11 supports distance-based (Neighbor-Joining, UPGMA) and character-based methods (Maximum Parsimony, Maximum Likelihood). It offers sequence alignment and easy visualization of trees, making it ideal for comparing reconstructed trees with simulated data.
MEGA-11 can be downloaded and installed from the official website, based on your system requirements.

3. TreeCmp
A tool for comparing phylogenetic trees using topological and weighted metrics. Available as a command-line tool and a web-based version (Visual TreeCmp).
TreeCmp as a command-line tool and a web-based version (Visual TreeCmp), can be cloned from git ``` git clone --recursive https://github.com/TreeCmp/TreeCmp.git ```

### Workflow
Generate Simulated Data (Phylosim) --> Reconstruct Tree (MEGA-11) --> Compare Trees (Visual TreeCmp) --> Evaluate Accuracy/ Computational Efficiency 

### Data Simulation 
The simulated data consists of DNA sequences generated using two models: the simple JC69 model with equal substitution rates and the complex GTR + I + R model with unequal rates, invariant sites, and rate heterogeneity. The simulations vary by the number of taxa (10, 25, 50) and sequence lengths (500, 1000, 1500 nucleotides), creating 18 reference tree variants. These parameters allow for testing different evolutionary scenarios and complexities in phylogenetic tree construction. The simulated data is present in the ```Simulated_Data``` folder in the repository.

### Results
Detailed result files, including Execution_Stats.xlsx, Evaluation_Metrics.xlsx, and the comprehensive Report.pdf, are located in the ```Results``` folder.
