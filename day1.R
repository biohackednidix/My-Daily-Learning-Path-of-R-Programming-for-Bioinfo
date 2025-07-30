Day 1: Welcome to R & RStudio – Your Bioinformatics Launchpad!

### Today's Goal: Get Set Up, Get Started, and Understand *Why* R Matters.

Today, we're laying the foundation. We'll get **R** and **RStudio** installed, take a tour of the development environment, and write our very first lines of code. More importantly, we'll understand *why* R is the go-to language for so much of modern bioinformatics.

### **Lecture Focus: Why R & Setting Up Your Workspace**

#### **1. Why R for Bioinformatics?**

-   **Statistical Powerhouse:** R was built by statisticians, for statisticians. This means it has an unparalleled ecosystem for statistical analysis.

-   In bioinformatics, we're constantly dealing with variability, uncertainty, and the need to make rigorous inferences from data (e.g., is this gene truly differentially expressed? Is this drug having a significant effect?). R excels here.

-   **Vast Package Ecosystem (CRAN & Bioconductor):** This is perhaps R's biggest strength.

    -   **CRAN (The Comprehensive R Archive Network):** Hosts over 20,000 user-contributed packages for general data science, visualization, machine learning, and more. Think of it as a giant app store for R functionalities.

    -   **Bioconductor:** This is R's secret weapon for bioinformatics. It's a specialized repository of high-quality, peer-reviewed packages specifically designed for the analysis of high-throughput genomic data (RNA-seq, single-cell, proteomics, epigenetics, etc.). These packages are interoperable, well-documented, and crucial for reproducible research. We'll be diving deep into Bioconductor Later.

-   **Powerful Visualization:** R, especially with packages like **ggplot2** (which we'll master soon!), allows you to create incredibly insightful and publication-quality plots. Visualizing complex biological data is essential for understanding patterns and communicating findings.

-   **Open Source & Community Support:** R is free and open-source, which means anyone can use it, inspect its code, and contribute to its development. This fosters a massive, active, and supportive community. If you run into a problem, chances are someone else has too, and a solution is often just a search away.

-   **Reproducibility:** R, particularly when combined with tools like RMarkdown/Quarto and Git/GitHub (which we'll learn!), promotes fully reproducible research. You can create a single document that contains your code, analysis, and narrative, ensuring your findings can be replicated by anyone.

**R vs. Python (in Bioinformatics): A Quick Chat**

You might ask, "What about Python?" Python is fantastic too, especially for general-purpose scripting, web development, and large-scale data engineering. In bioinformatics, Python often shines in areas like:

-   Large-scale data processing (e.g., parsing huge FASTA files, manipulating BAM files).

-   Developing production-level pipelines.

-   Deep learning frameworks (TensorFlow, PyTorch).

However, for **statistical modeling, hypothesis testing, complex data visualization, and leveraging cutting-edge Bioconductor methods**, R often has the edge due to its specialized ecosystem. Many bioinformaticians are **bilingual**, using both languages depending on the task. Our focus here is to make you proficient in R, understanding when and why it's the right tool.

#### **2. R & RStudio Installation and Environment Setup**

This is our critical first practical step. Follow along carefully!

-   **Step 1: Install R (The Language)**

    -   Go to **CRAN (The Comprehensive R Archive Network)**: <https://cran.r-project.org/>

    -   Click on "Download R for \[Your Operating System\]" (Linux, macOS, or Windows).

    -   Follow the instructions specific to your OS. For Windows, simply download and run the installer. For macOS, download the latest package. For Linux, follow the distro-specific instructions.

    -   **Verify:** After installation, open R (you'll see a basic console window). Type [`R.version.string`]{.underline} and hit Enter. You should see information about your R version. Close it for now.

-   **Step 2: Install RStudio Desktop (The Integrated Development Environment - IDE)**

    -   Go to the **RStudio website**: <https://posit.co/download/rstudio-desktop/>

    -   Scroll down to the "RStudio Desktop Open Source License" section.

    -   Download the installer appropriate for your operating system.

    -   Run the installer. This is usually straightforward.

    -   **Why RStudio?** While you can run R directly from its console, RStudio is like a cockpit for R. It provides an organized interface with a script editor, environment viewer, plot viewer, help system, and much more, making your workflow incredibly efficient.

-   **Step 3: Tour of the RStudio Interface**

    -   Open **RStudio**. You'll usually see four main panes:

        1.  **Console (Bottom-Left):** This is where R commands are executed. You can type code directly here, but usually, we'll write scripts first.

        2.  **Source Editor (Top-Left):** This is your primary workspace. You write your R scripts (`.R` files) here, save them, and send lines or blocks of code to the console for execution.

        3.  **Environment / History / Connections / Tutorial (Top-Right):**

            -   **Environment:** Shows all the R objects (variables, data frames, functions) you've created in your current session. Invaluable for keeping track.

            -   **History:** A record of commands you've executed.

        4.  **Files / Plots / Packages / Help / Viewer (Bottom-Right):**

            -   **Files:** A file browser for your system.

            -   **Plots:** Where your visualizations will appear.

            -   **Packages:** Manage (install, load, unload) R packages.

            -   **Help:** Access the R help documentation.

            -   **Viewer:** For viewing local web content (like Shiny apps or HTML output).

-   **Step 4: Working Directories & File Paths**

    -   The **working directory** is the default location where R will look for files to load and save files.

    -   Check your current working directory: [`getwd()`]{.underline}

    -   You can change it with `setwd("path/to/your/folder")`, but we'll use a better method: **R Projects**.

    -   **Absolute vs. Relative Paths:**

        -   **Absolute:** Starts from the root (e.g., `C:/Users/YourName/Documents/my_data.csv` or `/Users/YourName/Documents/my_data.csv`).

        -   **Relative:** Starts from your current working directory (e.g., `data/my_data.csv` if `data` is a subfolder in your working directory). Relative paths are crucial for reproducible work!

-   **Step 5: Introduction to R Projects (Crucial for Organization!)**

    -   **Why?** R Projects make your work self-contained and reproducible. When you open an R Project, it automatically sets your working directory to the project's root folder, so all your relative file paths work correctly, regardless of where the project folder is on your computer.

    -   **How to Create One:**

        1.  Go to `File > New Project...`

        2.  Choose `New Directory` (unless you have an existing folder you want to turn into a project).

        3.  Choose `New Project`.

        4.  Give it a meaningful name (e.g., `BIOINFO_R01_Course`).

        5.  Choose a location on your computer.

        6.  Click "Create Project".

    -   RStudio will restart and open your new project. Notice how the project name is visible in the top-right corner of RStudio.

### **Practical Lab/Self-Study: Your First R Code!**

1.  **Open or Create Your Course Project:** If you followed the steps above, you should have your `BIOINFO_R01_Course` project open in RStudio.

2.  **Create Your First R Script:**

    -   In RStudio, go to `File > New File > R Script`.

    -   This opens a new blank script in the Source Editor (top-left pane).

    -   Save it immediately within your project folder: `File > Save As...` and name it `day1_intro.R`.

3.  **Basic R Syntax and Execution:**

    -   Type the following lines into your `day1_intro.R` script:

        ```{r}
        # this command shows the current working directory
        getwd()

        # This sets the working directory
        setwd()

        # This is a comment. Comments start with a hash (#) and are ignored by R.
        # Use comments to explain your code!

        # Assigning values to variables
        x <-9    # Use <- for assignment (it's the R convention)
        y =9     # = also works, but <- is preferred

        # Perform basic arithmetic operations
        a <- 9+9
        b <- 18-9
        c <- 9*9
        d <- 55/11
        e <- 10^2
        f <- 15%%4
        g <- 4+5
        h <-65-5
        # Print values to the console
        print(a)
        print(f)


        # Basic data types
        numeric <- 12.5
        integer <- 12L # The 'L' makes it an integer explicitly
        character <- "Hello Bioinformatics!"
        logical <- TRUE # Or T
        false_example <- FALSE  # Or F


        # Check the type of variables (we'll learn more about this later)
        x<-3
        y<-45.5
        z<-"Bioinfo"
        class(x)
        class(y)
        class(z)


        # Simple biological math example: GC content calculation
        # For now, we'll keep it simple and just count manually from a string.
        # Later, we'll learn functions to do this programmatically.
        dna_sequence <- "ATGCGTACGT"
        gc_count <- 6 # Manually counting G's and C's
        total_bases <- nchar(dna_sequence)    # nchar() counts characters in a string
        gc_percentage <- (gc_count / total_bases) * 100

        print(paste("GC content:", gc_percentage, "%"))

        ```

-   **Execute the code:**

    -   To run a single line: Place your cursor on the line and press `Ctrl + Enter` (Windows/Linux) or `Cmd + Enter` (macOS).

    -   To run multiple lines: Select the lines and press `Ctrl + Enter` / `Cmd + Enter`.

    -   To run the entire script: `Ctrl + Shift + S` or click the "Source" button in the Source Editor toolbar.

-   Observe the output in the **Console** and how variables appear in the **Environment** pane.

1.  **Use the R Help System:**

    -   In the Console, try typing:

        -   `?print`

        -   `help("nchar")`

        -   `?? "arithmetic operations"`

    -   Explore the help pages. What arguments do these functions take? What do they return?

2.  **Explore RStudio Project Setup:**

    -   Close RStudio.

    -   Navigate to your `BIOINFO_R01_Course` folder on your computer.

    -   Double-click the `.Rproj` file within that folder. RStudio should open directly to your project, with the working directory correctly set. This is the magic of R Projects!
