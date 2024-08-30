package DFPlayer.Serial_Control_Commands is

   type Control_Cmd is range 16#01# .. 16#11# with size => 8;
   type Query_Cmd   is range 16#3C# .. 16#4D# with Size => 8;

   Next      : constant Control_Cmd := 16#01#;
   Previous  : constant Control_Cmd := 16#02#;
   
end DFPlayer.Serial_Control_Commands;
