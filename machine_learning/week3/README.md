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
- 1 is presence of something= posetive class
### How Do We Develop Classification Problems?
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
- transform hθ(x)
- hθ(x)=g(θTx)    z=θTx   g(z)=11+e−z  between 0 and 1
-  function g(z), shown here, maps any real number to the (0, 1)
- hθ​(x) will give us the probability (احتمالات اینجا مهمه(


## Decision Boundary:
![image](https://user-images.githubusercontent.com/44142415/117577178-efb89d00-b0fd-11eb-9926-cc9dba1519ff.png)
![image](https://user-images.githubusercontent.com/44142415/117577192-019a4000-b0fe-11eb-89c0-d0e8002527bf.png)

- The decision boundary is the line that separates the area where y = 0 and where y = 1. It is created by our hypothesis function.
- 

## cost function
- define how to fit the parameters of theta for
the logistic compression.
In particular,  the optimization objective, or
the cost function that we'll use to **fit the parameters**. 
![image](https://user-images.githubusercontent.com/44142415/117646774-69559700-b1a1-11eb-8cd9-582ca71b6617.png)
-![image](https://user-images.githubusercontent.com/44142415/117786247-8b5f2000-b25a-11eb-9377-756f2b120719.png)

-
-
## advanced optimisation
-"Conjugate gradient", "BFGS", and "L-BFGS" 
- are more sophisticated, faster ways to optimize θ 
- 
