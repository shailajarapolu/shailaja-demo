*********** environment variable *****
 
# This is a basic workflow to help you get started with Actions
 
name: CI
 
# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]
 
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
jobs:
  example_matrix:
    strategy:
      matrix:
        version: [10]
        names: ['test1' ,'test2']
    runs-on: ubuntu-latest
    env:
      Day: monday
      name: shubham
      company: acccenture
    steps:
      - name: varibles
        run: echo "my name is $name. Day is $Day and Company is $company refrenece of $GITHUB_REF and $github.event	"
      - name: matrixa
        run: echo ${{matrix.version}} 
      - name: test  
        run: echo ${{matrix.names}} 
