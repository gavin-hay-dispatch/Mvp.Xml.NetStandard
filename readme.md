# Mvp.Xml.NetStandard
A .NET Standard port of the [Mvp.Xml project](https://archive.codeplex.com/?p=mvpxml) developed by Microsoft MVP's in XML technologies 
and XML Web Services worldwide. It is aimed at supplementing .NET framework XML processing functionality available through the System.Xml 
namespace and related namespaces such as System.Web.Services. It is documented extensively through weblog posts. All the project's 
classes contain extensive tests to ensure its quality, as well as the peer review among this highly focused group of XML lovers.

Mvp.Xml project currently provides .NET implementations of [EXSLT](http://www.exslt.org/), [XML Base](http://www.w3.org/TR/xmlbase/), 
[XInclude](http://www.w3.org/TR/xinclude/), [XPointer](http://www.w3.org/TR/xptr-framework/) as well as a unique set of utility classes 
and tools making XML programming in .NET platform easier, more productive and effective.

[![Mvp.Xml Codeplex Archive](codeplex-archive.png "Mvp.Xml Codeplex Archive")](https://archive.codeplex.com/?p=mvpxml)

## Getting Started ##
Install [Nuget](https://www.nuget.org/packages/Mvp.Xml.NetStandard) package:
```
PM> Install-Package Mvp.Xml.NetStandard
```

## Developers
The Mvp.Xml.dll contains methods names that are not valid in c# like
for example "day-in-year". These methods are created by disassembling the dll,
renaming the methods in the il file and compiling back to dll (ildasm/ilasm round trip).

Use create-buildtools.bat to set up ildasm, ilasm and the MethodRenamer tool.

Unfortunately the symbol file (pdb) does not survive this process because of [coreclr issue #2982](https://github.com/dotnet/coreclr/issues/2982).
I will fix this as soon as pdb support is added to ilasm.

## Motivation ##
I needed the XIncludingReader in a .NET core project.

## Release Notes ##
### Release 1.1.1 ###
- Made sure the final assembly is signed properly after round-trip compiling with ildasm/ilasm in postbuild.bat.
### Release 1.1.0 ###
- Strongly signed the assembly. Thanks to [Jakub Míšek](https://github.com/jakubmisek).
### Release 1.0.1 ###
- Fixed an ExsltDateTime bug: DateTime part was not set in constructor. Thanks to [Jindrich Susen](https://github.com/JindrichSusen).
- Fixed an XslReader bug: CurrentPrincipal of worker threads was not set. Thanks to [Jindrich Susen](https://github.com/JindrichSusen). 
### Release 1.0.0 ###
- Mvp.Xml library targeting .NET Standard 2.0
