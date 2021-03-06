This code describes the structure and variables of "tidydata.txt", resulting from executing the "run_analysis.R" script.

Tidydata.txt contains 180 rows and 68 columns. Each row includes average variables for each subject and each activity. Data were 
averaged based on the Subject and Activity group. Only variables estimated from mean and standard deviation were included.

There are a total of 30 subjects and 6 Activity Lables. Activity Lables are described below:

##### WALKING - Label 1
##### WALKING_UPSTAIRS - Label 2
##### WALKING_DOWNSTAIRS - Label 3
##### SITTING - Label 4
##### STANDING - Label 5
##### LAYING - Label 6 

## Tidydata.txt includes following column names:
1. "subject"        *(Subject, 1 to 30, is integer type)*
2. "activitylabel"  *(Activity label, 1 to 6, is factor type)*           

3. "tBodyAcc.mean...X"           
4. "tBodyAcc.mean...Y"          
5. "tBodyAcc.mean...Z"           
6. "tBodyAcc.std...X"           
7. "tBodyAcc.std...Y"            
8. "tBodyAcc.std...Z"           
9. "tGravityAcc.mean...X"        
10. "tGravityAcc.mean...Y"       
11. "tGravityAcc.mean...Z"        
12. "tGravityAcc.std...X"        
13. "tGravityAcc.std...Y"         
14. "tGravityAcc.std...Z"        
15. "tBodyAccJerk.mean...X"      
16. "tBodyAccJerk.mean...Y"      
17. "tBodyAccJerk.mean...Z"       
18. "tBodyAccJerk.std...X"       
19. "tBodyAccJerk.std...Y"       
20. "tBodyAccJerk.std...Z"       
21. "tBodyGyro.mean...X"          
22. "tBodyGyro.mean...Y"         
23. "tBodyGyro.mean...Z"          
24. "tBodyGyro.std...X"          
25. "tBodyGyro.std...Y"           
26. "tBodyGyro.std...Z"          
27. "tBodyGyroJerk.mean...X"     
28. "tBodyGyroJerk.mean...Y"     
29. "tBodyGyroJerk.mean...Z"      
30. "tBodyGyroJerk.std...X"      
31. "tBodyGyroJerk.std...Y"       
32. "tBodyGyroJerk.std...Z"      
33. "tBodyAccMag.mean.."          
34. "tBodyAccMag.std.."          
35. "tGravityAccMag.mean.."      
36. "tGravityAccMag.std.."       
37. "tBodyAccJerkMag.mean.."     
38. "tBodyAccJerkMag.std.."      
39. "tBodyGyroMag.mean.."        
40. "tBodyGyroMag.std.."        
41. "tBodyGyroJerkMag.mean.."     
42. "tBodyGyroJerkMag.std.."     
43. "fBodyAcc.mean...X"           
44. "fBodyAcc.mean...Y"          
45. "fBodyAcc.mean...Z"          
46. "fBodyAcc.std...X"           
47. "fBodyAcc.std...Y"            
48. "fBodyAcc.std...Z"           
49. "fBodyAccJerk.mean...X"       
50. "fBodyAccJerk.mean...Y"      
51. "fBodyAccJerk.mean...Z"      
52. "fBodyAccJerk.std...X"       
53. "fBodyAccJerk.std...Y"        
54. "fBodyAccJerk.std...Z"       
55. "fBodyGyro.mean...X"         
56. "fBodyGyro.mean...Y"
57. "fBodyGyro.mean...Z"
58. "fBodyGyro.std...X"
59. "fBodyGyro.std....Y"           
60. "fBodyGyro.std...Z"          
61. "fBodyAccMag.mean.."          
62. "fBodyAccMag.std.."          
63. "fBodyBodyAccJerkMag.mean.."  
64. "fBodyBodyAccJerkMag.std.."  
65. "fBodyBodyGyroMag.mean.."    
66. "fBodyBodyGyroMag.std.."     
67. "fBodyBodyGyroJerkMag.mean.." 
68. "fBodyBodyGyroJerkMag.std.."

*Columns 3 to 68 are are all numeric and represent accelerometer and gyroscope 3-axial measurements. Only mean and standard deviation are included.*
