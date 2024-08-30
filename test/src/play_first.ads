with dfplayer;	use DFPlayer;
     
procedure Play_First is
	  -- serial line for debug
	  -- serial line for communication with DFPlayer
   P : Player;	 	  -- player object
begin
   Put_Line ("DFPlayer Mini test: play first file");
   Initialize (P, Put, Get);
   Play (p,    1);
   loop
      delay 3.0;	
      Play_Next (p);
   end loop; 	  
end Play_First;
	  
