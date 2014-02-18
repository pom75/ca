
 # fib.s engendre par ml2mips 



/**
 *  de'claration de la fonction fib___1
 *    vue comme la classe : MLfun_fib___1
 */ 
MLfun_fib___1:
more stuff to be added

            T___4=x___2;
li $s0 2
          T___3=MLruntime.MLltint( (MLint )T___4,(MLint )T___5);
      if (((MLbool)T___3).MLaccess())
li $s0 1
          return T___6;
      else
                    T___9=fib.fib___1;
                        T___11=x___2;
li $s0 1
                      T___10=MLruntime.MLsubint( (MLint )T___11,(MLint )T___12);
                  T___8=((MLfun)T___9).invoke(T___10);
                    T___14=fib.fib___1;
                        T___16=x___2;
li $s0 2
                      T___15=MLruntime.MLsubint( (MLint )T___16,(MLint )T___17);
                  T___13=((MLfun)T___14).invoke(T___15);
              T___7=MLruntime.MLaddint( (MLint )T___8,(MLint )T___13);
          return T___7;
YOYOYOYOY
// fin de la classe MLfun_fib___1



  .data 

   # we dont have functions
  value___18:

main:

    T___19=fib.fib___1;
li $s0 5
  value___18=((MLfun)T___19).invoke(T___20);
MLruntime.MLlrp
  bidon___21=MLruntime.MLprint( (MLvalue )value___18);
# fin du fichier fib.s
