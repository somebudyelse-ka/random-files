Add-Type -Name R -Namespace W -MemberDefinition '[DllImport("user32")]public static extern bool EnumDisplaySettingsA(string d,int m,byte[] b);[DllImport("user32")]public static extern int ChangeDisplaySettingsExA(string d,byte[] b,IntPtr h,int f,IntPtr l);'
$b=New-Object byte[] 156;$b[36]=156
[W.R]::EnumDisplaySettingsA([NullString]::Value,-1,$b)|Out-Null
$b[40]=$b[40] -bor 128;$b[52]=$b[52] -bxor 2
[W.R]::ChangeDisplaySettingsExA([NullString]::Value,$b,[IntPtr]::Zero,0,[IntPtr]::Zero)|Out-Null
