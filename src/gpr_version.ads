------------------------------------------------------------------------------
--                                                                          --
--                              GPR TECHNOLOGY                              --
--                                                                          --
--                     Copyright (C) 2001-2015, AdaCore                     --
--                                                                          --
-- This is  free  software;  you can redistribute it and/or modify it under --
-- terms of the  GNU  General Public License as published by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  This software is distributed in the hope  that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for more details.  You should have received  a copy of the  GNU  --
-- General Public License distributed with GNAT; see file  COPYING. If not, --
-- see <http://www.gnu.org/licenses/>.                                      --
--                                                                          --
------------------------------------------------------------------------------

--  This package spec holds version information for the GPR tools.
--  It is updated whenever the release number is changed and at the beginning
--  of each calendar year.

package GPR_Version is

   Gpr_Version : constant String := "2.3.0w";
   --  Static string identifying this version

   Date : constant String := "20150509";

   Current_Year : constant String := "2015";

   type Gnat_Build_Type is (Gnatpro, FSF, GPL);
   --  See Get_Gnat_Build_Type below for the meaning of these values

   Build_Type : constant Gnat_Build_Type := Gnatpro;
   --  Kind of GNAT Build:
   --
   --    FSF
   --       GNAT FSF version. This version of GNAT is part of a Free Software
   --       Foundation release of the GNU Compiler Collection (GCC). The bug
   --       box generated by Comperr gives information on how to report bugs
   --       and list the "no warranty" information.
   --
   --    Gnatpro
   --       GNAT Professional version. This version of GNAT is supported by Ada
   --       Core Technologies. The bug box generated by package Comperr gives
   --       instructions on bug submission that include references to customer
   --       number, gnattracker site etc.
   --
   --    GPL
   --       GNAT GPL Edition. This is a special version of GNAT, released by
   --       Ada Core Technologies and intended for academic users, and free
   --       software developers. The bug box generated by the package Comperr
   --       gives appropriate bug submission instructions that do not reference
   --       customer number etc.

   function Gpr_Version_String return String;
   --  Version output when GPRBUILD or its related tools, including
   --  GPRCLEAN, are run (with appropriate verbose option switch set).

   function Free_Software return String;
   --  Text to be displayed by the different GNAT tools when switch --version
   --  is used. This text depends on the GNAT build type.

   function Copyright_Holder return String;
   --  Return the name of the Copyright holder to be displayed by the different
   --  GNAT tools when switch --version is used.

end GPR_Version;
