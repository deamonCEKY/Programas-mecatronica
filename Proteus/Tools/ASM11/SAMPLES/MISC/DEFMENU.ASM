***********************************************
* Purpose   : Demo for displaying a menu of possible -Dxxx defines
* Usage     : ASM11 -D? to display menu of available conditionals
* Language  : MC68HC11 (ASM11 v1.64+)
***********************************************

#ifdef ?
  $message
  $message 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
  $message � Available Conditional Defines:
  $message 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
  $message � "DEBUG" for SIM11x runs (fastest SCI rate)
  $message � "MCU811E2" for 811E2 MCU
  $message � "MCU711E9" for 711E9 MCU
  $message 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
  $message
  $fatal Use -Dxxx (where xxx is one of the above)
#endif

#ifdef DEBUG
  $message DEBUG defined
#else
  #ifdef MCU811E2
    $message MCU811E2 defined
  #else
    #ifdef MCU711E9
      $message MCU711E9 defined
    #else
      $message You haven't defined any conditionals
    #endif
  #endif
#endif

                          *** EOF ***