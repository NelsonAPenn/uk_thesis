# Contributing

Please contribute.

## Change quality

Changes to the uk_thesis documentclass should meet very high standards and be applicable to ALL students who depend on this repository. LaTeX is an inherently fiddly platform, and one small change can subtly break other parts of the document, or the same document with different configurations.

Please be extremely specific when creating issues where

- You used a feature that is supported by the documentclass, and
- The produced result did not meet university guidelines (e.g. the thesis reviewers responded with formatting issues that need revision)

Similarly, for PRs that concern the documentclass, provide the following in the description:

- A link to the issue, which describes the above
- A description of what the PR will improve about the documentclass
- Your testing: why it won't break other students who use the documentclass.

I am not as concerned about updates to the template (everything but the documentclass); it is merely as a convenient starting point for students.

### Checklist

Go over [this checklist](docs/checklist.md) before making a pull request, or when reviewing someone else's.

## Issues

If you run into any problems with the uk_thesis documentclass or template, please report these as issues.

If you have feature requests, please also add these to the issues and tag them accordingly.

## Code contributions

Please contribute changes in the form of pull requests. Any improvements you make or bugs you fix will benefit future UK students :)

It is very important that changes to the uk_thesis documentclass be tested with many different configurations. The goal is to create a documentclass that can provide correct formatting for any of the configurations it supports. They should not be specific to your thesis; rather, they should be applicable to anyone who might use the template.

General guidelines:
- Use definitions in similar style to what's there (@ for private, etc.)
- If it's required, make sure it must be provided
- If it's optional, make sure it works if it is provided and if it is not provided
- Run through the checklist and make sure you didn't break anything.
