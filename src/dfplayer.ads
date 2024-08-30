with interfaces;
     
package DFPlayer is

	
   type Send_Byte is access procedure (Data : Interfaces.Unsigned_8);	
   type Receive_Byte is access function return Interfaces.Unsigned_8;

   type Player is tagged private;
   
   procedure Initialize (P : in out Player;
   	     		 Send : Send_Byte;
   	      		 Receive : Receive_Byte;
			 Do_Reset : boolean := True);	
   function Is_Initialized (P : Player) return Boolean;
   
   type File_Index_Range is range 0 .. 2999;
   type Folder_Index_Range is range 0 .. 99;

   procedure Play (P : Player; File : File_Index_Range := 1);
   procedure Play_Next(P : Player);
   procedure Play_Previous(P : Player);
   procedure Play_Loop (P : Player;	File : File_Index_Range := 1);	
   procedure Play_Folder (P : Player;	Folder : Folder_Index_Range := 1);	
   procedure Stop (P : Player);
   procedure Pause (P : Player);
   procedure Start (P : Player);

   --   function get_current_file return 	  

   type Volume_Range is range 0 .. 30;

   procedure Volume (P : Player; V : Volume_Range);
   procedure Volume_Up (P : Player);
   procedure Volume_Down (P : Player);
   function Get_Volume (P : Player) return Volume_Range;
   
   function Is_Available (P : Player) return Boolean;
   function Get_Error_Type (P : Player) return Error_Type;

private

   type Player is tagged record
      Put : Send_Byte;
      Get : Receive_Byte;
      Initialized : Boolean := false;
   end record;
      
end DFPlayer;		   
