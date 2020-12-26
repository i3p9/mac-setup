# Jupyter Notebook

Let's setup Jupyter for ML

```bash
brew cask install anaconda
```

For a boilerplate project, let's say `ml`

```bash
mkdir ml && cd "$_"
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/conda/requirements.yml
conda env create -f requirements.yml
conda env list
conda activate ml
```

Should be good to go.

#### Explanation

Creates a directory called `ml`, then cd's into the folder. After that, it gets the `requirements.yml` file and creates an environment using that requirement. Line 4 makes sure the enviroment is created. Then the enviroment is activated. Open up jupyter, select the right enviroment and you should be good to go.

