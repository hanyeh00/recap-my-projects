# logestic regressions:
- This week, we’ll be covering logistic regression.
- Logistic regression is a method for classifying data into discrete outcomes
- email is spam or not
- cat or dog
# covering regularization
- Machine learning models need to **generalize** well to **new** examples that the model has not seen in practice

## Classification:
![image](https://user-images.githubusercontent.com/44142415/117564668-6f287b00-b0c2-11eb-8388-75083290c203.png)
- 0 is absent of something= negative class
- - 1 is presence of something= posetive class
### how do we develop classification problems?
- applying linear regression to a classification problem often isn't a great idea
- For classification we know that y is either zero or one. But if you are using linear regression where the hypothesis can output values that are much larger than one or less than zero,
even if all of your training examples have labels y equals zero or one. 

- 
