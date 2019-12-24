# Task Delivery
* Please don't fork, branch or create a pull request with this repository. 
* Clone it and do your work there.
* When the task is ready, **Email** your solution back to us (Only first submit count unless otherwise directed).

# Corva Devops Test Task

Thank you for applying to Corva! We'd like to see how you can build out infrastructure and CI/CD.

## Hello World API Server
Provided in `src` is a "hello world" API app, written in Python, using the Flask framework.

All 3rd-party requirements for running the app are inside of the requirements.txt file. To run the file, simply run:

```
$ cd src
$ python -m flask
```

This will start a server at http://localhost:5000

## Part 1: Infrastructure
Your goal is to set up this app so that it runs on AWS infrastructure. You can choose any appropriate AWS technology.

Your output for this step should be a single command that fully initializes and configures all required infrastructure.

If you would like, you can set up the infrastructure and provide a working link.

## Part 2: CI/CD
Your goal for this step is to set up an automated build and deployment pipeline. Please use a SaaS provider that has
the ability to be configured entirely by file. TravisCI, CircleCI, or any other provider with a free tier.

The pipeline steps should be:

1. Check out the repository
2. Install any dependencies
3. Run `flake8`
4. Deploy the code update to AWS

For extra credit, you can come up with a process to display the current version number (defined as the build number)
as an HTTP header or within the JSON output.

Your deliverable here should be a configuration file that we could run. You can also share access to the SaaS to show us
your own working pipeline.

Good luck!
