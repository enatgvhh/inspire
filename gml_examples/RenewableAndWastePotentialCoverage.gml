<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection xmlns:er-b="http://inspire.ec.europa.eu/schemas/er-b/4.0" xmlns:gss="http://www.isotc211.org/2005/gss" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cp="http://inspire.ec.europa.eu/schemas/cp/4.0" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:bu-base="http://inspire.ec.europa.eu/schemas/bu-base/4.0" xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:sc="http://www.interactive-instruments.de/ShapeChange/AppInfo" xmlns:au="http://inspire.ec.europa.eu/schemas/au/4.0" xmlns:tn="http://inspire.ec.europa.eu/schemas/tn/4.0" xmlns:base="http://inspire.ec.europa.eu/schemas/base/3.3" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:net="http://inspire.ec.europa.eu/schemas/net/4.0" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gmlcov="http://www.opengis.net/gmlcov/1.0" xmlns:base2="http://inspire.ec.europa.eu/schemas/base2/2.0" xmlns:er-c="http://inspire.ec.europa.eu/schemas/er-c/4.0" xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:ad="http://inspire.ec.europa.eu/schemas/ad/4.0" xmlns:gn="http://inspire.ec.europa.eu/schemas/gn/4.0" gml:id="idccf30420-cf7a-475a-9e7c-c778e5ee2147" xsi:schemaLocation="http://inspire.ec.europa.eu/schemas/er-c/4.0 http://inspire.ec.europa.eu/schemas/er-c/4.0/EnergyResourcesCoverage.xsd http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/deprecatedTypes.xsd">
	<gml:boundedBy>
		<gml:Envelope srsName="http://www.opengis.net/def/crs/EPSG/0/4258" srsDimension="2">
			<gml:lowerCorner>53.39534311065 9.72771915245</gml:lowerCorner>
			<gml:upperCorner>53.74276320465 10.33428627575</gml:upperCorner>
		</gml:Envelope>
	</gml:boundedBy>
	<gml:featureMember>
		<er-c:RenewableAndWastePotentialCoverage gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4">
			<gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.hh/er-c/RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4</gml:identifier>
			<gml:domainSet>
				<gml:RectifiedGrid gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4_Rg0" dimension="2">
					<gml:limits>
						<gml:GridEnvelope>
							<gml:low>0 0</gml:low>
							<gml:high>2940 5133</gml:high>
						</gml:GridEnvelope>
					</gml:limits>
					<gml:axisLabels>y x</gml:axisLabels>
					<gml:origin>
						<gml:Point gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4_origin0" srsName="http://www.opengis.net/def/crs/EPSG/0/4258">
							<gml:pos>53.74276320465 9.727719152450002</gml:pos>
						</gml:Point>
					</gml:origin>
					<gml:offsetVector srsName="http://www.opengis.net/def/crs/EPSG/0/4258">0.0 0.00011817006</gml:offsetVector>
					<gml:offsetVector srsName="http://www.opengis.net/def/crs/EPSG/0/4258">-0.00011817006 0.0</gml:offsetVector>
				</gml:RectifiedGrid>
			</gml:domainSet>
			<gml:rangeSet>
				<gml:File>
					<gml:rangeParameters xlink:href="http://daten-hamburg.de/inspire/coverage/temperatur_minus_100mNhn.tif"/>
					<gml:fileReference>http://daten-hamburg.de/inspire/coverage/temperatur_minus_100mNhn.tif</gml:fileReference>
					<gml:fileStructure codeSpace="www.geoinfo.hamburg.de">Raster</gml:fileStructure>
					<gml:mimeType>image/tiff</gml:mimeType>
					<gml:compression>lzw</gml:compression>
				</gml:File>
			</gml:rangeSet>
			<gmlcov:rangeType>
				<swe:DataRecord>
					<swe:field name="band1">
						<swe:QuantityRange>
							<swe:description>Band 1: from temperature</swe:description>
							<swe:uom code="degreeCelsius"/>
							<swe:value>8 15</swe:value>
						</swe:QuantityRange>
					</swe:field>
					<swe:field name="band2">
						<swe:QuantityRange>
							<swe:description>Band 2: to temperature</swe:description>
							<swe:uom code="degreeCelsius"/>
							<swe:value>9 16</swe:value>
						</swe:QuantityRange>
					</swe:field>
				</swe:DataRecord>
			</gmlcov:rangeType>
			<er-c:assessmentMethod nilReason="other:unpopulated" xsi:nil="true"/>
			<er-c:beginLifespanVersion nilReason="other:unpopulated" xsi:nil="true"/>
			<er-c:domainExtent>
				<gmd:EX_Extent>
					<gmd:geographicElement>
						<gmd:EX_GeographicBoundingBox>
							<gmd:extentTypeCode>
								<gco:Boolean>true</gco:Boolean>
							</gmd:extentTypeCode>
							<gmd:westBoundLongitude>
								<gco:Decimal>9.727719152450002</gco:Decimal>
							</gmd:westBoundLongitude>
							<gmd:eastBoundLongitude>
								<gco:Decimal>10.334286275750001</gco:Decimal>
							</gmd:eastBoundLongitude>
							<gmd:southBoundLatitude>
								<gco:Decimal>53.395343110649996</gco:Decimal>
							</gmd:southBoundLatitude>
							<gmd:northBoundLatitude>
								<gco:Decimal>53.74276320465</gco:Decimal>
							</gmd:northBoundLatitude>
						</gmd:EX_GeographicBoundingBox>
					</gmd:geographicElement>
				</gmd:EX_Extent>
			</er-c:domainExtent>
			<er-c:endLifespanVersion nilReason="other:unpopulated" xsi:nil="true"/>
			<er-c:inspireId>
				<base:Identifier>
					<base:localId>RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4</base:localId>
					<base:namespace>https://registry.gdi-de.org/id/de.hh/er-c</base:namespace>
				</base:Identifier>
			</er-c:inspireId>
			<er-c:name>Stadt Hamburg, Temperatur minus 100 m NHN</er-c:name>
			<er-c:potentialType xlink:href="http://inspire.ec.europa.eu/codelist/GeothermalPotentialValue/temperature"/>
			<er-c:typeOfResource xlink:href="http://inspire.ec.europa.eu/codelist/RenewableAndWasteValue/geothermal"/>
			<er-c:validTime>
				<gml:TimePeriod gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4_T0">
					<gml:begin>
						<gml:TimeInstant gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4_T1">
							<gml:timePosition>2018-07-11T11:36:45.6666389+02:00</gml:timePosition>
						</gml:TimeInstant>
					</gml:begin>
					<gml:end>
						<gml:TimeInstant gml:id="RenewableAndWastePotentialCoverage_061a859ecd1427eeb026b0cf8a80d612e0e12356af7c7f39533ca0151a928ee4_T2">
							<gml:timePosition>2019-01-11T11:36:45.6666389+02:00</gml:timePosition>
						</gml:TimeInstant>
					</gml:end>
				</gml:TimePeriod>
			</er-c:validTime>
			<er-c:verticalExtent>
				<er-b:VerticalExtentType>
					<er-b:verticalExtent>
						<er-b:VerticalExtentValue>
							<er-b:scalar uom="m">-100</er-b:scalar>
						</er-b:VerticalExtentValue>
					</er-b:verticalExtent>
					<er-b:verticalReference xlink:href="http://daten-hamburg.de/inspire/codelist/VerticalReferenceValue_Extension.xml#NHN"/>
				</er-b:VerticalExtentType>
			</er-c:verticalExtent>
		</er-c:RenewableAndWastePotentialCoverage>
	</gml:featureMember>
</gml:FeatureCollection>