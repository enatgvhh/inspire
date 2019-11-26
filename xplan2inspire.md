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
* [Transformationsregeln von Dr. J. Benner (KIT)](http://www.xplanungwiki.de/upload/INSPIRE/INSPIRE_Transformation_V2_0.pdf)
* FME Workbench:
  ```
  #!text
  - jeder Plan einzeln
  - über die Referenzen von einem XPlan Objekt zum nächsten hangeln (SQLExecutor)
  - Extraktion über xPath/xQuery, ermöglicht es alle XPlan-Objektarten generisch zu verarbeiten
  - Verarbeitung von Listen generell über Python (PythonCaller)
  - GML-Geometry optimieren
  - XMLTemplater zum Verpacken der INSPIRE PLU-Objekte
  - XML Formatierung (linearize)
  - PostGIS-Writer in PostgreSQL/PostGIS DB (deegree SQLFeatureStore im BLOB-Modus)
  ```
* optional können auch GML-Files über den INSPIRE GML-Writer generiert werden
* Validierung INSPIRE PLU-Objekte: XMLSpy, ETF-Validator, deegree WFS
* Dauer auf FME-Server über 10h

## WebServices
* [WFS](https://geodienste.hamburg.de/HH_WFS_INSPIRE_Planned_Land_Use)
* [WMS](https://geodienste.hamburg.de/HH_WMS_INSPIRE_Planned_Land_Use)
* Besonderheit WMS:
```
  #!text
  - deegree kann im BLOB-Modus noch nicht richtig: GetFeatureInfo Response auflösen und Filter auf xlink:href Attribute
  - deshalb parallele Datenhaltung in relationalen PostGIS-Tabellen für WMS
  ```
  
## Einschränkung
* individuell auf Daten FHH angepasste Transformation
* kein universeller Konverter!

## bekannte Alternativen
* rudimentäre HALE Transformation über XPlanBox (lat/lon)
* rudimentäre Transformation über GML-Toolbox (Dr. J. Benner, KIT)
* GDI-Service Rostock
