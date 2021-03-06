<#
    .EXAMPLE
        This configuration will set the drive letter of the first
        optical disk drive in the system to 'Z'.
#>
Configuration Example
{
    Import-DSCResource -ModuleName xStorage

    Node localhost
    {
        xOpticalDiskDriveLetter SetFirstOpticalDiskDriveLetterToZ
        {
            DiskId      = 1
            DriveLetter = 'Z'
        }
    }
}
