## Basic work with files

- Create directory test1  
```mkdir test1```

- Create file test1.txt inside the test1 directory.  
```touch test1.txt```

-   Create copy of folder test1 with name test2.  
```cp -rp test1 test2```

-    Delete file test1.txt inside test2 directory.  
```rm test1.txt```

-    Rename test2 folder into directory_without_file  
```mv test2 directory_without_file```

-    Insert 'test1' text into test1/test1.txt file.  
```vim test1/test1.txt```

-    print the text from the test1/test1.txt file.  
```cat test1/test1.txt```

-    Insert 'test2' into the end of test1/test1.txt file.  
```echo "test2" >> test1.txt```

-    print the text from the test1/test1.txt file.  
```cat test1/test1.txt```


## Permissions

-   Create test directory and block access for all to it.  
```mkdir test_2```
```sudo chattr +i test_2```

-   Try to remove that directory.  


-   Create simple script which prints current date. Try to execute it.  
```touch test.sh  
vim test.sh - #!/bin/bash date  
chmod +x test.sh  
./test.sh```  
[файл](https://github.com/Vladkr2806/test_ggs/blob/main/test.sh)

## Log checking

-  Count lines in the file test.txt.  
```wc -l test.txt```

- Show last 3 lines from the test.txt file.  
```tail -n3 test.txt```

-  Hom many uniq IP addresses accessed the website ?  
```wk '{print$1}' test.txt  | sort | uniq -c | sort -n | wc -l```

-  IP address with most requests.  
```awk '{print$1}' test.txt  | sort | uniq -c | sort -n | tail -n1 ```

-  Top 3 IP addresses by amount of POST requests.  
```grep POST test.txt | awk '{print$1}' | sort | uniq -c | sort -n | tail -n3```

-  Which IP addresses received 403 error ?  
```grep ' 403 ' test.txt | awk '{print$1}'```

- Task with * . Write script to show which pages Google checked from the website  
```#!/bin/bash  
grep -i 'Google' test.txt | awk '{print$7}'```  
[файл](https://github.com/Vladkr2806/test_ggs/blob/main/google_check.sh)
