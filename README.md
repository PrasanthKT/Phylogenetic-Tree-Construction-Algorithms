# Exploring-Phylogenetic-Tree-Construction-A-Framework-for-Initial-Algorithm-Selection
Phylogenetic tree construction is the process of creating diagrams that represent evolutionary relationships among different species or genes based on their genetic data. It helps to understand evolutionary relationships, trace the origin of species, and study the genetic relationships between organisms/taxa.

### Objective
This study aims to identify a phylogenetic tree construction method balancing accuracy and efficiency. Simulated trees, generated under simple (JC69) and complex (GTR + I + R) models, were reconstructed using distance-based (Neighbor-Joining, Minimum Evolution, UPGMA) and character-based (Maximum Likelihood, Maximum Parsimony) methods. Tree accuracy was evaluated using Maximum Agreement Subtree (MAST), CopheneticL2 (CL2), and RFCluster Weighted metrics. Distance-based methods are expected to perform well for simpler models, while Maximum Likelihood captures complex patterns with higher computational cost.

### Tools and Dependences
  	1.	Phylosim
An R package for simulating molecular sequence evolution along phylogenetic trees. Phylosim supports both simple and complex evolutionary models, allowing precise control over sequence length, taxa, and substitution rates. It generates reference datasets for benchmarking tree construction methods.
	2.	MEGA-11
A user-friendly software for phylogenetic tree construction and visualization. MEGA-11 supports distance-based (e.g., Neighbor-Joining, UPGMA) and character-based methods (e.g., Maximum Parsimony, Maximum Likelihood). It offers sequence alignment and easy visualization of trees, making it ideal for comparing reconstructed trees with simulated data.





### Workflow
Talk about the Phylosim, Real data, MEGA-11 tool. Explain why the MEGA11 tool was used. Comaprison Metrics. 

### Scripts

### Data Generated using Phylosim. 

### Results
Detailed results are put in the Repository under. 
