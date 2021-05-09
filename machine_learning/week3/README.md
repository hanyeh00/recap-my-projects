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
- For classification we know that y is either zero or one. But if you are using linear regression where the **hypothesis** 
can output values that are much larger than 1 or less than 0,
but all of your training examples have labels y equals 0 or 1. 

- ![image](https://user-images.githubusercontent.com/44142415/117565422-5e7a0400-b0c6-11eb-8926-0c953fc71b7d.png)
- classification is not actually a linear function don't be confused by that logistic regression name--> that's just a name it was given for **historical reasons**.
So is actually a classification
algorithm that we apply to settings where the **label** (NOt Prediction) y is **discrete value**,
when it's either 0 or 1.

## Hypothesis Representation:
- transform hθ(x)h_\theta (x)hθ​(x) to satisfy 0≤hθ(x)≤10 \leq h_\theta (x) \leq 10≤hθ​(x)≤1
- hθ(x)=g(θTx)    z=θTx   g(z)=11+e−z  between 0 and 1
-  function g(z), shown here, maps any real number to the (0, 1)
- hθ​(x) will give us the probability (احتمالات اینجا مهمه(


## Decision Boundary:
z=0,e0=1⇒g(z)=1/2z→∞,e−∞→0⇒g(z)=1z→−∞,e∞→∞⇒g(z)=0
- The decision boundary is the line that separates the area where y = 0 and where y = 1. It is created by our hypothesis function.
- 5−10y=1if5+(−1)x1+0x2≥05−x1≥0−x1≥−5x1≤5
- 

