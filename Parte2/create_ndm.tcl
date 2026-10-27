create_workspace M31_workspace -technology "/home/framazzini/mi_proyecto_asic/pdk/M31LLSC750GL150MS_00.01.000-20261022T233445Z-1-001/M31LLSC750GL150MS_00.01.000/M31LLSC750GL150MS.0.01/milkyway_techfiles/tech/GL150M_5M1T_9K.tf" -flow normal
read_db  "/home/framazzini/mi_proyecto_asic/pdk/M31LLSC750GL150MS_00.01.000-20261022T233445Z-1-001/M31LLSC750GL150MS_00.01.000/ccs_db/M31LLSC750GL150MS_25CTT1P8_ctyp_ccs.db"
read_lef "/home/framazzini/mi_proyecto_asic/pdk/M31LLSC750GL150MS_00.01.000-20261022T233445Z-1-001/M31LLSC750GL150MS_00.01.000/M31LLSC750GL150MS.0.01/lef_techfiles/tech/GL150M_5M1T_9K.lef"
read_lef "/home/framazzini/mi_proyecto_asic/pdk/M31LLSC750GL150MS_00.01.000-20261022T233445Z-1-001/M31LLSC750GL150MS_00.01.000/M31LLSC750GL150MS.0.01/lef/M31LLSC750GL150MS.lef"
check_workspace -allow_missing
commit_workspace -output M31LLSC750GL150MS.ndm
exit
