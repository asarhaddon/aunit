-----------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                          Make_Harness_Window_Pkg                         --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision$
--                                                                          --
--                Copyright (C) 2001 Ada Core Technologies, Inc.            --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- GNAT is maintained by Ada Core Technologies Inc (http://www.gnat.com).   --
--                                                                          --
------------------------------------------------------------------------------

with Gtk.Window; use Gtk.Window;
with Gtk.Box; use Gtk.Box;
with Gtk.Label; use Gtk.Label;
with Gtk.GEntry; use Gtk.GEntry;
with Gtk.Button; use Gtk.Button;
with Gtk.Hbutton_Box; use Gtk.Hbutton_Box;
with Gtk.Status_Bar; use Gtk.Status_Bar;

with GNAT.OS_Lib; use GNAT.OS_Lib;
with Explorer_Window_Pkg; use Explorer_Window_Pkg;

package Make_Harness_Window_Pkg is

   type Make_Harness_Window_Record is new Gtk_Window_Record with record
      Suite_Name     : String_Access;
      Procedure_Name : String_Access;
      Explorer       : Explorer_Window_Access;

      Vbox3 : Gtk_Vbox;
      Hbox2 : Gtk_Hbox;
      Vbox8 : Gtk_Vbox;
      Label6 : Gtk_Label;
      Vbox6 : Gtk_Vbox;
      Label1 : Gtk_Label;
      Vbox9 : Gtk_Vbox;
      Hbox4 : Gtk_Hbox;
      Procedure_Entry : Gtk_Entry;
      Hbox3 : Gtk_Hbox;
      File_Name_Entry : Gtk_Entry;
      Vbox10 : Gtk_Vbox;
      Browse : Gtk_Button;
      Hbuttonbox1 : Gtk_Hbutton_Box;
      Ok : Gtk_Button;
      Cancel : Gtk_Button;
      Help : Gtk_Button;
      Statusbar : Gtk_Statusbar;
   end record;
   type Make_Harness_Window_Access is
     access all Make_Harness_Window_Record'Class;

   procedure Gtk_New (Make_Harness_Window : out Make_Harness_Window_Access);
   procedure Initialize
     (Make_Harness_Window : access Make_Harness_Window_Record'Class);

end Make_Harness_Window_Pkg;
