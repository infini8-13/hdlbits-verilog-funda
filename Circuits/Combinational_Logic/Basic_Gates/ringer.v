//hardware thinking-reverse
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
   //phone is ringing and phone is in vibrate mode
    assign motor  = vibrate_mode & ring;
  
  //phone is ringing and phone is not in vibrate mode
    assign ringer = ring & ~vibrate_mode; 

endmodule
