float Leibniz(int itr)
{
 float sum = 0;
 int sign = 1;
 
 for(int n = 0; n < itr; n++)
 {
   sum += sign * 1.0 / (2 * n + 1);
   sign *= -1;
   
 }  
 return 4*sum;
}

float Wallis(int itr)
{
 float result = 1;
 
 for(int i = 1; i < itr; i++)
 {
   float a = 2 * i;
   result *= a / (a - 1);
   result *= a / (a + 1);
 }
 return 2 * result; 
}

float BBP(int itr)
{
 float result = 0;
 for(int n = 0; n < itr; n++)
 {
  float a = 1 / pow(2, 4 * n);
 result += a * (4.0 / (8 * n + 1)
                 - 2.0 / (8 * n + 4)
                 - 1.0 / (8 * n + 5)
                 - 1.0 / (8 * n + 6)); 
 }
 return result;
}


void setup()
{
 println("Leibniz : " + Leibniz(10000));  
 println("Wallis  : " + Wallis(10000));  
 println("BBP     : " + BBP(10000));  


}
