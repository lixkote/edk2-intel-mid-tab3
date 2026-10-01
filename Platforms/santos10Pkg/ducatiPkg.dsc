
[Defines]
  PLATFORM_NAME                  = santosPkg
  PLATFORM_GUID                  = 5D6E7F80-9AB1-4C2D-8E3F-405162738495
  PLATFORM_VERSION               = 0.10
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/santosPkg
  SUPPORTED_ARCHITECTURES        = IA32
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = santosPkg/santosPkg.fdf

  DEFINE SHELL_TYPE              = BUILD_SHELL
  #
  # Cloverview CPU variant selection
  #   Atom Z2520 - 1.2 GHz
  #   Atom Z2560 - 1.6 GHz
  #   Atom Z2580 - 2.0 GHz
  #
  DEFINE SOC_VARIANT             = SOC_VARIANT_Z2560

!include CloverviewPkg/CloverviewPkg.dsc.inc

[PcdsFixedAtBuild]
  # Device Framebuffer
  gIntelMidTokenSpaceGuid.PcdFrameBufferBase|0x3F000000
  gIntelMidTokenSpaceGuid.PcdFrameBufferWidth|1280
  gIntelMidTokenSpaceGuid.PcdFrameBufferStride|1280
  gIntelMidTokenSpaceGuid.PcdFrameBufferHeight|800
  gIntelMidTokenSpaceGuid.PcdFrameBufferBpp|4

  # SMBIOS
  gIntelMidTokenSpaceGuid.PcdSmbiosSystemManufacturer|"Samsung"
  gIntelMidTokenSpaceGuid.PcdSmbiosSystemModel|"Galaxy Tab 3 10.1"
  gIntelMidTokenSpaceGuid.PcdSmbiosSystemRetailModel|"santos"
  gIntelMidTokenSpaceGuid.PcdSmbiosSystemRetailSku|"GT-P5210"
  gIntelMidTokenSpaceGuid.PcdSmbiosSystemBoardModel|"GT-P5210"

[Components]
  # ACPI
  CloverviewPkg/Drivers/AcpiPlatformDxe/AcpiPlatformDxe.inf
  santosPkg/AcpiPlatformDxe/AcpiTables.inf
