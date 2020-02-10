echo \n\n
echo The following actions are caused by the .gdbinit file\n
echo in this directory\n
echo \n
echo Set breakpoint for main, add and ptrAdd\n

break main
break initialize_bomb
break phase_1
break phase_2
break phase_3
break phase_4
break phase_5
break phase_6
break explode_bomb

echo \n
echo Always display the next instruction to be executed\n
display/i $pc

define showargs
  echo A picture of the stack, similar to Figure 3.21\n
  echo Which shows the memory going from high memory to\n
  echo low memory, rather than the low-to-high \n
  echo that is normal in GDB\n
  echo \n
  echo --------------------------\n
  echo Arg #2 : 
  x/d $sp+12
  echo --------------------------\n
  echo Arg #1 : 
  x/d $sp+8
  echo --------------------------\n
  echo RetAddr: 
  x/x $sp+4
  echo --------------------------\n
  echo OldEBP :
  x/x $sp+0
  echo --------------------------\n
end

