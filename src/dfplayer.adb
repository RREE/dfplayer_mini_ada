package body DFPlayer is

   procedure reset
   is
   begin
   null;
   end reset;
   	
   procedure Initialize (P : in out Player;
   	     		 Send : Send_Byte;
   	      		 Receive : Receive_Byte;
			 Do_Reset : Boolean := True)
   is
   begin
      P.Put := Send;
      P.Get := Receive;	
   
      if Do_Reset then
         Reset;
         Wait_Available (2.0);
         delay 0.2;	
      end if;	
   end Initialize;

   	 
   function Is_Initialized (P : Player) return Boolean
   is
   begin
      return P.Initialized;
   end Is_Initialized;	
   
   
   -- type File_Index_Range is range 0 .. 2999;
   -- type Folder_Index_Range is range 0 .. 99;

   procedure Play (P : Player; File : File_Index_Range := 1)
   is
   begin
   null;
   end;
   

   procedure Play_Next(P : Player)
   is
   begin
   null;
   end;
   

   procedure Play_Previous(P : Player)
   is
   begin
   null;
   end;

   
   procedure Play_Loop (P : Player;	File : File_Index_Range := 1)
   is
   begin
   null;
   end;

   
   procedure Play_Folder (P : Player;	Folder : Folder_Index_Range := 1)
   is
   begin
   null;
   end;

   
   procedure Stop (P : Player)
   is
   begin
   null;
   end;
   

   --   function get_current_file return 	  

   --  type Volume_Range is range 0 .. 30;

   procedure Volume (P : Player; V : Volume_Range)
   is
   begin
   null;
   end;
   
   procedure Volume_Up (P : Player)
   is
   begin
   null;
   end;
   

   procedure Volume_Down (P : Player)
   is
   begin
   null;
   end;

   
   function Get_Volume (P : Player) return Volume_Range
   is
   begin
   null;
   end;
   
   
   function Is_Available (P : Player) return Boolean
   is
   begin
   null;
   end;

   
   function Get_Error_Type (P : Player) return Error_Type
   is
   begin
   null;
   end;
   

end DFPlayer;		   
