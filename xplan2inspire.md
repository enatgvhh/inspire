#

XPlanung to INSPIRE
===================

## Gegeben
* Flächennutzungsplan und ca. 3.000 Bebauungspläne für die FHH
* XPlanManager speichert diese binär in BLOB-Attribut einer PostgreSQL/PostGIS DB (deegree SQLFeatureStore)
* [im Datenaustauschformat XPlanung (neuste Version 5.2)](http://www.xplanungwiki.de/upload/XPlanGML/5.2/Objektartenkatalog/index.html)
* [XPlan Sample](https://geodienste.hamburg.de/HH_WFS_xplan_dls?service=WFS&request=GetFeature&version=2.0.0&resolvedepth=*&StoredQuery_ID=urn:ogc:def:query:OGC-WFS::PlanName&planName=Hamburg-Altstadt32-HafenCity1)

## Ziel
* Transformation in das INSPIRE Zielschema [PlannedLandUse (PLU)](https://inspire.ec.europa.eu/data-model/approved/r4618-ir/html/index.htm?goto=2:3:10:1:4:8445)
* mit FME (ohne INSPIRE Solution Pack)
* Workflow Automatisierung mit FME-Server
* Bereitstellung als [View- und DownloadService](https://metaver.de/trefferanzeige?docuuid=D059011F-EDBD-4810-9307-BA8D227B5008&plugid=/ingrid-group:ige-iplug-HH&docid=D059011F-EDBD-4810-9307-BA8D227B5008) über deegree GIS-Server
* [INSPIRE PLU Sample](https://geodienste.hamburg.de/HH_WFS_INSPIRE_Planned_Land_Use?service=WFS&version=2.0.0&request=GetFeature&typeName=plu:SpatialPlan&COUNT=1&resolvedepth=*)

## Transformation
* [Transformationsregeln von Dr. J. Benner (KIT)](http://www.xplanungwiki.de/upload/INSPIRE/XPlanGML_5_0/INSPIRE_Transformation_2_0_2_2019-12-17.pdf)
* FME Workbench:
  ```
  - jeder Plan einzeln
  - über die Referenzen von einem XPlan Objekt zum nächsten hangeln (SQLExecutor)
  - Extraktion über xPath/xQuery, ermöglicht es alle XPlan-Objektarten generisch zu verarbeiten
  - Verarbeitung von Listen generell über Python (PythonCaller)
  - GML-Geometry optimieren
  - XMLTemplater zum Verpacken der INSPIRE PLU-Objekte
  - XML Formatierung (linearize)
  - PostGIS-Writer in PostgreSQL/PostGIS DB (deegree SQLFeatureStore im BLOB-Modus)
  ```
* zweite Workbench um GML-Files über den INSPIRE GML-Writer zu generieren
* Validierung INSPIRE PLU: XMLSpy, ETF-Validator, deegree WFS
* Dauer auf FME-Server über 10h
* Datenvolumen in DB >600 MB, >800 MB WFS-Response

## WebServices
* [WFS BPläne](https://geodienste.hamburg.de/HH_WFS_INSPIRE_Planned_Land_Use?REQUEST=GetCapabilities&SERVICE=WFS)
* [WMS BPläne](https://geodienste.hamburg.de/HH_WMS_INSPIRE_Planned_Land_Use?REQUEST=GetCapabilities&SERVICE=WMS)
* WFS/WMS FPläne nur auf Testsystem Intranet
* Besonderheit WMS:
  ```
  - deegree kann im BLOB-Modus noch nicht: GetFeatureInfo Response richtig auflösen und 
    Filter auf xlink:href Attribute setzen
  - deshalb parallele Datenhaltung in relationalen PostGIS-Tabellen für WMS
  ```
  
## Einschränkung
* individuell auf FHH-Daten angepasste Transformation
* kein universeller Konverter!

## Alternativen
* HALE Transformation über XPlanBox von lat/lon (unvollständig)
* Transformation über GML-Toolbox von Dr. J. Benner, KIT (unvollständig)
* XSLT Transformation von GDI-Service Rostock

## Links
* [Geoportal Hamburg](https://geoportal-hamburg.de/Geoportal/geo-online/index.html)
* [Xplanung Wiki](http://www.xplanungwiki.de/index.php?title=Xplanung_Wiki)
