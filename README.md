# Bayes as a CLI

A short Ruby program that interactively computes Bayes law for a single unknown.
It also allows you to update your probability with more evidence

An example from wikipedia:

> Suppose a drug test is 99% sensitive and 99% specific. That is, the test will produce 99% true positive results for drug users and 99% true negative results for non-drug users. Suppose that 0.5% of people are users of the drug. If a randomly selected individual tests positive, what is the probability he or she is a user?

For example:

```bash
$ ./bayes.rb
Prior probability: 0.5
Probability of observation given prior is true: 99
Probability of observation given prior is false: 1
New probability: 33.22%
More Evidence? y
New probability: 98.01%
More Evidence? n
```
