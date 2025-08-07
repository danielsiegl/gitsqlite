PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE t_attribute
(
	Object_ID INTEGER NULL DEFAULT 0,
	Name TEXT NULL COLLATE NOCASE,
	Scope TEXT NULL COLLATE NOCASE,
	Stereotype TEXT NULL COLLATE NOCASE,
	Containment TEXT NULL COLLATE NOCASE,
	IsStatic INTEGER NULL DEFAULT 0,
	IsCollection INTEGER NULL DEFAULT 0,
	IsOrdered INTEGER NULL DEFAULT 0,
	AllowDuplicates INTEGER NULL DEFAULT 0,
	LowerBound TEXT NULL COLLATE NOCASE,
	UpperBound TEXT NULL COLLATE NOCASE,
	Container TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Derived TEXT NULL COLLATE NOCASE,
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Pos INTEGER NULL,
	GenOption TEXT NULL COLLATE NOCASE,
	Length INTEGER NULL,
	Precision INTEGER NULL,
	Scale INTEGER NULL,
	Const INTEGER NULL,
	Style TEXT NULL COLLATE NOCASE,
	Classifier TEXT NULL COLLATE NOCASE,
	'Default' TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	StyleEx TEXT NULL COLLATE NOCASE
);
INSERT INTO t_attribute VALUES(950,'Status','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',406,0,NULL,0,NULL,NULL,0,NULL,NULL,'Ok','String','{651b27de-06d7-ec7c-76e6-78b6504b1249}',NULL);
INSERT INTO t_attribute VALUES(950,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',407,0,NULL,0,NULL,NULL,0,NULL,NULL,'SystemArchitecture','String','{560ed943-6494-ed60-163e-aa28083b5631}',NULL);
INSERT INTO t_attribute VALUES(950,'ModelPackageInfo','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',408,0,NULL,0,NULL,NULL,0,NULL,NULL,'{88F6B56C-F756-4fe3-9C18-5153CF845ACA}:3b938b4c28447eb5c4342e07869bf068a37fc707182082ff2a490817f7448f22','String','{988573ad-3887-9c16-7c90-9fc0d1c4b1c3}',NULL);
INSERT INTO t_attribute VALUES(950,'Copyright','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',409,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{33e07197-114b-bc9a-55c0-39df369d33de}',NULL);
INSERT INTO t_attribute VALUES(950,'Owners','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',410,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{818c14ee-6e26-c6f5-a510-59a28be5112c}',NULL);
INSERT INTO t_attribute VALUES(950,'Authors','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',411,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{ae13c660-7492-4d5f-9e70-e3139cdc1799}',NULL);
INSERT INTO t_attribute VALUES(950,'Tags','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',412,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{cfd84ed0-15ca-092c-da87-e4c248de9184}',NULL);
INSERT INTO t_attribute VALUES(950,'OID','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',413,0,NULL,0,NULL,NULL,0,NULL,NULL,'73fecff5b6c5247a6eb994b91f0d7f5cc06c80c92996af17b29e38670d8863f7','String','{a24ad2bd-6ce0-c9bc-9eee-37a4dcaa53e9}',NULL);
INSERT INTO t_attribute VALUES(950,'Version','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',414,0,NULL,0,NULL,NULL,0,NULL,NULL,'A','String','{4932dff4-6fd7-bd88-6b4f-59496d143e83}',NULL);
INSERT INTO t_attribute VALUES(950,'ReleaseNotes','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',415,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{50486123-0a13-cd14-acc4-02182b0263d7}',NULL);
INSERT INTO t_attribute VALUES(949,'HintName','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',416,0,NULL,0,NULL,NULL,0,NULL,NULL,'SystemArchitecture','String','{7b460694-4eb1-668e-e356-f8f77d84da5f}',NULL);
INSERT INTO t_attribute VALUES(950,'Guid','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',417,0,NULL,0,NULL,NULL,0,NULL,NULL,'{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}','String','{c22a5e0c-d308-2f23-65ff-b08d25f5ee95}',NULL);
INSERT INTO t_attribute VALUES(950,'ReadOnly','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',418,0,NULL,0,NULL,NULL,0,NULL,NULL,'False','String','{7707660b-6c4c-0333-220e-9daa2d12fc27}',NULL);
INSERT INTO t_attribute VALUES(950,'Description','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',419,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{7238bf43-30b5-9cfc-db78-9e9822ee2df6}',NULL);
INSERT INTO t_attribute VALUES(949,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','0',420,0,NULL,0,NULL,NULL,0,NULL,NULL,'{88F6B56C-F756-4fe3-9C18-5153CF845ACA}','String','{4c33a566-6dcf-9376-41e6-a7e747bb1b1f}',NULL);
INSERT INTO t_attribute VALUES(1504,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',745,0,NULL,0,NULL,NULL,0,NULL,NULL,'Requirements','String','{5d03a167-c4a5-682d-2901-342fb1a3044a}',NULL);
INSERT INTO t_attribute VALUES(1504,'VersionConstraint','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',746,0,NULL,0,NULL,NULL,0,NULL,NULL,'*','String','{4298df21-c539-7e72-0723-0d267f322066}',NULL);
INSERT INTO t_attribute VALUES(1504,'Source','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',747,0,NULL,0,NULL,NULL,0,NULL,NULL,'{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}','String','{65f83dbd-ff22-0855-b339-e8ff81874ee6}',NULL);
INSERT INTO t_attribute VALUES(1504,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',748,0,NULL,0,NULL,NULL,0,NULL,NULL,'{cc472323-774f-4f9b-608e-be83e3a4bae2}','String','{ce42e78e-78e8-82fe-c8e1-78911992bd6e}',NULL);
INSERT INTO t_attribute VALUES(1504,'DependencyClass','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',749,0,NULL,0,NULL,NULL,0,NULL,NULL,'Mandatory','String','{b0f9ca7d-cd60-8cb0-da5b-85c381707ca8}',NULL);
INSERT INTO t_attribute VALUES(1508,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',750,0,NULL,0,NULL,NULL,0,NULL,NULL,'Requirements','String','{e5c86697-9caa-a0fe-3439-3535d02513df}',NULL);
INSERT INTO t_attribute VALUES(1508,'Tags','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',751,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{757e0860-4285-3662-4f65-026f03bc43f0}',NULL);
INSERT INTO t_attribute VALUES(1508,'Status','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',752,0,NULL,0,NULL,NULL,0,NULL,NULL,'Ok','String','{d9fa86cb-8314-3f3d-b8f5-be5ec3ee6869}',NULL);
INSERT INTO t_attribute VALUES(1508,'Owners','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',753,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{7f22ac22-7b3c-f636-7e6d-349945ec87a6}',NULL);
INSERT INTO t_attribute VALUES(1508,'ReadOnly','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',754,0,NULL,0,NULL,NULL,0,NULL,NULL,'False','String','{9349e941-f1f1-b4ab-3d6c-5b9c64bfa881}',NULL);
INSERT INTO t_attribute VALUES(1508,'Description','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',755,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{929f9358-a2b4-5910-13d5-7a0399b63a60}',NULL);
INSERT INTO t_attribute VALUES(1508,'Guid','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',756,0,NULL,0,NULL,NULL,0,NULL,NULL,'{cc472323-774f-4f9b-608e-be83e3a4bae2}','String','{f87c9d2b-0ec9-d3da-0430-d8870c15c6c4}',NULL);
INSERT INTO t_attribute VALUES(1508,'Authors','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',757,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{82d4b44b-6d91-6d36-e5cd-3abd5ab70c8f}',NULL);
INSERT INTO t_attribute VALUES(1508,'ReleaseNotes','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',758,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{c4eb6372-6b64-acad-74ae-a7e61237e3d1}',NULL);
INSERT INTO t_attribute VALUES(1508,'Copyright','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',759,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{bd4eee3c-4134-dd61-7780-87f817a36147}',NULL);
INSERT INTO t_attribute VALUES(1507,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',760,0,NULL,0,NULL,NULL,0,NULL,NULL,'{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}','String','{e385a85e-2425-c8d4-5791-27369329aa7e}',NULL);
INSERT INTO t_attribute VALUES(1507,'DependencyClass','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',761,0,NULL,0,NULL,NULL,0,NULL,NULL,'Mandatory','String','{f49281d7-22b0-120e-97bc-8ee7777e0302}',NULL);
INSERT INTO t_attribute VALUES(1507,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',762,0,NULL,0,NULL,NULL,0,NULL,NULL,'SystemArchitecture','String','{ce78d816-9454-2e15-c77e-e1505bfb36f3}',NULL);
INSERT INTO t_attribute VALUES(1508,'ModelPackageInfo','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',763,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{224532ad-ac4a-1da1-0b32-17f5774349c1}',NULL);
INSERT INTO t_attribute VALUES(1508,'Version','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',764,0,NULL,0,NULL,NULL,0,NULL,NULL,'A','String','{c6f286ba-b462-f853-3863-90cbdad2a37e}',NULL);
INSERT INTO t_attribute VALUES(1508,'OID','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',765,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{46e2f77c-07c0-2a4a-2394-a4defa908623}',NULL);
INSERT INTO t_attribute VALUES(1506,'HintName','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',766,0,NULL,0,NULL,NULL,0,NULL,NULL,'Requirements','String','{19db5cf0-78f0-2b78-8c23-458ca92d1ba9}',NULL);
INSERT INTO t_attribute VALUES(1506,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',767,0,NULL,0,NULL,NULL,0,NULL,NULL,'{AB2F52EB-8C65-4a4c-BDBC-E77DB114C1C8}','String','{29f608d2-4f32-ae9a-7ed7-5f04c0f208e1}',NULL);
INSERT INTO t_attribute VALUES(1507,'Source','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',768,0,NULL,0,NULL,NULL,0,NULL,NULL,'{cc472323-774f-4f9b-608e-be83e3a4bae2}','String','{2be32ae2-380f-0f63-1646-6e68f5c304c4}',NULL);
INSERT INTO t_attribute VALUES(1507,'VersionConstraint','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',769,0,NULL,0,NULL,NULL,0,NULL,NULL,'*','String','{8d321545-645a-4c06-d281-f9ecb8284a77}',NULL);
INSERT INTO t_attribute VALUES(1535,'Owners','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',800,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{43775276-8003-a9e4-ff5b-8a919daab7aa}',NULL);
INSERT INTO t_attribute VALUES(1535,'ModelPackageInfo','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',801,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{4f2a992f-29f0-c54e-b756-941dcb7baabb}',NULL);
INSERT INTO t_attribute VALUES(1535,'Description','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',802,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{eb97a7de-e824-be28-1297-75e0be6a4912}',NULL);
INSERT INTO t_attribute VALUES(1535,'Version','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',803,0,NULL,0,NULL,NULL,0,NULL,NULL,'A','String','{d0807aa8-65d6-6d59-2b85-2e245af506aa}',NULL);
INSERT INTO t_attribute VALUES(1536,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',804,0,NULL,0,NULL,NULL,0,NULL,NULL,'{FB567CC3-3231-438a-B5BD-D43D0C03B5DA}','String','{53a12210-c3e1-5cd2-5f0f-de2549fb6ed7}',NULL);
INSERT INTO t_attribute VALUES(1536,'HintName','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',805,0,NULL,0,NULL,NULL,0,NULL,NULL,'Trace','String','{5d9e1f37-f6fb-a7f6-c9fd-10c8b2dd70ef}',NULL);
INSERT INTO t_attribute VALUES(1535,'ReadOnly','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',806,0,NULL,0,NULL,NULL,0,NULL,NULL,'False','String','{a21b9c52-eba4-8da1-9a65-20a282b7207e}',NULL);
INSERT INTO t_attribute VALUES(1535,'ReleaseNotes','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',807,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{dcc85533-79c1-0d39-5b36-bf0bd89f9258}',NULL);
INSERT INTO t_attribute VALUES(1535,'Status','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',808,0,NULL,0,NULL,NULL,0,NULL,NULL,'Ok','String','{3abc4d05-81eb-c133-801f-0f1f2f32c91f}',NULL);
INSERT INTO t_attribute VALUES(1535,'Authors','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',809,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{dc7de007-0902-cec0-79c2-9614d641b6d9}',NULL);
INSERT INTO t_attribute VALUES(1535,'Copyright','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',810,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{3c03268c-18f6-b4ce-7992-1b8076b1ef9a}',NULL);
INSERT INTO t_attribute VALUES(1535,'OID','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',811,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{382f4f61-ffac-62da-f0dc-d4c43bd352b4}',NULL);
INSERT INTO t_attribute VALUES(1535,'Guid','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',812,0,NULL,0,NULL,NULL,0,NULL,NULL,'{7c125bb0-048c-9a33-1b8c-61d29b2e6d25}','String','{f0289f18-6bcd-8484-8771-f18452cf1d2b}',NULL);
INSERT INTO t_attribute VALUES(1535,'Tags','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',813,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{8a13c08c-90df-7fd6-8ab9-a59ac79bd53f}',NULL);
INSERT INTO t_attribute VALUES(1535,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',814,0,NULL,0,NULL,NULL,0,NULL,NULL,'Trace','String','{475aae67-5c29-df57-5aa0-0f31f6b0e36b}',NULL);
INSERT INTO t_attribute VALUES(1538,'OID','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',815,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{ce40f0b2-27a2-9be9-bc3e-c16a88e70ba2}',NULL);
INSERT INTO t_attribute VALUES(1538,'Status','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',816,0,NULL,0,NULL,NULL,0,NULL,NULL,'Ok','String','{215cb3ff-d18d-e9bd-a4b4-4001fdac35d1}',NULL);
INSERT INTO t_attribute VALUES(1538,'Copyright','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',817,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{7ac14438-0c67-4423-1f69-68dbba0107e6}',NULL);
INSERT INTO t_attribute VALUES(1538,'Guid','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',818,0,NULL,0,NULL,NULL,0,NULL,NULL,'{bce13ca7-48c1-ce39-776a-579caab6ad5d}','String','{019f3298-51c9-39a4-eac3-29d0c4c7db8a}',NULL);
INSERT INTO t_attribute VALUES(1538,'Description','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',819,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{5778ae01-f8d4-88f6-8bab-748e359ce2c8}',NULL);
INSERT INTO t_attribute VALUES(1538,'ReleaseNotes','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',820,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{7cf09540-fac9-aff0-2742-4d7463d3308d}',NULL);
INSERT INTO t_attribute VALUES(1538,'Version','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',821,0,NULL,0,NULL,NULL,0,NULL,NULL,'A','String','{2aef6a37-7fa2-110c-2e1b-aec24bf09d9a}',NULL);
INSERT INTO t_attribute VALUES(1539,'Target','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',822,0,NULL,0,NULL,NULL,0,NULL,NULL,'{E362C698-202B-4cc1-9861-BDAFAC0D6389}','String','{44f72175-31fa-eda1-d15d-e8a5f53943f7}',NULL);
INSERT INTO t_attribute VALUES(1539,'HintName','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',823,0,NULL,0,NULL,NULL,0,NULL,NULL,'PolarionImport','String','{9612ae38-1911-c523-03ab-ec70c1e5ed6c}',NULL);
INSERT INTO t_attribute VALUES(1538,'Tags','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',824,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{1bae87ad-f61a-9b73-7f5b-4fa5f08006e3}',NULL);
INSERT INTO t_attribute VALUES(1538,'Name','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',825,0,NULL,0,NULL,NULL,0,NULL,NULL,'PolarionImport','String','{1b981cd6-4629-ee00-3bd3-250a4944ca1f}',NULL);
INSERT INTO t_attribute VALUES(1538,'ModelPackageInfo','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',826,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{90a615b9-8a7f-c829-ebf4-f2d9233f6bdd}',NULL);
INSERT INTO t_attribute VALUES(1538,'Authors','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',827,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{02d96bb0-2a11-aea3-3bc1-deaf9069d087}',NULL);
INSERT INTO t_attribute VALUES(1538,'Owners','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',828,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{8e5b7c3d-959c-0cec-acab-f28f84f356ae}',NULL);
INSERT INTO t_attribute VALUES(1538,'ReadOnly','Public',NULL,'Not Specified',0,0,0,1,'1','1',NULL,NULL,'0',829,0,NULL,0,NULL,NULL,0,NULL,NULL,'False','String','{4d6b664f-dfc4-4214-d156-5a2ed520ef08}',NULL);
INSERT INTO t_attribute VALUES(1903,'Source','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',865,0,NULL,0,NULL,NULL,0,NULL,NULL,'{d3095554-4013-6b8a-8629-b582b167ca1d}','String','{b3585e07-6936-fd9e-3b7d-427a24fbfd06}',NULL);
INSERT INTO t_attribute VALUES(1901,'Status','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',866,0,NULL,0,NULL,NULL,0,NULL,NULL,'Ok','String','{6aa2b78e-a180-934f-a664-c45dcc811472}',NULL);
INSERT INTO t_attribute VALUES(1902,'Target','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',867,0,NULL,0,NULL,NULL,0,NULL,NULL,'{84586B2D-2C36-4b5a-ACF1-7C4E07B731C0}','String','{f6fd6334-3686-273c-65d7-6748087e8884}',NULL);
INSERT INTO t_attribute VALUES(1902,'HintName','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',868,0,NULL,0,NULL,NULL,0,NULL,NULL,'Use Cases','String','{5a3634e0-891e-bcf0-4e7c-f785a94e186a}',NULL);
INSERT INTO t_attribute VALUES(1903,'VersionConstraint','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',869,0,NULL,0,NULL,NULL,0,NULL,NULL,'*','String','{54dcd5b6-2953-543a-d7e5-448261763b4c}',NULL);
INSERT INTO t_attribute VALUES(1903,'Name','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',870,0,NULL,0,NULL,NULL,0,NULL,NULL,'Requirements','String','{bcacff5f-add3-0d1c-4e1b-1ac6d9a1fd55}',NULL);
INSERT INTO t_attribute VALUES(1903,'Target','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',871,0,NULL,0,NULL,NULL,0,NULL,NULL,'{cc472323-774f-4f9b-608e-be83e3a4bae2}','String','{c512b1fa-5848-d935-b1a1-b6c4033696ec}',NULL);
INSERT INTO t_attribute VALUES(1903,'DependencyClass','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',872,0,NULL,0,NULL,NULL,0,NULL,NULL,'Mandatory','String','{dd63ad4f-830c-11fc-2c87-684b573cfe85}',NULL);
INSERT INTO t_attribute VALUES(1901,'ReleaseNotes','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',873,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{d54e798b-2d7d-6b99-019d-6479cb5d36bf}',NULL);
INSERT INTO t_attribute VALUES(1901,'Description','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',874,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{8df2376d-22ff-ef35-a713-b3e47f354cb5}',NULL);
INSERT INTO t_attribute VALUES(1901,'Authors','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',875,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{4d67d821-da9d-d3d3-d6f0-dc249ac774dd}',NULL);
INSERT INTO t_attribute VALUES(1901,'Name','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',876,0,NULL,0,NULL,NULL,0,NULL,NULL,'Use Cases','String','{a13d29db-2786-a967-71f9-e80e269ee3c9}',NULL);
INSERT INTO t_attribute VALUES(1901,'ReadOnly','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',877,0,NULL,0,NULL,NULL,0,NULL,NULL,'False','String','{53b49e86-b7c8-3b1a-6a5c-ce39295c725d}',NULL);
INSERT INTO t_attribute VALUES(1901,'Copyright','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',878,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{452b3a80-d4f3-620c-ee37-642e8362924b}',NULL);
INSERT INTO t_attribute VALUES(1901,'Guid','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',879,0,NULL,0,NULL,NULL,0,NULL,NULL,'{d3095554-4013-6b8a-8629-b582b167ca1d}','String','{8a8b3176-2d9e-22b0-3711-692481418278}',NULL);
INSERT INTO t_attribute VALUES(1901,'Version','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',880,0,NULL,0,NULL,NULL,0,NULL,NULL,'A','String','{3fb7f9bd-2d9c-b169-8900-d67492caef1e}',NULL);
INSERT INTO t_attribute VALUES(1901,'ModelPackageInfo','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',881,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{6e7b7809-00e2-cb48-f165-9dfbfbf3523a}',NULL);
INSERT INTO t_attribute VALUES(1901,'Tags','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',882,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{9ac6f74d-9308-9f85-47f8-63bff463b50a}',NULL);
INSERT INTO t_attribute VALUES(1901,'OID','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',883,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{bc54aa11-8ada-88af-065d-712a1194fc99}',NULL);
INSERT INTO t_attribute VALUES(1901,'Owners','Public',NULL,'Not Specified',0,0,0,0,NULL,NULL,NULL,NULL,'0',884,0,NULL,0,NULL,NULL,0,NULL,NULL,'','String','{28155aa2-abaa-27ca-29b6-a8d05c832732}',NULL);
CREATE TABLE t_attributeconstraints
(
	Object_ID INTEGER NULL DEFAULT 0,
	'Constraint' TEXT NOT NULL COLLATE NOCASE,
	AttName TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	ID INTEGER NOT NULL,
	CONSTRAINT pk_attributeconstraints PRIMARY KEY ('Constraint',ID)
);
CREATE TABLE t_attributetag
(
	PropertyID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ElementID INTEGER NULL DEFAULT 0,
	Property TEXT NULL COLLATE NOCASE,
	VALUE TEXT NULL COLLATE NOCASE,
	NOTES TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_authors
(
	AuthorName TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Roles TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_cardinality
(
	Cardinality TEXT NOT NULL COLLATE NOCASE PRIMARY KEY
);
INSERT INTO t_cardinality VALUES('*');
INSERT INTO t_cardinality VALUES('0');
INSERT INTO t_cardinality VALUES('0..*');
INSERT INTO t_cardinality VALUES('0..1');
INSERT INTO t_cardinality VALUES('1');
INSERT INTO t_cardinality VALUES('1..');
INSERT INTO t_cardinality VALUES('1..*');
CREATE TABLE t_category
(
	CategoryID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	NOTES TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_clients
(
	Name TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Organisation TEXT NULL COLLATE NOCASE,
	Phone1 TEXT NULL COLLATE NOCASE,
	Phone2 TEXT NULL COLLATE NOCASE,
	Mobile TEXT NULL COLLATE NOCASE,
	Fax TEXT NULL COLLATE NOCASE,
	Email TEXT NULL COLLATE NOCASE,
	Roles TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_complexitytypes
(
	Complexity TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	NumericWeight INTEGER NULL DEFAULT 0
);
INSERT INTO t_complexitytypes VALUES('Extreme',6);
INSERT INTO t_complexitytypes VALUES('High',4);
INSERT INTO t_complexitytypes VALUES('Low',2);
INSERT INTO t_complexitytypes VALUES('Medium',3);
INSERT INTO t_complexitytypes VALUES('V.High',5);
INSERT INTO t_complexitytypes VALUES('V.Low',1);
CREATE TABLE t_connector
(
	Connector_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	Direction TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Connector_Type TEXT NULL COLLATE NOCASE,
	SubType TEXT NULL COLLATE NOCASE,
	SourceCard TEXT NULL COLLATE NOCASE,
	SourceAccess TEXT NULL COLLATE NOCASE,
	SourceElement TEXT NULL COLLATE NOCASE,
	DestCard TEXT NULL COLLATE NOCASE,
	DestAccess TEXT NULL COLLATE NOCASE,
	DestElement TEXT NULL COLLATE NOCASE,
	SourceRole TEXT NULL COLLATE NOCASE,
	SourceRoleType TEXT NULL COLLATE NOCASE,
	SourceRoleNote TEXT NULL COLLATE NOCASE,
	SourceContainment TEXT NULL COLLATE NOCASE,
	SourceIsAggregate INTEGER NULL DEFAULT 0,
	SourceIsOrdered INTEGER NULL DEFAULT 0,
	SourceQualifier TEXT NULL COLLATE NOCASE,
	DestRole TEXT NULL COLLATE NOCASE,
	DestRoleType TEXT NULL COLLATE NOCASE,
	DestRoleNote TEXT NULL COLLATE NOCASE,
	DestContainment TEXT NULL COLLATE NOCASE,
	DestIsAggregate INTEGER NULL DEFAULT 0,
	DestIsOrdered INTEGER NULL DEFAULT 0,
	DestQualifier TEXT NULL COLLATE NOCASE,
	Start_Object_ID INTEGER NULL DEFAULT 0,
	End_Object_ID INTEGER NULL DEFAULT 0,
	Top_Start_Label TEXT NULL COLLATE NOCASE,
	Top_Mid_Label TEXT NULL COLLATE NOCASE,
	Top_End_Label TEXT NULL COLLATE NOCASE,
	Btm_Start_Label TEXT NULL COLLATE NOCASE,
	Btm_Mid_Label TEXT NULL COLLATE NOCASE,
	Btm_End_Label TEXT NULL COLLATE NOCASE,
	Start_Edge INTEGER NULL DEFAULT 0,
	End_Edge INTEGER NULL DEFAULT 0,
	PtStartX INTEGER NULL DEFAULT 0,
	PtStartY INTEGER NULL DEFAULT 0,
	PtEndX INTEGER NULL DEFAULT 0,
	PtEndY INTEGER NULL DEFAULT 0,
	SeqNo INTEGER NULL DEFAULT 0,	-- For sequence diagrams - stores sequence number
	HeadStyle INTEGER NULL DEFAULT 0,	-- Head style - filled, open ... depends on connector
	LineStyle INTEGER NULL DEFAULT 0,	-- Line is dot, dash... depends on connector
	RouteStyle INTEGER NULL DEFAULT 0,	-- Route line direct/auto ...user selection
	IsBold INTEGER NULL DEFAULT 0,	-- Line style is bold or normal
	LineColor INTEGER NULL DEFAULT 0,	-- Color of line
	Stereotype TEXT NULL COLLATE NOCASE,
	VirtualInheritance TEXT NULL COLLATE NOCASE,
	LinkAccess TEXT NULL COLLATE NOCASE,
	PDATA1 TEXT NULL COLLATE NOCASE,
	PDATA2 TEXT NULL COLLATE NOCASE,
	PDATA3 TEXT NULL COLLATE NOCASE,
	PDATA4 TEXT NULL COLLATE NOCASE,
	PDATA5 TEXT NULL COLLATE NOCASE,
	DiagramID INTEGER NULL DEFAULT 0,
	ea_guid TEXT NULL COLLATE NOCASE,
	SourceConstraint TEXT NULL COLLATE NOCASE,
	DestConstraint TEXT NULL COLLATE NOCASE,
	SourceIsNavigable INTEGER NULL,
	DestIsNavigable INTEGER NULL,
	IsRoot INTEGER NULL,
	IsLeaf INTEGER NULL,
	IsSpec INTEGER NULL,
	SourceChangeable TEXT NULL COLLATE NOCASE,
	DestChangeable TEXT NULL COLLATE NOCASE,
	SourceTS TEXT NULL COLLATE NOCASE,
	DestTS TEXT NULL COLLATE NOCASE,
	StateFlags TEXT NULL COLLATE NOCASE,
	ActionFlags TEXT NULL COLLATE NOCASE,
	IsSignal INTEGER NULL,
	IsStimulus INTEGER NULL,
	DispatchAction TEXT NULL COLLATE NOCASE,
	Target2 INTEGER NULL,
	StyleEx TEXT NULL COLLATE NOCASE,
	SourceStereotype TEXT NULL COLLATE NOCASE,
	DestStereotype TEXT NULL COLLATE NOCASE,
	SourceStyle TEXT NULL COLLATE NOCASE,
	DestStyle TEXT NULL COLLATE NOCASE,
	EventFlags TEXT NULL COLLATE NOCASE
);
INSERT INTO t_connector VALUES(288,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,724,717,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{1C4E190D-0CC2-4f21-98A4-DBC6BC2967AA}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(289,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,726,720,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{486E39B5-2A01-4d32-ADD5-8B621B57125F}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(290,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,728,717,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{F094E5C3-68CC-4b26-92FA-27E0F1A930F4}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(291,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,739,733,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{C6F55942-5FAF-44ce-9EF9-E36D305E11F4}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(292,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,740,733,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{1EFD1AA4-7513-468a-A1DE-9282E6B7E31D}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(293,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,741,731,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{41B789E7-A1AA-4814-BB2F-639FB778FD62}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(294,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,741,740,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{88FFD86F-E23B-45a4-A1BF-9051659E77C3}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(295,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,742,732,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{7374134D-3862-4866-8354-3045BABB7DDC}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(297,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,737,728,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{417A5CDC-626A-450a-AA97-4FC06BE68BA6}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(298,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,718,738,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{D3F982C7-AD00-4501-BCAA-250F0C6DEC41}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(299,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,719,734,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{80F5312B-4CB3-430a-BCA2-564220675181}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(300,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,721,732,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{0A9D1378-4F60-4f3b-BFD3-441CD165F0C8}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(301,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,722,732,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{1E2E7B1F-E2CB-4251-8432-610D88B19AC6}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(302,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,723,732,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{7382CEF9-0AEC-4761-8B44-B73CC763F7A3}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(303,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,724,733,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{BF8E7936-2801-4381-8774-C97D51FDF44E}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(305,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,724,725,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{92C9CF52-BF40-4cd3-8E45-44EAF10E737B}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(306,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,724,727,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{570B4815-8CAF-47c5-B46F-974FE8FF079A}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(307,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,729,720,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{A5F15A7F-576F-415f-80DB-8B699D5303F7}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(308,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,730,725,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{1039802A-673D-4a2b-A9A0-C8246DBEBDA7}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(309,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,730,726,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{3B30D2D1-BC93-4466-98D1-2698BBE7C938}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(310,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,731,740,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{8CF4AAF0-9BF7-4b81-8227-4CCE50C1C6BF}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(311,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,734,733,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{572C7CCB-8447-455e-843C-44653181BEB1}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(312,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,735,740,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{2CDC5992-D8D1-4b5a-A87B-8698C5B7510A}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(313,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,735,731,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{C35F024F-AFA5-414c-BC28-447170B50D71}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(314,'','Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,736,734,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{654E2AF2-B21A-4e6d-A903-1F2318299491}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(315,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,737,718,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{479FB601-1707-462b-A121-286212A5D91B}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(316,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,737,723,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{8C10378C-1BD1-4315-BF08-8D2D388B9F52}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(317,'','Source -> Destination',NULL,'UseCase','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,737,722,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{F8BD6A2F-E391-421f-B6BF-A49671550E48}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(318,NULL,'Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,738,746,NULL,NULL,NULL,NULL,unistr(' \u000a«extend»'),NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend','0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{4A463400-CCA9-403c-BF13-130C9877FC56}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(319,NULL,'Source -> Destination',NULL,'UseCase',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,724,746,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B0EC47E3-768D-4c4c-919D-2DA4D6561CA5}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(320,NULL,'Source -> Destination',NULL,'UseCase','Extends',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,717,747,NULL,NULL,NULL,NULL,unistr(' \u000a«extend»'),NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'extend','0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{3537D88D-288D-4b31-BF5C-0D98E7A68B1E}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(325,NULL,'Source -> Destination',NULL,'UseCase',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,737,742,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{7A99908D-D146-4bfe-ACBC-39C153859375}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(326,NULL,'Source -> Destination',NULL,'UseCase',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,737,731,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{D239CA03-F341-43f9-8757-A23833EF1AC4}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,109,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(362,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,924,923,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{5728E050-D144-4b0b-BEAC-3283D1ACF343}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(364,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,'green',NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,930,938,'+green',NULL,NULL,NULL,NULL,NULL,1,4,423,-277,562,-287,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=6;EX=0;EY=0;EDGE=1;',0,'{B51A5802-8F86-410a-B4E1-5576885BD3EB}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,59,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(365,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,'yellow',NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,930,938,'+yellow',NULL,NULL,NULL,NULL,NULL,1,4,470,-277,562,-287,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=48;SY=17;EX=0;EY=0;SCME=0;SCTR=0;EDGE=1;',0,'{F7E54EAF-E8C2-41f5-8E4A-97097A3604FB}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(366,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,'red',NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,930,938,'+red',NULL,NULL,NULL,NULL,NULL,1,4,382,-277,562,-287,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=-39;SY=-7;EX=0;EY=0;EDGE=1;',0,'{43F94CEE-783A-4fc4-BC86-65FEFE282066}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(367,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,934,924,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B39FD505-0BF6-47da-B6CB-9A747A4835BE}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,7471169,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(375,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,938,923,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{20CE0FA4-E86E-4073-8E54-BD777EC13C87}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(412,NULL,'Source -> Destination',NULL,'NoteLink',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,1008,1009,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{4F38D9A6-7F18-4f6f-8D7B-8B2EC681FA42}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,6422607,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;','Union=0;Derived=0;AllowDuplicates=0;',NULL);
INSERT INTO t_connector VALUES(413,NULL,'Source -> Destination',NULL,'NoteLink',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,1008,1006,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{E9D16A14-86A5-4b31-A533-5FD2357E612A}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;','Union=0;Derived=0;AllowDuplicates=0;',NULL);
INSERT INTO t_connector VALUES(558,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,'red',NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,930,1461,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{00D93178-A94C-42e1-8C15-22B663D86ED7}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(559,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,'green',NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,930,1461,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{CAF8E858-BF84-43a1-9D39-528A6893C772}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(560,NULL,'Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',2,0,NULL,1461,923,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{943716DA-4602-4b40-AB0C-AE2CBA8DDF92}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(562,NULL,'Unspecified',NULL,'Connector',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,928,1464,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{7EB2C038-9DFB-45d2-9C08-BB62B5DD2B8A}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(563,NULL,'Unspecified',NULL,'Connector',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,928,942,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B40B221E-7074-4572-B4A2-654BFEEB9275}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(588,'MyClass','Destination -> Source',NULL,'Dependency','','1','Public',NULL,'1','Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1504,950,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{53e359a4-fed2-476e-7591-e6ce8afff5d5}',NULL,NULL,-1,0,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(589,'MyClass','Destination -> Source',NULL,'Dependency','','1','Public',NULL,'1','Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1507,1508,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{a5960287-513f-e9f5-77aa-5cf156fda968}',NULL,NULL,-1,0,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(604,'','Source -> Destination',NULL,'Association','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1552,1551,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{f35a93ab-292d-2de6-400b-d7d221ca2d35}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(605,'','Source -> Destination',NULL,'Association','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1548,1546,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{f8e77f77-e442-1722-3330-c49cdc884740}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(611,NULL,'Source -> Destination',NULL,'UseCase',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,724,720,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{887378F7-27FD-4355-8923-7D2BF213A16D}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(615,'','Source -> Destination',NULL,'Association','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1514,1519,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{1ef85b37-7fc9-4731-eed9-f0b8c6b7265c}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(618,NULL,'Source -> Destination',NULL,'Realisation',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,923,1516,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B848BEC8-925B-4d26-8A98-0BF1C2F5E8C5}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(619,'','Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,NULL,1565,923,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B9B478CF-30C3-4d51-AACC-9FD34A673173}',NULL,NULL,-1,0,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Unspecified;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(621,NULL,'Source -> Destination',NULL,'Realisation',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1461,1519,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{34B5FDDC-E290-424c-9623-60F23C3C3900}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(624,NULL,'Source -> Destination',NULL,'Realisation',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,938,1516,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{B76B175D-C602-4dd5-A795-26CE24B33908}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(627,'','Source -> Destination',NULL,'Aggregation','Strong',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,NULL,1569,930,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{C9C0BEE1-95AD-4d53-BD2F-7BE816C04FD0}',NULL,NULL,-1,0,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Unspecified;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(662,'','Source -> Destination',NULL,'Dependency','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,934,1669,NULL,NULL,NULL,NULL,NULL,NULL,2,4,174,-345,456,-338,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;EDGE=2;',0,'{24EDEBB3-557A-4adf-A1AE-6436E08CF7F1}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(663,'','Source -> Destination',NULL,'Abstraction','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,934,1664,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'trace',NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{97227DA2-56AB-4ab4-803E-9EDDF99F82B2}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
INSERT INTO t_connector VALUES(664,'','Source -> Destination',NULL,'Association','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1642,1665,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{704e3d1a-063b-d25f-34a0-02f7af0f8bd8}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(665,'','Source -> Destination',NULL,'Association','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1669,1664,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{75391b1a-edc2-72f2-743e-a31f8c0ccea7}',NULL,NULL,0,-1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(830,NULL,'Source -> Destination',NULL,'Dependency',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,924,1889,NULL,NULL,NULL,NULL,'«satisfy»',NULL,0,0,0,0,0,0,0,0,0,3,0,-1,'satisfy','0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{29A70ED9-41A9-43df-9984-B49970F8332C}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(835,NULL,'Unspecified',NULL,'Association',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,724,732,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{D8B17351-1EB0-45ea-B4CC-3FD8ADC56CE2}',NULL,NULL,0,0,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(836,NULL,'Unspecified',NULL,'Association',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,724,747,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{885C586C-4A67-4bef-BD40-02631C363ACC}',NULL,NULL,0,0,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(843,NULL,'Unspecified',NULL,'Association',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,724,1895,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{E8015C36-7E0C-40d5-BA81-1CB721058550}',NULL,NULL,0,0,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(844,NULL,'Source -> Destination',NULL,'Dependency',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,1895,1889,NULL,NULL,NULL,NULL,'«trace»',NULL,2,4,146,-258,422,-185,0,0,0,3,0,-1,'trace','0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;EDGE=2;',0,'{276766B5-651C-4a15-8ECF-92B9FB8C58F5}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(848,NULL,'Source -> Destination',NULL,'Usage',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,1898,733,NULL,NULL,NULL,NULL,'«use»',NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{65764271-EF11-430d-A368-D065CDE00089}',NULL,NULL,0,1,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Non-Navigable;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Navigable;',NULL);
INSERT INTO t_connector VALUES(851,NULL,'Unspecified',NULL,'Association',NULL,NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,NULL,NULL,NULL,'Unspecified',0,0,NULL,1898,747,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,'0',NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{F88F5E6D-6800-4529-8C85-63268910CFAB}',NULL,NULL,0,0,0,0,NULL,'none','none','instance','instance',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;','Union=0;Derived=0;AllowDuplicates=0;Owned=0;Navigable=Unspecified;',NULL);
INSERT INTO t_connector VALUES(853,'MyClass','Destination -> Source',NULL,'Dependency','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1903,1901,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'{896e698b-735c-2d70-b334-725cc4fc79f4}',NULL,NULL,1,0,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_connector VALUES(854,'','Source -> Destination',NULL,'Usage','',NULL,'Public',NULL,NULL,'Public',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,737,747,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SX=0;SY=0;EX=0;EY=0;',0,'{45ED0998-0B5E-4ce4-A6E2-41E3F3E22C66}',NULL,NULL,0,1,0,0,0,'none','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AllowDuplicates=0;Derived=0;Navigable=Non-Navigable;Owned=0;Union=0;','AllowDuplicates=0;Derived=0;Navigable=Navigable;Owned=0;Union=0;',NULL);
CREATE TABLE t_connectorconstraint
(
	ConnectorID INTEGER NOT NULL DEFAULT 0,
	'Constraint' TEXT NOT NULL COLLATE NOCASE,
	ConstraintType TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_connectorconstraint PRIMARY KEY (ConnectorID,'Constraint')
);
CREATE TABLE t_connectortag
(
	PropertyID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ElementID INTEGER NULL DEFAULT 0,
	Property TEXT NULL COLLATE NOCASE,
	VALUE TEXT NULL COLLATE NOCASE,
	NOTES TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_connectortypes
(
	Connector_Type TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE
);
INSERT INTO t_connectortypes VALUES('Abstraction','Abstraction');
INSERT INTO t_connectortypes VALUES('Aggregation','Aggregation');
INSERT INTO t_connectortypes VALUES('Assembly','Assembly');
INSERT INTO t_connectortypes VALUES('Association','Association');
INSERT INTO t_connectortypes VALUES('Collaboration','Collaboration');
INSERT INTO t_connectortypes VALUES('CommunicationPath','CommunicationPath');
INSERT INTO t_connectortypes VALUES('Connector','Composite Connector');
INSERT INTO t_connectortypes VALUES('ControlFlow','ControlFlow');
INSERT INTO t_connectortypes VALUES('Delegate','Delegate');
INSERT INTO t_connectortypes VALUES('Dependency','Dependency');
INSERT INTO t_connectortypes VALUES('Deployment','Deployment');
INSERT INTO t_connectortypes VALUES('ERLink','ERLink');
INSERT INTO t_connectortypes VALUES('Extension','Extension');
INSERT INTO t_connectortypes VALUES('Generalization','Generalization');
INSERT INTO t_connectortypes VALUES('InformationFlow','InformationFlow');
INSERT INTO t_connectortypes VALUES('Instantiation','Instantiation');
INSERT INTO t_connectortypes VALUES('InterruptFlow','InterruptFlow');
INSERT INTO t_connectortypes VALUES('Manifest','Manifest');
INSERT INTO t_connectortypes VALUES('Nesting','Nesting');
INSERT INTO t_connectortypes VALUES('NoteLink','NoteLink');
INSERT INTO t_connectortypes VALUES('ObjectFlow','ObjectFlow');
INSERT INTO t_connectortypes VALUES('Package','Package');
INSERT INTO t_connectortypes VALUES('ProtocolConformance','ProtocolConformance');
INSERT INTO t_connectortypes VALUES('ProtocolTransition','ProtocolTransition');
INSERT INTO t_connectortypes VALUES('Realisation','Realisation');
INSERT INTO t_connectortypes VALUES('Sequence','Sequence');
INSERT INTO t_connectortypes VALUES('StateFlow','StateFlow');
INSERT INTO t_connectortypes VALUES('Substitution','Substitution');
INSERT INTO t_connectortypes VALUES('Usage','Usage');
INSERT INTO t_connectortypes VALUES('UseCase','UseCase');
CREATE TABLE t_constants
(
	ConstantName TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	ConstantValue TEXT NULL COLLATE NOCASE
);
INSERT INTO t_constants VALUES('CompanyName','Sparx Systems');
INSERT INTO t_constants VALUES('ECF_EC','1.4');
INSERT INTO t_constants VALUES('ECF_EWF','-0.03');
INSERT INTO t_constants VALUES('HoursPerUCP','20');
INSERT INTO t_constants VALUES('ProjectName','DOJ');
INSERT INTO t_constants VALUES('TCF_TC','0.6');
INSERT INTO t_constants VALUES('TCF_TWF','0.01');
CREATE TABLE t_constrainttypes
(
	'Constraint' TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE,	-- Description of Constraint
	Notes TEXT NULL COLLATE NOCASE	-- Further notes
);
INSERT INTO t_constrainttypes VALUES('Invariant','A state the object must always be in','1');
INSERT INTO t_constrainttypes VALUES('Post-condition','An ending state that must be met','1');
INSERT INTO t_constrainttypes VALUES('Pre-condition','A starting state that must be met','1');
INSERT INTO t_constrainttypes VALUES('Process','A process that must occur','1');
CREATE TABLE t_datatypes
(
	Type TEXT NULL COLLATE NOCASE,
	ProductName TEXT NULL COLLATE NOCASE,
	DataType TEXT NULL COLLATE NOCASE,
	Size INTEGER NULL,
	MaxLen INTEGER NULL,
	MaxPrec INTEGER NULL,
	MaxScale INTEGER NULL DEFAULT 0,
	DefaultLen INTEGER NULL,
	DefaultPrec INTEGER NULL,
	DefaultScale INTEGER NULL,
	User INTEGER NULL,
	PDATA1 TEXT NULL COLLATE NOCASE,
	PDATA2 TEXT NULL COLLATE NOCASE,
	PDATA3 TEXT NULL COLLATE NOCASE,
	PDATA4 TEXT NULL COLLATE NOCASE,
	HasLength TEXT NULL COLLATE NOCASE,
	GenericType TEXT NULL COLLATE NOCASE,
	DatatypeID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO t_datatypes VALUES('DDL','Oracle','CHAR',1,2000,0,0,1,0,0,0,'1','1','1','1','1','char',1);
INSERT INTO t_datatypes VALUES('DDL','Oracle','VARCHAR2',1,4000,0,0,50,0,0,0,'1','1','1','1','1','varchar',2);
INSERT INTO t_datatypes VALUES('DDL','Oracle','VARCHAR',1,4000,0,0,50,0,0,0,'1','1','1','1','1','varchar',3);
INSERT INTO t_datatypes VALUES('DDL','Oracle','NCHAR',1,2000,0,0,50,0,0,0,'1','1','1','1','1','nchar',4);
INSERT INTO t_datatypes VALUES('DDL','Oracle','NVARCHAR',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',5);
INSERT INTO t_datatypes VALUES('DDL','Oracle','FLOAT',1,126,0,0,126,0,0,0,'1','1','1','1','1','float',6);
INSERT INTO t_datatypes VALUES('DDL','Oracle','NUMBER',2,0,38,0,0,8,2,0,'1','1','1','1','1','number',7);
INSERT INTO t_datatypes VALUES('DDL','Oracle','DATE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',8);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ROWID',0,0,0,0,0,0,0,0,'1','1','1','1','1','uniqueidentifier',9);
INSERT INTO t_datatypes VALUES('DDL','Oracle','RAW',1,2000,0,0,2000,0,0,0,'1','1','1','1','1','binary',10);
INSERT INTO t_datatypes VALUES('DDL','Oracle','LONG RAW',0,0,0,0,0,0,0,0,'1','1','1','1','1','binary',11);
INSERT INTO t_datatypes VALUES('DDL','Oracle','CLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',12);
INSERT INTO t_datatypes VALUES('DDL','Oracle','LONG',0,0,0,0,0,0,0,0,'1','1','1','1','1','long',13);
INSERT INTO t_datatypes VALUES('DDL','Oracle','NCLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',15);
INSERT INTO t_datatypes VALUES('DDL','Oracle','BLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',16);
INSERT INTO t_datatypes VALUES('DDL','Oracle','BFILE',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',17);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','binary',1,8000,0,0,10,0,0,0,'1','1','1','1','1','binary',18);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',19);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','char',1,8000,0,0,1,0,0,0,'1','1','1','1','1','char',20);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','DateTime',21);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','decimal',2,0,38,0,0,18,0,0,'1','1','1','1','1','decimal',22);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','float',1,53,0,0,53,0,0,0,'1','1','1','1','1','float',23);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','binary',24);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',25);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','money',0,0,0,0,0,0,0,0,'1','1','1','1','1','currency',26);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','nchar',1,4000,0,0,10,0,0,0,'1','1','1','1','1','nchar',27);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',28);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','nvarchar',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',29);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','numeric',2,0,38,0,0,18,0,0,'1','1','1','1','1','numeric',30);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','real',0,0,0,0,0,0,0,0,'1','1','1','1','1','real',31);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',32);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',33);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',34);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',35);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',36);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',37);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','varchar',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varchar',38);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','varbinary',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varbinary',39);
INSERT INTO t_datatypes VALUES('DDL','SQLServer7','uniqueidentifier',0,0,0,0,0,0,0,0,'1','1','1','1','1','uniqueidentifier',40);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Text',1,255,0,0,50,0,0,0,'1','1','1','1','1','char',41);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Memo',0,65535,0,0,0,0,0,0,'1','1','1','1','1','text',42);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','DateTime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',43);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Currency',2,0,15,0,0,15,4,0,'1','1','1','1','1','currency',44);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',45);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Long',0,0,0,0,0,0,0,0,'1','1','1','1','1','long',46);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Single',0,0,7,0,0,0,7,0,'1','1','1','1','1','float',47);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Double',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',48);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Counter',0,0,0,0,0,0,0,0,'1','1','1','1','1','counter',49);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','YesNo',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',50);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Boolean',0,0,0,0,0,0,0,0,'1','1','1','1','1','Boolean',51);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','Byte',52);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Currency',0,0,0,0,0,0,0,0,'1','1','1','1','1','Currency',53);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Date',0,0,0,0,0,0,0,0,'1','1','1','1','1','DateTime',54);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',55);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',56);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Long',57);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Object',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',58);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Single',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',59);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','String',0,0,0,0,0,0,0,0,'1','1','1','1','1','String',60);
INSERT INTO t_datatypes VALUES('Code','Visual Basic','Variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','Variant',61);
INSERT INTO t_datatypes VALUES('Code','C++','char',0,0,0,0,0,0,0,0,'1','1','1','1','1','Char',62);
INSERT INTO t_datatypes VALUES('Code','C++','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',63);
INSERT INTO t_datatypes VALUES('Code','C++','short',0,0,0,0,0,0,0,0,'1','1','1','1','1','Short',64);
INSERT INTO t_datatypes VALUES('Code','C++','long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Long',65);
INSERT INTO t_datatypes VALUES('Code','C++','float',0,0,0,0,0,0,0,0,'1','1','1','1','1','Float',66);
INSERT INTO t_datatypes VALUES('Code','C++','double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',67);
INSERT INTO t_datatypes VALUES('Code','C++','void',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',68);
INSERT INTO t_datatypes VALUES('Code','C++','unsigned char',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',69);
INSERT INTO t_datatypes VALUES('Code','C++','unsigned int',0,0,0,0,0,0,0,0,'1','1','1','1','1','Uint',70);
INSERT INTO t_datatypes VALUES('Code','C++','unsigned short',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',71);
INSERT INTO t_datatypes VALUES('Code','C++','unsigned long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Ulong',72);
INSERT INTO t_datatypes VALUES('Code','Java','byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','Byte',73);
INSERT INTO t_datatypes VALUES('Code','Java','char',0,0,0,0,0,0,0,0,'1','1','1','1','1','Char',74);
INSERT INTO t_datatypes VALUES('Code','Java','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',75);
INSERT INTO t_datatypes VALUES('Code','Java','short',0,0,0,0,0,0,0,0,'1','1','1','1','1','Short',76);
INSERT INTO t_datatypes VALUES('Code','Java','boolean',0,0,0,0,0,0,0,0,'1','1','1','1','1','Boolean',77);
INSERT INTO t_datatypes VALUES('Code','Java','long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Long',78);
INSERT INTO t_datatypes VALUES('Code','Java','float',0,0,0,0,0,0,0,0,'1','1','1','1','1','Float',79);
INSERT INTO t_datatypes VALUES('Code','Java','double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',80);
INSERT INTO t_datatypes VALUES('Code','Delphi','Boolean',0,0,0,0,0,0,0,0,'1','1','1','1','1','Boolean',81);
INSERT INTO t_datatypes VALUES('Code','Delphi','Byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','Byte',82);
INSERT INTO t_datatypes VALUES('Code','Delphi','Cardinal',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',83);
INSERT INTO t_datatypes VALUES('Code','Delphi','Char',0,0,0,0,0,0,0,0,'1','1','1','1','1','Char',84);
INSERT INTO t_datatypes VALUES('Code','Delphi','Currency',0,0,0,0,0,0,0,0,'1','1','1','1','1','Currency',85);
INSERT INTO t_datatypes VALUES('Code','Delphi','Double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',86);
INSERT INTO t_datatypes VALUES('Code','Delphi','Extended',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',87);
INSERT INTO t_datatypes VALUES('Code','Delphi','Integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',88);
INSERT INTO t_datatypes VALUES('Code','Delphi','LongInt',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',89);
INSERT INTO t_datatypes VALUES('Code','Delphi','LongWord',0,0,0,0,0,0,0,0,'1','1','1','1','1','Ulong',90);
INSERT INTO t_datatypes VALUES('Code','Delphi','Single',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',91);
INSERT INTO t_datatypes VALUES('Code','Delphi','ShortInt',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',92);
INSERT INTO t_datatypes VALUES('Code','Delphi','SmallInt',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',93);
INSERT INTO t_datatypes VALUES('Code','Delphi','String',0,0,0,0,0,0,0,0,'1','1','1','1','1','String',94);
INSERT INTO t_datatypes VALUES('Code','Delphi','Real',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',95);
INSERT INTO t_datatypes VALUES('Code','Delphi','Variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','Variant',96);
INSERT INTO t_datatypes VALUES('Code','Delphi','Word',0,0,0,0,0,0,0,0,'1','1','1','1','1','Word',98);
INSERT INTO t_datatypes VALUES('Code','C#','void',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',99);
INSERT INTO t_datatypes VALUES('Code','C#','sbyte',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',100);
INSERT INTO t_datatypes VALUES('Code','C#','byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','Byte',101);
INSERT INTO t_datatypes VALUES('Code','C#','short',0,0,0,0,0,0,0,0,'1','1','1','1','1','Short',102);
INSERT INTO t_datatypes VALUES('Code','C#','ushort',0,0,0,0,0,0,0,0,'1','1','1','1','1','Ushort',103);
INSERT INTO t_datatypes VALUES('Code','C#','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',104);
INSERT INTO t_datatypes VALUES('Code','C#','uint',0,0,0,0,0,0,0,0,'1','1','1','1','1','Uint',105);
INSERT INTO t_datatypes VALUES('Code','C#','long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Long',106);
INSERT INTO t_datatypes VALUES('Code','C#','ulong',0,0,0,0,0,0,0,0,'1','1','1','1','1','Ulong',107);
INSERT INTO t_datatypes VALUES('Code','C#','char',0,0,0,0,0,0,0,0,'1','1','1','1','1','Char',108);
INSERT INTO t_datatypes VALUES('Code','C#','float',0,0,0,0,0,0,0,0,'1','1','1','1','1','Float',109);
INSERT INTO t_datatypes VALUES('Code','C#','double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',110);
INSERT INTO t_datatypes VALUES('Code','C#','bool',0,0,0,0,0,0,0,0,'1','1','1','1','1','Boolean',111);
INSERT INTO t_datatypes VALUES('Code','C#','decimal',0,0,0,0,0,0,0,0,'1','1','1','1','1','Float',112);
INSERT INTO t_datatypes VALUES('Code','VBNet','Integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','Integer',113);
INSERT INTO t_datatypes VALUES('Code','VBNet','String',0,0,0,0,0,0,0,0,'1','1','1','1','1','String',114);
INSERT INTO t_datatypes VALUES('Code','VBNet','Short',0,0,0,0,0,0,0,0,'1','1','1','1','1','Short',115);
INSERT INTO t_datatypes VALUES('Code','VBNet','Long',0,0,0,0,0,0,0,0,'1','1','1','1','1','Long',116);
INSERT INTO t_datatypes VALUES('Code','VBNet','Char',0,0,0,0,0,0,0,0,'1','1','1','1','1','Char',117);
INSERT INTO t_datatypes VALUES('Code','VBNet','Byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','Byte',118);
INSERT INTO t_datatypes VALUES('Code','VBNet','Boolean',0,0,0,0,0,0,0,0,'1','1','1','1','1','Boolean',119);
INSERT INTO t_datatypes VALUES('Code','VBNet','Double',0,0,0,0,0,0,0,0,'1','1','1','1','1','Double',120);
INSERT INTO t_datatypes VALUES('Code','VBNet','Date',0,0,0,0,0,0,0,0,'1','1','1','1','1','Date',121);
INSERT INTO t_datatypes VALUES('Code','VBNet','Object',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',122);
INSERT INTO t_datatypes VALUES('Code','VBNet','Single',0,0,0,0,0,0,0,0,'1','1','1','1','1','Single',123);
INSERT INTO t_datatypes VALUES('Code','VBNet','Datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','DateTime',124);
INSERT INTO t_datatypes VALUES('Code','VBNet','Decimal',0,0,0,0,0,0,0,0,'1','1','1','1','1','1',125);
INSERT INTO t_datatypes VALUES('DDL','DB2','BIGINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',126);
INSERT INTO t_datatypes VALUES('DDL','DB2','BLOB',1,2097152,0,0,0,0,0,0,'1','1','1','1','1','blob',127);
INSERT INTO t_datatypes VALUES('DDL','DB2','CHARACTER',1,254,0,0,10,0,0,0,'1','1','1','1','1','char',128);
INSERT INTO t_datatypes VALUES('DDL','DB2','CLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',129);
INSERT INTO t_datatypes VALUES('DDL','DB2','DATE',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',130);
INSERT INTO t_datatypes VALUES('DDL','DB2','DECIMAL',2,31,31,0,0,5,0,0,'1','1','1','1','1','decimal',131);
INSERT INTO t_datatypes VALUES('DDL','DB2','DOUBLE',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',132);
INSERT INTO t_datatypes VALUES('DDL','DB2','INTEGER',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',133);
INSERT INTO t_datatypes VALUES('DDL','DB2','LONG VARCHAR',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',134);
INSERT INTO t_datatypes VALUES('DDL','DB2','REAL',0,0,0,0,0,0,0,0,'1','1','1','1','1','real',135);
INSERT INTO t_datatypes VALUES('DDL','DB2','TIME',0,0,0,0,0,0,0,0,'1','1','1','1','1','time',137);
INSERT INTO t_datatypes VALUES('DDL','DB2','TIMESTAMP',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',138);
INSERT INTO t_datatypes VALUES('DDL','DB2','VARCHAR',1,4000,0,0,10,0,0,0,'1','1','1','1','1','varchar',139);
INSERT INTO t_datatypes VALUES('DDL','MySql','BIT',1,64,0,0,1,0,0,0,'1','1','1','1','1','bit',140);
INSERT INTO t_datatypes VALUES('DDL','MySql','BOOL',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',141);
INSERT INTO t_datatypes VALUES('DDL','MySql','TINYINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',142);
INSERT INTO t_datatypes VALUES('DDL','MySql','SMALLINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',143);
INSERT INTO t_datatypes VALUES('DDL','MySql','INTEGER',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',144);
INSERT INTO t_datatypes VALUES('DDL','MySql','MEDIUMINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','mediumint',145);
INSERT INTO t_datatypes VALUES('DDL','MySql','BIGINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',146);
INSERT INTO t_datatypes VALUES('DDL','MySql','FLOAT',2,0,24,0,0,0,0,0,'1','1','1','1','1','float',147);
INSERT INTO t_datatypes VALUES('DDL','MySql','DOUBLE',2,0,53,30,0,10,2,0,'1','1','1','1','1','double',148);
INSERT INTO t_datatypes VALUES('DDL','MySql','DOUBLE PRECISION',2,0,53,30,0,10,2,0,'1','1','1','1','1','double',149);
INSERT INTO t_datatypes VALUES('DDL','MySql','REAL',2,0,53,30,0,10,2,0,'1','1','1','1','1','real',150);
INSERT INTO t_datatypes VALUES('DDL','MySql','NUMERIC',2,0,65,30,0,10,2,0,'1','1','1','1','1','numeric',151);
INSERT INTO t_datatypes VALUES('DDL','MySql','DECIMAL',2,0,65,30,0,10,2,0,'1','1','1','1','1','decimal',152);
INSERT INTO t_datatypes VALUES('DDL','MySql','DATE',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',153);
INSERT INTO t_datatypes VALUES('DDL','MySql','DATETIME',1,6,0,0,0,0,0,0,'1','1','1','1','1','datetime',154);
INSERT INTO t_datatypes VALUES('DDL','MySql','TIME',1,6,0,0,0,0,0,0,'1','1','1','1','1','time',155);
INSERT INTO t_datatypes VALUES('DDL','MySql','TIMESTAMP',1,6,0,0,0,0,0,0,'1','1','1','1','1','timestamp',156);
INSERT INTO t_datatypes VALUES('DDL','MySql','CHAR',1,255,0,0,10,0,0,0,'1','1','1','1','1','char',157);
INSERT INTO t_datatypes VALUES('DDL','MySql','VARCHAR',1,65535,0,0,50,0,0,0,'1','1','1','1','1','varchar',158);
INSERT INTO t_datatypes VALUES('DDL','MySql','BLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',159);
INSERT INTO t_datatypes VALUES('DDL','MySql','TEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',160);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','decimal',2,38,38,38,0,10,2,0,'1','1','1','1','1','decimal',161);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','sql_variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','sqlvariant',162);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','numeric',2,38,38,38,0,10,2,0,'1','1','1','1','1','numeric',163);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','varbinary',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varbinary',164);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',165);
INSERT INTO t_datatypes VALUES('DDL','InterBase','integer',0,0,0,0,10,0,0,0,'1','1','1','1','1','integer',167);
INSERT INTO t_datatypes VALUES('DDL','InterBase','smallint',0,0,0,0,10,0,0,0,'1','1','1','1','1','smallint',168);
INSERT INTO t_datatypes VALUES('DDL','MySql','NCHAR',1,255,0,0,10,0,0,0,'1','1','1','1','1','nchar',169);
INSERT INTO t_datatypes VALUES('DDL','InterBase','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',170);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','real',1,53,0,0,53,0,0,0,'1','1','1','1','1','real',171);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','char',1,8000,0,0,10,0,0,0,'1','1','1','1','1','char',174);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',175);
INSERT INTO t_datatypes VALUES('DDL','InterBase','double precision',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',178);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','binary',1,8000,0,0,10,0,0,0,'1','1','1','1','1','Binary',179);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',180);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','nvarchar',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',181);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',182);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','numeric',2,0,1000,1000,0,0,0,0,'1','1','1','1','1','numeric',183);
INSERT INTO t_datatypes VALUES('DDL','DB2','FLOAT',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',184);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',185);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','varchar',1,1048576,0,0,50,0,0,0,'1','1','1','1','1','varchar',186);
INSERT INTO t_datatypes VALUES('DDL','InterBase','blob sub_type 0',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',188);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','money',0,0,0,0,0,19,4,0,'1','1','1','1','1','currency',190);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',191);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','uniqueidentifier',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',192);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',195);
INSERT INTO t_datatypes VALUES('DDL','DB2','SMALLINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',196);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','OLEObject',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',199);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',201);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',203);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','float',0,53,0,0,53,0,0,0,'1','1','1','1','1','float',204);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','nchar',1,4000,0,0,10,0,0,0,'1','1','1','1','1','nchar',205);
INSERT INTO t_datatypes VALUES('DDL','Oracle','NVARCHAR2',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',206);
INSERT INTO t_datatypes VALUES('DDL','InterBase','varchar',1,32767,0,0,50,0,0,0,'1','1','1','1','1','varchar',209);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','Byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',210);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','real',0,53,0,0,53,0,0,0,'1','1','1','1','1','double',211);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',212);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',213);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',214);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','number',0,0,0,0,0,0,0,0,'1','1','1','1','1','currency',215);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',216);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','varchar',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varchar',217);
INSERT INTO t_datatypes VALUES('DDL','DB2','CHAR',1,254,0,0,10,0,0,0,'1','1','1','1','1','char',218);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','char',1,1048576,0,0,1,0,0,0,'1','1','1','1','1','char',219);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','decimal',2,0,1000,1000,0,0,0,0,'1','1','1','1','1','decimal',220);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',221);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',222);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2000','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',226);
INSERT INTO t_datatypes VALUES('DDL','InterBase','blob sub_type 1',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',227);
INSERT INTO t_datatypes VALUES('DDL','InterBase','char',1,32767,0,0,10,0,0,0,'1','1','1','1','1','char',228);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','boolean',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',230);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','timestamp',1,6,0,0,0,0,0,0,'1','1','1','1','1','datetime',231);
INSERT INTO t_datatypes VALUES('DDL','MySql','NVARCHAR',1,65535,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',232);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','bytea',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',233);
INSERT INTO t_datatypes VALUES('DDL','InterBase','decimal',2,0,64,64,0,10,2,0,'1','1','1','1','1','decimal',235);
INSERT INTO t_datatypes VALUES('Code','PHP','var',0,1,1,0,1,1,1,1,'1','1','1','1','1','var',236);
INSERT INTO t_datatypes VALUES('Code','C#','string',0,1,1,0,1,1,1,1,'1','1','1','1','1','String',237);
INSERT INTO t_datatypes VALUES('Code','C++','wchar_t',0,1,1,0,1,1,1,1,'1','1','1','1','1','Char',238);
INSERT INTO t_datatypes VALUES('Code','C++','bool',0,1,1,0,1,1,1,1,'1','1','1','1','1','Boolean',239);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',240);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',241);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',242);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','numeric',2,0,38,38,0,18,0,0,'1','1','1','1','1','numeric',243);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','decimal',2,0,38,38,0,18,0,0,'1','1','1','1','1','decimal',244);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','float',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',245);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','double precision',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',246);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','real',0,0,0,0,0,0,0,0,'1','1','1','1','1','real',247);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',248);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','money',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',249);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',250);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',251);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','char',1,16384,0,0,50,0,0,0,'1','1','1','1','1','char',252);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','varchar',1,16384,0,0,100,0,0,0,'1','1','1','1','1','varchar',253);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','unichar',1,0,0,0,50,0,0,0,'1','1','1','1','1','char',254);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','univarchar',1,0,0,0,50,0,0,0,'1','1','1','1','1','varchar',255);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','nchar',1,16384,0,0,50,0,0,0,'1','1','1','1','1','nchar',256);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','nvarchar',1,16384,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',257);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','text',0,0,0,0,50,0,0,0,'1','1','1','1','1','text',258);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','binary',1,255,0,0,1,0,0,0,'1','1','1','1','1','binary',259);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',261);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',262);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTEGER',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',263);
INSERT INTO t_datatypes VALUES('DDL','Informix','INT',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',264);
INSERT INTO t_datatypes VALUES('DDL','Informix','SMALLINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',265);
INSERT INTO t_datatypes VALUES('DDL','Informix','INT8',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',266);
INSERT INTO t_datatypes VALUES('DDL','Informix','SERIAL',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',267);
INSERT INTO t_datatypes VALUES('DDL','Informix','SERIAL8',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',268);
INSERT INTO t_datatypes VALUES('DDL','Informix','FLOAT',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',269);
INSERT INTO t_datatypes VALUES('DDL','Informix','SMALLFLOAT',0,4,0,0,4,0,0,0,'1','1','1','1','1','float',270);
INSERT INTO t_datatypes VALUES('DDL','Informix','DECIMAL',2,0,32,32,0,8,3,0,'1','1','1','1','1','decimal',271);
INSERT INTO t_datatypes VALUES('DDL','Informix','DEC',2,0,32,32,0,8,3,0,'1','1','1','1','1','decimal',272);
INSERT INTO t_datatypes VALUES('DDL','Informix','MONEY',2,0,32,3,0,8,3,0,'1','1','1','1','1','money',273);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATE',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',274);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME HOUR TO MINUTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',275);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO YEAR',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',276);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO MONTH',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',277);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO DAY',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',278);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO HOUR',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',279);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO MINUTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',280);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',281);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME YEAR TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',282);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO MONTH',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',283);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO DAY',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',284);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO HOUR',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',285);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO MINUTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',286);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',287);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MONTH TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',288);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME DAY TO DAY',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',289);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME DAY TO HOUR',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',290);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME DAY TO MINUTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',291);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME DAY TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',292);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME DAY TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',293);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME HOUR TO HOUR',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',294);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME HOUR TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',295);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME HOUR TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',296);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MINUTE TO MINUTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',297);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MINUTE TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',298);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME MINUTE TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',299);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME SECOND TO SECOND',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',300);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME SECOND TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',301);
INSERT INTO t_datatypes VALUES('DDL','Informix','DATETIME FRACTION TO FRACTION',1,5,0,0,3,0,0,0,'1','1','1','1','1','datetime',302);
INSERT INTO t_datatypes VALUES('DDL','Informix','BOOLEAN',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',303);
INSERT INTO t_datatypes VALUES('DDL','Informix','CHAR',1,32767,0,0,10,0,0,0,'1','1','1','1','1','char',304);
INSERT INTO t_datatypes VALUES('DDL','Informix','CHARACTER',1,32767,0,0,10,0,0,0,'1','1','1','1','1','char',305);
INSERT INTO t_datatypes VALUES('DDL','Informix','NCHAR',1,32767,0,0,50,0,0,0,'1','1','1','1','1','nchar',306);
INSERT INTO t_datatypes VALUES('DDL','Informix','CHARACTER VARYING',1,255,0,0,0,0,0,0,'1','1','1','1','1','char',307);
INSERT INTO t_datatypes VALUES('DDL','Informix','VARCHAR',1,255,0,0,10,0,0,0,'1','1','1','1','1','varchar',308);
INSERT INTO t_datatypes VALUES('DDL','Informix','NVARCHAR',1,255,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',309);
INSERT INTO t_datatypes VALUES('DDL','Informix','LVARCHAR',1,32767,0,0,2048,0,0,0,'1','1','1','1','1','char',310);
INSERT INTO t_datatypes VALUES('DDL','Informix','TEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',311);
INSERT INTO t_datatypes VALUES('DDL','Informix','BYTE',0,0,0,0,0,0,0,0,'1','1','1','1','1','Binary',312);
INSERT INTO t_datatypes VALUES('DDL','Informix','BLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',313);
INSERT INTO t_datatypes VALUES('DDL','Informix','CLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',314);
INSERT INTO t_datatypes VALUES('DDL','Ingres','ansidate',0,0,0,0,0,0,0,0,'1','1','1','1','1','ansidate',315);
INSERT INTO t_datatypes VALUES('DDL','Ingres','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',316);
INSERT INTO t_datatypes VALUES('DDL','Ingres','byte',1,32000,0,0,0,0,0,0,'1','1','1','1','1','Binary',317);
INSERT INTO t_datatypes VALUES('DDL','Ingres','byte var',1,32000,0,0,0,0,0,0,'1','1','1','1','1','Binary',318);
INSERT INTO t_datatypes VALUES('DDL','Ingres','c',1,32000,0,0,0,0,0,0,'1','1','1','1','1','char',319);
INSERT INTO t_datatypes VALUES('DDL','Ingres','char',1,32000,0,0,0,0,0,0,'1','1','1','1','1','char',320);
INSERT INTO t_datatypes VALUES('DDL','Ingres','date',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',321);
INSERT INTO t_datatypes VALUES('DDL','Ingres','decimal',2,0,31,10,0,5,0,0,'1','1','1','1','1','decimal',322);
INSERT INTO t_datatypes VALUES('DDL','Ingres','float',1,53,0,0,8,0,0,0,'1','1','1','1','1','float',323);
INSERT INTO t_datatypes VALUES('DDL','Ingres','float4',0,0,0,0,0,0,0,0,'1','1','1','1','1','real',324);
INSERT INTO t_datatypes VALUES('DDL','Ingres','float8',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',325);
INSERT INTO t_datatypes VALUES('DDL','Ingres','ingresdate',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',326);
INSERT INTO t_datatypes VALUES('DDL','Ingres','int1',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer1',327);
INSERT INTO t_datatypes VALUES('DDL','Ingres','int2',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',328);
INSERT INTO t_datatypes VALUES('DDL','Ingres','int4',0,0,0,0,0,0,0,0,'1','1','1','1','1','int',329);
INSERT INTO t_datatypes VALUES('DDL','Ingres','int8',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',330);
INSERT INTO t_datatypes VALUES('DDL','Ingres','integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',331);
INSERT INTO t_datatypes VALUES('DDL','Ingres','interval day to second',0,0,0,0,0,0,0,0,'1','1','1','1','1','interval day to second',332);
INSERT INTO t_datatypes VALUES('DDL','Ingres','interval year to month',0,0,0,0,0,0,0,0,'1','1','1','1','1','interval year to month',333);
INSERT INTO t_datatypes VALUES('DDL','Ingres','long byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','long byte',334);
INSERT INTO t_datatypes VALUES('DDL','Ingres','long nvarchar',0,0,0,0,0,0,0,0,'1','1','1','1','1','long nvarchar',335);
INSERT INTO t_datatypes VALUES('DDL','Ingres','long varchar',0,0,0,0,0,0,0,0,'1','1','1','1','1','long varchar',336);
INSERT INTO t_datatypes VALUES('DDL','Ingres','money',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',337);
INSERT INTO t_datatypes VALUES('DDL','Ingres','nchar',1,16000,0,0,0,0,0,0,'1','1','1','1','1','nchar',338);
INSERT INTO t_datatypes VALUES('DDL','Ingres','nvarchar',1,16000,0,0,0,0,0,0,'1','1','1','1','1','nvarchar',339);
INSERT INTO t_datatypes VALUES('DDL','Ingres','Object Key',0,0,0,0,0,0,0,0,'1','1','1','1','1','OBJECT_KEY',340);
INSERT INTO t_datatypes VALUES('DDL','Ingres','Table Key',0,0,0,0,0,0,0,0,'1','1','1','1','1','TABLE_KEY',341);
INSERT INTO t_datatypes VALUES('DDL','Ingres','text',1,32000,0,0,0,0,0,0,'1','1','1','1','1','text',342);
INSERT INTO t_datatypes VALUES('DDL','Ingres','time with local time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','time',343);
INSERT INTO t_datatypes VALUES('DDL','Ingres','time with time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','time',344);
INSERT INTO t_datatypes VALUES('DDL','Ingres','time without time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','TABLE_KEY',345);
INSERT INTO t_datatypes VALUES('DDL','Ingres','timestamp with local time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestampt',346);
INSERT INTO t_datatypes VALUES('DDL','Ingres','timestamp with time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestampt',347);
INSERT INTO t_datatypes VALUES('DDL','Ingres','timestamp without time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestampt',348);
INSERT INTO t_datatypes VALUES('DDL','Ingres','varchar',1,32000,0,0,0,0,0,0,'1','1','1','1','1','varchar',349);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',350);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',351);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',352);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',353);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',354);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','decimal',2,38,38,38,0,10,2,0,'1','1','1','1','1','decimal',355);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','numeric',2,38,38,38,0,10,2,0,'1','1','1','1','1','numeric',356);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','money',0,0,0,0,0,19,4,0,'1','1','1','1','1','currency',357);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',358);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','float',0,53,0,0,53,0,0,0,'1','1','1','1','1','float',359);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','real',0,53,0,0,53,0,0,0,'1','1','1','1','1','double',360);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',361);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',362);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','char',1,8000,0,0,10,0,0,0,'1','1','1','1','1','char',363);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','varchar',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varchar',364);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',365);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','nchar',1,4000,0,0,10,0,0,0,'1','1','1','1','1','nchar',366);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','nvarchar',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',367);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',368);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','binary',1,8000,0,0,10,0,0,0,'1','1','1','1','1','Binary',369);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','varbinary',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varbinary',370);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',371);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','sql_variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','sqlvariant',372);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',373);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','uniqueidentifier',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',374);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','xml',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',375);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL YEAR TO YEAR',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',376);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL YEAR TO MONTH',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',377);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL MONTH TO MONTH',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',378);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL DAY TO DAY',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',379);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL DAY TO HOUR',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',380);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL DAY TO MINUTE',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',381);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL DAY TO SECOND',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',382);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL DAY TO FRACTION',1,5,0,0,0,0,0,0,'1','1','1','1','1','interval',383);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL HOUR TO HOUR',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',384);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL HOUR TO MINUTE',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',385);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL HOUR TO SECOND',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',386);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL HOUR TO FRACTION',1,5,0,0,0,0,0,0,'1','1','1','1','1','interval',387);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL MINUTE TO MINUTE',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',388);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL MINUTE TO SECOND',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',389);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL MINUTE TO FRACTION',1,5,0,0,0,0,0,0,'1','1','1','1','1','interval',390);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL SECOND TO SECOND',0,9,0,0,0,0,0,0,'1','1','1','1','1','interval',391);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL SECOND TO FRACTION',1,5,0,0,0,0,0,0,'1','1','1','1','1','interval',392);
INSERT INTO t_datatypes VALUES('DDL','Informix','INTERVAL FRACTION TO FRACTION',1,5,0,0,0,0,0,0,'1','1','1','1','1','interval',393);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','varchar(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varchar',394);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2005','varbinary(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varbinary',395);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',396);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',397);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','decimal',2,38,38,38,0,10,2,0,'1','1','1','1','1','decimal',398);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',399);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','money',0,0,0,0,0,19,4,0,'1','1','1','1','1','currency',400);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','numeric',2,38,38,38,0,10,2,0,'1','1','1','1','1','numeric',401);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',402);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',403);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',404);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','float',0,53,0,0,53,0,0,0,'1','1','1','1','1','float',405);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','real',0,53,0,0,53,0,0,0,'1','1','1','1','1','double',406);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','date',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',407);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','datetime2',1,7,0,0,7,0,0,0,'1','1','1','1','1','datetime',408);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',409);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','datetimeoffset',1,7,0,0,7,0,0,0,'1','1','1','1','1','datetime',410);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',411);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','time',1,7,0,0,7,0,0,0,'1','1','1','1','1','time',412);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','char',1,8000,0,0,10,0,0,0,'1','1','1','1','1','char',413);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','varchar',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varchar',414);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','varchar(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varchar',415);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',416);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','nchar',1,4000,0,0,10,0,0,0,'1','1','1','1','1','nchar',417);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','nvarchar',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',418);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','nvarchar(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varchar',419);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',420);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','binary',1,8000,0,0,10,0,0,0,'1','1','1','1','1','Binary',421);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','varbinary',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varbinary',422);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','varbinary(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varbinary',423);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',424);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',425);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','uniqueidentifier',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',426);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','sql_variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','sqlvariant',427);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','xml',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',428);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','hierarchyid',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',429);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','geometry',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',430);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2008','geography',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',431);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Text',1,255,0,0,50,0,0,0,'1','1','1','1','1','char',432);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Memo',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',433);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','DateTime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',434);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Currency',0,0,0,0,0,0,0,0,'1','1','1','1','1','currency',435);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',436);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Long',0,0,0,0,0,0,0,0,'1','1','1','1','1','long',437);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Single',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',438);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Double',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',439);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Counter',0,0,0,0,0,0,0,0,'1','1','1','1','1','counter',440);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','YesNo',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',441);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','OLEObject',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',442);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Byte',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',443);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','Decimal',0,0,0,0,0,0,0,0,'1','1','1','1','1','decimal',445);
INSERT INTO t_datatypes VALUES('DDL','SQLite','INTEGER',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',447);
INSERT INTO t_datatypes VALUES('DDL','SQLite','NUMERIC',0,0,0,0,0,0,0,0,'1','1','1','1','1','numeric',448);
INSERT INTO t_datatypes VALUES('DDL','SQLite','TEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',449);
INSERT INTO t_datatypes VALUES('DDL','SQLite','BLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',450);
INSERT INTO t_datatypes VALUES('DDL','SQLite','REAL',0,0,0,0,0,0,0,0,'1','1','1','1','1','real',451);
INSERT INTO t_datatypes VALUES('DDL','InterBase','numeric',2,0,64,64,0,10,2,0,'1','1','1','1','1','numeric',452);
INSERT INTO t_datatypes VALUES('DDL','InterBase','float',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',453);
INSERT INTO t_datatypes VALUES('DDL','Oracle','BINARY_FLOAT',0,0,0,0,0,0,0,0,'1','1','1','1','1','float',454);
INSERT INTO t_datatypes VALUES('DDL','Oracle','BINARY_DOUBLE',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',455);
INSERT INTO t_datatypes VALUES('DDL','Oracle','TIMESTAMP',1,9,0,0,6,0,0,0,'1','1','1','1','1','timestamp',456);
INSERT INTO t_datatypes VALUES('DDL','Oracle','TIMESTAMP WITH TIME ZONE',1,9,0,0,6,0,0,0,'1','1','1','1','1','timestamp with time zone',457);
INSERT INTO t_datatypes VALUES('DDL','Oracle','TIMESTAMP WITH LOCAL TIME ZONE',1,9,0,0,6,0,0,0,'1','1','1','1','1','timestamp with local time zone',458);
INSERT INTO t_datatypes VALUES('DDL','Oracle','INTERVAL YEAR TO MONTH',1,9,0,0,2,0,0,0,'1','1','1','1','1','interval year to month',459);
INSERT INTO t_datatypes VALUES('DDL','Oracle','INTERVAL DAY TO SECOND',2,0,9,9,0,2,6,0,'1','1','1','1','1','interval day to second',460);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ANYDATA',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',461);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ANYTYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',462);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ANYDATASET',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',463);
INSERT INTO t_datatypes VALUES('DDL','Oracle','URITYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','uri',464);
INSERT INTO t_datatypes VALUES('DDL','Oracle','DBURITYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','uri',465);
INSERT INTO t_datatypes VALUES('DDL','Oracle','XDBURITYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','uri',466);
INSERT INTO t_datatypes VALUES('DDL','Oracle','HTTPURITYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','uri',467);
INSERT INTO t_datatypes VALUES('DDL','Oracle','XMLTYPE',0,0,0,0,0,0,0,0,'1','1','1','1','1','xml',468);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SDO_GEOMETRY',0,0,0,0,0,0,0,0,'1','1','1','1','1','spatial',469);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SDO_TOPO_GEOMETRY',0,0,0,0,0,0,0,0,'1','1','1','1','1','spatial',470);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SDO_GEORASTER',0,0,0,0,0,0,0,0,'1','1','1','1','1','spatial',471);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ORDAUDIO',0,0,0,0,0,0,0,0,'1','1','1','1','1','media',472);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ORDIMAGE',0,0,0,0,0,0,0,0,'1','1','1','1','1','media',473);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ORDVIDEO',0,0,0,0,0,0,0,0,'1','1','1','1','1','media',474);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ORDDOC',0,0,0,0,0,0,0,0,'1','1','1','1','1','media',475);
INSERT INTO t_datatypes VALUES('DDL','Oracle','ORDDICOM',0,0,0,0,0,0,0,0,'1','1','1','1','1','media',476);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_STILLIMAGE',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',477);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_COLOR',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',478);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_AVERAGECOLOR',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',479);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_COLORHISTOGRAM',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',480);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_POSITIONALCOLOR',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',481);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_TEXTURE',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',482);
INSERT INTO t_datatypes VALUES('DDL','Oracle','SI_FEATURELIST',0,0,0,0,0,0,0,0,'1','1','1','1','1','image',483);
INSERT INTO t_datatypes VALUES('DDL','MySql','BINARY',1,255,0,0,50,0,0,0,'1','1','1','1','1','binary',484);
INSERT INTO t_datatypes VALUES('DDL','MySql','ENUM',0,0,0,0,0,0,0,0,'1','1','1','1','1','enum',485);
INSERT INTO t_datatypes VALUES('DDL','MySql','GEOMETRY',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry',486);
INSERT INTO t_datatypes VALUES('DDL','MySql','GEOMETRYCOLLECTION',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection',487);
INSERT INTO t_datatypes VALUES('DDL','MySql','INT',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',488);
INSERT INTO t_datatypes VALUES('DDL','MySql','LINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring',489);
INSERT INTO t_datatypes VALUES('DDL','MySql','LONGBLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','longblob',490);
INSERT INTO t_datatypes VALUES('DDL','MySql','LONGTEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','longtext',491);
INSERT INTO t_datatypes VALUES('DDL','MySql','MEDIUMBLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','mediumblob',492);
INSERT INTO t_datatypes VALUES('DDL','MySql','MEDIUMTEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','mediumtext',493);
INSERT INTO t_datatypes VALUES('DDL','MySql','MULTILINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring',494);
INSERT INTO t_datatypes VALUES('DDL','MySql','MULTIPOINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint',495);
INSERT INTO t_datatypes VALUES('DDL','MySql','MULTIPOLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon',496);
INSERT INTO t_datatypes VALUES('DDL','MySql','POINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',497);
INSERT INTO t_datatypes VALUES('DDL','MySql','POLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',498);
INSERT INTO t_datatypes VALUES('DDL','MySql','SET',0,0,0,0,0,0,0,0,'1','1','1','1','1','set',499);
INSERT INTO t_datatypes VALUES('DDL','MySql','TINYBLOB',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyblob',500);
INSERT INTO t_datatypes VALUES('DDL','MySql','TINYTEXT',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinytext',501);
INSERT INTO t_datatypes VALUES('DDL','MySql','VARBINARY',1,65535,0,0,50,0,0,0,'1','1','1','1','1','varbinary',502);
INSERT INTO t_datatypes VALUES('DDL','MySql','YEAR',1,4,0,0,4,0,0,0,'1','1','1','1','1','date',503);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','xml',0,0,0,0,0,0,0,0,'1','1','1','1','1','xml',504);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','uuid',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',505);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','date',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',506);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','interval',1,6,0,0,0,0,0,0,'1','1','1','1','1','interval',507);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','time',1,6,0,0,0,0,0,0,'1','1','1','1','1','time',508);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','time with time zone',1,6,0,0,0,0,0,0,'1','1','1','1','1','time',509);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','time without time zone',1,6,0,0,0,0,0,0,'1','1','1','1','1','time',510);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','timestamp with time zone',1,6,0,0,0,0,0,0,'1','1','1','1','1','datetime',511);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','timestamp without time zone',1,6,0,0,0,0,0,0,'1','1','1','1','1','datetime',512);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','inet',0,0,0,0,0,0,0,0,'1','1','1','1','1','inet',513);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','cidr',0,0,0,0,0,0,0,0,'1','1','1','1','1','cidr',514);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','macaddr',0,0,0,0,0,0,0,0,'1','1','1','1','1','macaddr',515);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','money',0,0,0,0,0,0,0,0,'1','1','1','1','1','currency',516);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','bit',1,83886080,0,0,1,0,0,0,'1','1','1','1','1','bit',517);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','bit varying',1,83886080,0,0,0,0,0,0,'1','1','1','1','1','varbit',518);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','double precision',0,0,0,0,0,0,0,0,'1','1','1','1','1','double',519);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','serial',0,0,0,0,0,0,0,0,'1','1','1','1','1','serial',520);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','bigserial',0,0,0,0,0,0,0,0,'1','1','1','1','1','serial',521);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','smallserial',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallserial',522);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','point',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',523);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','line',0,0,0,0,0,0,0,0,'1','1','1','1','1','line',524);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','lseg',0,0,0,0,0,0,0,0,'1','1','1','1','1','lseg',525);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','box',0,0,0,0,0,0,0,0,'1','1','1','1','1','box',526);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','path',0,0,0,0,0,0,0,0,'1','1','1','1','1','path',527);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','polygon',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',528);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','circle',0,0,0,0,0,0,0,0,'1','1','1','1','1','circle',529);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','bigint',549);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','binary',1,8000,0,0,10,0,0,0,'1','1','1','1','1','binary',550);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','boolean',551);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','char',1,8000,0,0,10,0,0,0,'1','1','1','1','1','char',552);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','date',0,0,0,0,0,0,0,0,'1','1','1','1','1','date',553);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',554);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','datetime2',1,7,0,0,7,0,0,0,'1','1','1','1','1','datetime',555);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','datetimeoffset',1,7,0,0,7,0,0,0,'1','1','1','1','1','datetime',556);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','decimal',2,38,38,38,0,18,0,0,'1','1','1','1','1','decimal',557);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','float',0,53,0,0,53,0,0,0,'1','1','1','1','1','float',558);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','geography',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',559);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','geometry',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',560);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','hierarchyid',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',561);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','blob',562);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','int',0,0,0,0,0,0,0,0,'1','1','1','1','1','integer',563);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','money',0,0,0,0,0,19,4,0,'1','1','1','1','1','currency',564);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','nchar',1,4000,0,0,10,0,0,0,'1','1','1','1','1','nchar',565);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',566);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','numeric',2,38,38,38,0,18,0,0,'1','1','1','1','1','numeric',567);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','nvarchar',1,4000,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',568);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','nvarchar(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varchar',569);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','real',0,53,0,0,53,0,0,0,'1','1','1','1','1','double',570);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime',571);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallint',572);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',573);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','sql_variant',0,0,0,0,0,0,0,0,'1','1','1','1','1','sqlvariant',574);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',575);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','time',1,7,0,0,7,0,0,0,'1','1','1','1','1','time',576);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp',577);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','tinyint',578);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','uniqueidentifier',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',579);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','varbinary',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varbinary',580);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','varbinary(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varbinary',581);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','varchar',1,8000,0,0,50,0,0,0,'1','1','1','1','1','varchar',582);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','varchar(max)',0,0,0,0,0,0,0,0,'1','1','1','1','1','varchar',583);
INSERT INTO t_datatypes VALUES('DDL','SQL Server 2012','xml',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',584);
INSERT INTO t_datatypes VALUES('DDL','Sybase','bigint',0,0,0,0,0,0,0,0,'1','1','1','1','1','int8',741);
INSERT INTO t_datatypes VALUES('DDL','Sybase','binary',1,32767,0,0,50,0,0,0,'1','1','1','1','1','binary',742);
INSERT INTO t_datatypes VALUES('DDL','Sybase','bit',0,0,0,0,0,0,0,0,'1','1','1','1','1','bit',743);
INSERT INTO t_datatypes VALUES('DDL','Sybase','char',1,32767,0,0,10,0,0,0,'1','1','1','1','1','char',744);
INSERT INTO t_datatypes VALUES('DDL','Sybase','date',0,0,0,0,0,0,0,0,'1','1','1','1','1','date4',745);
INSERT INTO t_datatypes VALUES('DDL','Sybase','datetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime8',746);
INSERT INTO t_datatypes VALUES('DDL','Sybase','datetimeoffset',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetimeoffset',747);
INSERT INTO t_datatypes VALUES('DDL','Sybase','decimal',2,0,127,127,0,30,6,0,'1','1','1','1','1','decimal',748);
INSERT INTO t_datatypes VALUES('DDL','Sybase','double',1,15,0,0,0,15,0,0,'1','1','1','1','1','double',749);
INSERT INTO t_datatypes VALUES('DDL','Sybase','float',1,15,0,0,0,15,0,0,'1','1','1','1','1','float',750);
INSERT INTO t_datatypes VALUES('DDL','Sybase','integer',0,0,0,0,0,0,0,0,'1','1','1','1','1','int4',751);
INSERT INTO t_datatypes VALUES('DDL','Sybase','image',0,0,0,0,0,0,0,0,'1','1','1','1','1','long binary',752);
INSERT INTO t_datatypes VALUES('DDL','Sybase','long binary',0,0,0,0,0,0,0,0,'1','1','1','1','1','long binary',753);
INSERT INTO t_datatypes VALUES('DDL','Sybase','long nvarchar',0,0,0,0,0,0,0,0,'1','1','1','1','1','longnvarchar',754);
INSERT INTO t_datatypes VALUES('DDL','Sybase','long varbit',1,32767,0,0,1,0,0,0,'1','1','1','1','1','varbit',755);
INSERT INTO t_datatypes VALUES('DDL','Sybase','long varchar',0,0,0,0,0,0,0,0,'1','1','1','1','1','longvarchar',756);
INSERT INTO t_datatypes VALUES('DDL','Sybase','money',0,0,0,0,0,0,0,0,'1','1','1','1','1','money',757);
INSERT INTO t_datatypes VALUES('DDL','Sybase','nchar',1,32767,0,0,10,0,0,0,'1','1','1','1','1','nchar',758);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ntext',0,0,0,0,0,0,0,0,'1','1','1','1','1','ntext',759);
INSERT INTO t_datatypes VALUES('DDL','Sybase','numeric',2,0,127,127,0,30,6,0,'1','1','1','1','1','numeric',760);
INSERT INTO t_datatypes VALUES('DDL','Sybase','nvarchar',1,32767,0,0,50,0,0,0,'1','1','1','1','1','nvarchar',761);
INSERT INTO t_datatypes VALUES('DDL','Sybase','real',2,0,127,127,0,30,6,0,'1','1','1','1','1','decimal',762);
INSERT INTO t_datatypes VALUES('DDL','Sybase','smalldatetime',0,0,0,0,0,0,0,0,'1','1','1','1','1','datetime4',763);
INSERT INTO t_datatypes VALUES('DDL','Sybase','smallint',0,0,0,0,0,0,0,0,'1','1','1','1','1','int2',764);
INSERT INTO t_datatypes VALUES('DDL','Sybase','smallmoney',0,0,0,0,0,0,0,0,'1','1','1','1','1','smallmoney',765);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_Geometry',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry',766);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_GeomCollection',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection',767);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_Point',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',768);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_Polygon',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',769);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_LineString',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring',770);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_MultiLineString',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring',771);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_MultiPoint',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint',772);
INSERT INTO t_datatypes VALUES('DDL','Sybase','ST_MultiPolygon',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon',773);
INSERT INTO t_datatypes VALUES('DDL','Sybase','text',0,0,0,0,0,0,0,0,'1','1','1','1','1','text',774);
INSERT INTO t_datatypes VALUES('DDL','Sybase','tinyint',0,0,0,0,0,0,0,0,'1','1','1','1','1','int1',775);
INSERT INTO t_datatypes VALUES('DDL','Sybase','time',0,0,0,0,0,0,0,0,'1','1','1','1','1','time',776);
INSERT INTO t_datatypes VALUES('DDL','Sybase','timestamp',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamp8',777);
INSERT INTO t_datatypes VALUES('DDL','Sybase','timestamp with time zone',0,0,0,0,0,0,0,0,'1','1','1','1','1','timestamptz',778);
INSERT INTO t_datatypes VALUES('DDL','Sybase','uniqueidentifer',0,0,0,0,0,0,0,0,'1','1','1','1','1','uniqueidentifier',779);
INSERT INTO t_datatypes VALUES('DDL','Sybase','uniqueidentiferstr',0,0,0,0,0,0,0,0,'1','1','1','1','1','uniqueidentifier',780);
INSERT INTO t_datatypes VALUES('DDL','Sybase','varbinary',1,32767,0,0,1,0,0,0,'1','1','1','1','1','varbinary',781);
INSERT INTO t_datatypes VALUES('DDL','Sybase','varbit',1,32767,0,0,1,0,0,0,'1','1','1','1','1','varbit',782);
INSERT INTO t_datatypes VALUES('DDL','Sybase','varchar',1,32767,0,0,50,0,0,0,'1','1','1','1','1','varchar',783);
INSERT INTO t_datatypes VALUES('DDL','Sybase','xml',0,0,0,0,0,0,0,0,'1','1','1','1','1','xml',784);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_GEOMETRY',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry',785);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_GEOMCOLLECTION',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection',786);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_POINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',787);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_POLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',788);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_LINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring',789);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_MULTILINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring',790);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_MULTIPOINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint',791);
INSERT INTO t_datatypes VALUES('DDL','DB2','ST_MULTIPOLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon',792);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_GEOMETRY',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry',793);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_GEOMCOLLECTION',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection',794);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_POINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',795);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_POLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',796);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_LINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring',797);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_MULTILINESTRING',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring',798);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_MULTIPOINT',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint',799);
INSERT INTO t_datatypes VALUES('DDL','Oracle','MDSYS.ST_MULTIPOLYGON',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon',800);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','box2d',0,0,0,0,0,0,0,0,'1','1','1','1','1','box',801);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','box3d',0,0,0,0,0,0,0,0,'1','1','1','1','1','box3d',802);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry',803);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(point)',0,0,0,0,0,0,0,0,'1','1','1','1','1','point',804);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(polygon)',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon',805);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(linestring)',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring',806);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(geometrycollection)',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection',807);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(multipoint)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint',808);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(multipolygon)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon',809);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry(multilinestring)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring',810);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geometry_dump',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometry_dump',811);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography',0,0,0,0,0,0,0,0,'1','1','1','1','1','geography',812);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(point)',0,0,0,0,0,0,0,0,'1','1','1','1','1','point2',813);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(polygon)',0,0,0,0,0,0,0,0,'1','1','1','1','1','polygon2',814);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(linestring)',0,0,0,0,0,0,0,0,'1','1','1','1','1','linestring2',815);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(geometrycollection)',0,0,0,0,0,0,0,0,'1','1','1','1','1','geometrycollection2',816);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(multipoint)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipoint2',817);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(multipolygon)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multipolygon2',818);
INSERT INTO t_datatypes VALUES('DDL','PostgreSQL','geography(multilinestring)',0,0,0,0,0,0,0,0,'1','1','1','1','1','multilinestring2',819);
INSERT INTO t_datatypes VALUES('DDL','MSAccess','GUID',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',820);
INSERT INTO t_datatypes VALUES('DDL','MSAccess 2007','GUID',0,0,0,0,0,0,0,0,'1','1','1','1','1','guid',821);
INSERT INTO t_datatypes VALUES('DDL','DB2','DBCLOB',1,1073741823,0,0,1,0,0,0,'1','1','1','1','1','dbclob',822);
INSERT INTO t_datatypes VALUES('DDL','DB2','GRAPHIC',1,127,0,0,1,0,0,0,'1','1','1','1','1','graphic',823);
INSERT INTO t_datatypes VALUES('DDL','DB2','LONG VARGRAPHIC',0,0,0,0,0,0,0,0,'1','1','1','1','1','longvargraphic',824);
INSERT INTO t_datatypes VALUES('DDL','DB2','VARGRAPHIC',1,16336,0,0,1,0,0,0,'1','1','1','1','1','vargraphic',825);
INSERT INTO t_datatypes VALUES('DDL','Sybase ASE','varbinary',1,255,0,0,1,0,0,0,'1','1','1','1','1','varbinary',826);
INSERT INTO t_datatypes VALUES('Code','Java','char',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Character',827);
INSERT INTO t_datatypes VALUES('Code','Java','short',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Integer',828);
INSERT INTO t_datatypes VALUES('Code','Java','long',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Integer',829);
INSERT INTO t_datatypes VALUES('Code','Java','float',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Real',830);
INSERT INTO t_datatypes VALUES('Code','Java','double',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Real',831);
CREATE TABLE t_diagram
(
	Diagram_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Package_ID INTEGER NULL DEFAULT 1,	-- Diagram belongs in this package
	ParentID INTEGER NULL DEFAULT 0,
	Diagram_Type TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	Version TEXT NULL DEFAULT '1.0' COLLATE NOCASE,
	Author TEXT NULL COLLATE NOCASE,
	ShowDetails INTEGER NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	Stereotype TEXT NULL COLLATE NOCASE,
	AttPub INTEGER NOT NULL DEFAULT 1,
	AttPri INTEGER NOT NULL DEFAULT 1,
	AttPro INTEGER NOT NULL DEFAULT 1,
	Orientation TEXT NULL DEFAULT 'P' COLLATE NOCASE,
	cx INTEGER NULL DEFAULT 0,
	cy INTEGER NULL DEFAULT 0,
	Scale INTEGER NULL DEFAULT 100,
	CreatedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	ModifiedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	HTMLPath TEXT NULL COLLATE NOCASE,
	ShowForeign INTEGER NOT NULL DEFAULT 1,
	ShowBorder INTEGER NOT NULL DEFAULT 1,
	ShowPackageContents INTEGER NOT NULL DEFAULT 1,
	PDATA TEXT NULL COLLATE NOCASE,
	Locked INTEGER NOT NULL DEFAULT 0,
	ea_guid TEXT NULL COLLATE NOCASE,
	TPos INTEGER NULL,
	Swimlanes TEXT NULL COLLATE NOCASE,
	StyleEx TEXT NULL COLLATE NOCASE
);
INSERT INTO t_diagram VALUES(41,140,0,'Custom','Tracing Overview','1.0','dsiegl',0,unistr('This should give users a quick overview!\u000d\u000a\u000d\u000aHere is some changes.'),NULL,1,1,1,'P',827,1169,100,'2022-10-10 10:23:57','2025-02-24 11:31:52',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=9;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=1;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{30A8AA95-7198-49b3-B01B-F3F9BEA0173C}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=Extended::Requirements;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;Theme=:119;SaveTag=AC6FF8E3;');
INSERT INTO t_diagram VALUES(49,157,0,'Use Case','Use Cases','1.0','dsiegl',0,NULL,NULL,1,1,1,'P',827,1169,100,'2022-11-07 09:10:51','2025-08-04 09:24:24',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=9;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{E226DADE-7775-4810-B0B3-B92281637941}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::UseCase;STBLDgm=;ShowNotes=0;OPTIONS_707B392D=CCOMP_tracedFrom=0:;OPTIONS_BDF2E014=CCOMP_tracedFrom=0:;OPTIONS_5A1330D1=CCOMP_tracedFrom=0:;OPTIONS_2ED691CC=CCOMP_tracedFrom=0:;OPTIONS_50DF8880=CCOMP_tracedFrom=0:;OPTIONS_D2164FDF=CCOMP_tracedFrom=0:;OPTIONS_6E81156A=CCOMP_tracedFrom=0:;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=220C6C52;');
INSERT INTO t_diagram VALUES(52,165,0,'Logical','SystemArchitecture','1.0','pkalenda',0,NULL,NULL,1,1,1,'P',827,1169,100,'2022-11-16 10:43:18','2025-08-04 08:38:00',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=9;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{281ECBA6-627C-436f-BDEC-9CAE3030B744}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::BlockDefinition;STBLDgm=;ShowNotes=0;OPTIONS_6DAC4120=CCOMP_satisfies=0:;OPTIONS_4081586A=CCOMP_tracedFrom=0:;OPTIONS_7A1D3BE3=CCOMP_tracedFrom=0:;OPTIONS_2DB6CA97=CCOMP_tracedFrom=0:;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=0D877816;');
INSERT INTO t_diagram VALUES(53,165,923,'CompositeStructure','CarTrafficLight','1.0','pkalenda',0,NULL,NULL,1,1,1,'P',827,1169,100,'2022-11-16 10:58:40','2024-10-10 09:49:13',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=9;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{3A74187E-2C2F-4dd4-B701-E2521EB26A36}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::InternalBlock;STBLDgm=;ShowNotes=0;OPTIONS_7098AEE4=CCOMP_tracedFrom=0:;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=98CB8AD1;');
INSERT INTO t_diagram VALUES(73,379,0,'Custom','Trace','1.0','dsiegl',0,NULL,NULL,1,1,1,'P',827,1169,100,'2023-10-31 10:17:49','2023-10-31 10:23:47',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=9;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{BD0B2F44-586C-4906-9500-F45C24ED0E49}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::Requirement;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=813B6237;');
INSERT INTO t_diagram VALUES(82,140,0,'Custom','Tracing','1.0','dsiegl',0,NULL,NULL,1,1,1,'P',850,1098,100,'2024-04-22 11:23:22','2025-08-04 08:17:39',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=1;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{57A1E586-6578-4031-A590-A2918DFBAC3C}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::Requirement;STBLDgm=;ShowNotes=0;OPTIONS_CBA672F1=CCOMP_allocatedTo=0:;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=5D4843C7;');
INSERT INTO t_diagram VALUES(107,438,0,'Custom','DIAGRAMIMAGE','1.0','dsiegl',0,NULL,NULL,1,1,1,'P',850,1098,100,'2024-04-30 17:51:48','2024-05-02 13:32:23',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=1;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{D0BC5BD0-BFF3-4821-B8A6-F42C0B6E8F82}',0,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=Extended::ModelDocument;STBLDgm=;ShowNotes=0;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;Theme=:119;SaveTag=DD10EEFF;');
INSERT INTO t_diagram VALUES(108,157,0,'Use Case','Real World Use Cases','1.0','chris',0,NULL,NULL,1,1,1,'P',850,1098,100,'2024-10-10 11:57:30','2025-08-04 09:24:17',NULL,1,1,1,'HideRel=0;ShowTags=0;ShowReqs=0;ShowCons=0;OpParams=1;ShowSN=0;ScalePI=0;PPgs.cx=0;PPgs.cy=0;PSize=1;ShowIcons=1;SuppCN=0;HideProps=0;HideParents=0;UseAlias=0;HideAtts=0;HideOps=0;HideStereo=0;HideEStereo=0;ShowRec=1;ShowRes=0;ShowShape=1;FormName=;',0,'{AE39919A-2A00-40d0-87F6-A1A868FD6E95}',NULL,'locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;','ExcludeRTF=0;DocAll=0;HideQuals=0;AttPkg=1;ShowTests=0;ShowMaint=0;SuppressFOC=1;MatrixActive=0;SwimlanesActive=1;KanbanActive=0;MatrixLineWidth=1;MatrixLineClr=0;MatrixLocked=0;TConnectorNotation=UML 2.1;TExplicitNavigability=0;AdvancedElementProps=1;AdvancedFeatureProps=1;AdvancedConnectorProps=1;m_bElementClassifier=1;SPT=1;MDGDgm=SysML1.4::UseCase;STBLDgm=;ShowNotes=0;OPTIONS_7B024D0F=CCOMP_tracedFrom=0:;OPTIONS_D10F17E6=CCOMP_tracedFrom=0:;OPTIONS_47756730=CCOMP_tracedFrom=0:CCOMP_satisfiedBy=0:;VisibleAttributeDetail=0;ShowOpRetType=1;SuppressBrackets=0;SuppConnectorLabels=0;PrintPageHeadFoot=0;ShowAsList=0;SuppressedCompartments=;SF=1;Theme=:119;SaveTag=8B24D6B5;');
CREATE TABLE t_diagramlinks
(
	DiagramID INTEGER NULL,
	ConnectorID INTEGER NULL DEFAULT 0,
	Geometry TEXT NULL COLLATE NOCASE,
	Style TEXT NULL COLLATE NOCASE,
	Hidden INTEGER NOT NULL DEFAULT 0,
	Path TEXT NULL COLLATE NOCASE,
	Instance_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO t_diagramlinks VALUES(49,293,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=FA8C9622;SOID=DD4C1A5E;Color=-1;LWidth=0;',0,'',247);
INSERT INTO t_diagramlinks VALUES(49,294,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=663C6B9B;SOID=DD4C1A5E;Color=-1;LWidth=0;',0,'',248);
INSERT INTO t_diagramlinks VALUES(49,309,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=95527C13;SOID=52D65A3F;Color=-1;LWidth=0;',0,'',249);
INSERT INTO t_diagramlinks VALUES(49,308,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=6E81156A;SOID=52D65A3F;Color=-1;LWidth=0;',0,'',251);
INSERT INTO t_diagramlinks VALUES(49,288,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BFD2DAA7;SOID=D33D7ED0;Color=-1;LWidth=0;',0,'',252);
INSERT INTO t_diagramlinks VALUES(49,295,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2ED691CC;SOID=4AD0A878;Color=-1;LWidth=0;',0,'',253);
INSERT INTO t_diagramlinks VALUES(49,313,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=FA8C9622;SOID=117A9DA4;Color=-1;LWidth=0;',0,'',254);
INSERT INTO t_diagramlinks VALUES(49,289,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=5A1330D1;SOID=95527C13;Color=-1;LWidth=0;',0,'',255);
INSERT INTO t_diagramlinks VALUES(49,300,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2ED691CC;SOID=8959CC33;Color=-1;LWidth=0;',0,'',257);
INSERT INTO t_diagramlinks VALUES(49,297,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BC8D9C57;SOID=3B0C74D3;Color=-1;LWidth=0;',0,'',258);
INSERT INTO t_diagramlinks VALUES(49,312,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=663C6B9B;SOID=117A9DA4;Color=-1;LWidth=0;',0,'',259);
INSERT INTO t_diagramlinks VALUES(49,310,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=663C6B9B;SOID=FA8C9622;Color=-1;LWidth=0;',0,'',260);
INSERT INTO t_diagramlinks VALUES(49,317,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=5AC629FA;SOID=3B0C74D3;Color=-1;LWidth=0;',0,'',261);
INSERT INTO t_diagramlinks VALUES(49,305,'SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=6E81156A;SOID=D33D7ED0;Color=-1;LWidth=0;',0,'',262);
INSERT INTO t_diagramlinks VALUES(49,298,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=14639896;SOID=410D4A00;Color=-1;LWidth=0;',0,'',263);
INSERT INTO t_diagramlinks VALUES(49,290,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BFD2DAA7;SOID=BC8D9C57;Color=-1;LWidth=0;',0,'',264);
INSERT INTO t_diagramlinks VALUES(49,292,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=707B392D;SOID=663C6B9B;Color=-1;LWidth=0;',0,'',265);
INSERT INTO t_diagramlinks VALUES(49,301,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2ED691CC;SOID=5AC629FA;Color=-1;LWidth=0;',0,'',266);
INSERT INTO t_diagramlinks VALUES(49,311,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=707B392D;SOID=27BF48A6;Color=-1;LWidth=0;',0,'',267);
INSERT INTO t_diagramlinks VALUES(49,316,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2097B55C;SOID=3B0C74D3;Color=-1;LWidth=0;',0,'',268);
INSERT INTO t_diagramlinks VALUES(49,307,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=5A1330D1;SOID=00960F01;Color=-1;LWidth=0;',0,'',269);
INSERT INTO t_diagramlinks VALUES(49,303,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=707B392D;SOID=D33D7ED0;Color=-1;LWidth=0;',0,'',270);
INSERT INTO t_diagramlinks VALUES(49,306,'SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=D2164FDF;SOID=D33D7ED0;Color=-1;LWidth=0;',0,'',271);
INSERT INTO t_diagramlinks VALUES(49,291,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=707B392D;SOID=89402F60;Color=-1;LWidth=0;',0,'',272);
INSERT INTO t_diagramlinks VALUES(49,315,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=410D4A00;SOID=3B0C74D3;Color=-1;LWidth=0;',0,'',273);
INSERT INTO t_diagramlinks VALUES(49,299,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=27BF48A6;SOID=68667803;Color=-1;LWidth=0;',0,'',274);
INSERT INTO t_diagramlinks VALUES(49,314,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=27BF48A6;SOID=FC329AB1;Color=-1;LWidth=0;',0,'',275);
INSERT INTO t_diagramlinks VALUES(49,302,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2ED691CC;SOID=2097B55C;Color=-1;LWidth=0;',0,'',276);
INSERT INTO t_diagramlinks VALUES(49,318,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=50DF8880;SOID=14639896;Color=-1;LWidth=0;',0,NULL,277);
INSERT INTO t_diagramlinks VALUES(49,319,'SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=50DF8880;SOID=D33D7ED0;Color=-1;LWidth=0;',0,NULL,278);
INSERT INTO t_diagramlinks VALUES(49,320,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=38:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BDF2E014;SOID=BFD2DAA7;Color=-1;LWidth=0;',0,NULL,279);
INSERT INTO t_diagramlinks VALUES(49,325,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=4AD0A878;SOID=3B0C74D3;Color=-1;LWidth=0;',0,NULL,283);
INSERT INTO t_diagramlinks VALUES(49,326,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=FA8C9622;SOID=3B0C74D3;Color=-1;LWidth=0;',0,NULL,284);
INSERT INTO t_diagramlinks VALUES(52,362,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2DB6CA97;SOID=6DAC4120;Color=-1;LWidth=0;TREE=V;',0,'114:-250;115:-250;',317);
INSERT INTO t_diagramlinks VALUES(52,364,'SX=65;SY=6;EX=0;EY=0;EDGE=1;$LLB=;LLT=CX=29:CY=14:OX=22:OY=-6:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=7A1D3BE3;SOID=05FC9649;Color=-1;LWidth=0;TREE=V;',0,'464:-441;488:-441;',319);
INSERT INTO t_diagramlinks VALUES(52,365,'SX=125;SY=35;EX=0;EY=0;SCME=0;SCTR=0;EDGE=1;$LLB=;LLT=CX=32:CY=14:OX=45:OY=-2:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=7A1D3BE3;SOID=05FC9649;Color=-1;LWidth=0;TREE=V;',0,'524:-441;488:-441;',320);
INSERT INTO t_diagramlinks VALUES(52,366,'SX=31;SY=36;EX=0;EY=0;EDGE=1;$LLB=;LLT=CX=19:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=7A1D3BE3;SOID=05FC9649;Color=-1;LWidth=0;TREE=V;',0,'429:-441;488:-441;',321);
INSERT INTO t_diagramlinks VALUES(52,367,'SX=5;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=1;EOID=6DAC4120;SOID=4081586A;Color=-1;LWidth=0;',0,'114:-421;115:-421;',322);
INSERT INTO t_diagramlinks VALUES(52,375,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2DB6CA97;SOID=7A1D3BE3;Color=-1;LWidth=0;TREE=V;',0,'487:-250;115:-250;',327);
INSERT INTO t_diagramlinks VALUES(41,375,'EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=CA70C2AA;SOID=377C3EBA;Color=-1;LWidth=0;',-1,'',358);
INSERT INTO t_diagramlinks VALUES(53,562,'SX=0;SY=20;EX=0;EY=20;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=4AD1B4FF;SOID=FA99E9DB;Color=-1;LWidth=0;TREE=OS;',0,NULL,468);
INSERT INTO t_diagramlinks VALUES(53,563,'SX=0;SY=13;EX=0;EY=13;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=572ED1DD;SOID=FA99E9DB;Color=-1;LWidth=0;TREE=OS;',0,NULL,469);
INSERT INTO t_diagramlinks VALUES(49,611,'SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=5A1330D1;SOID=D33D7ED0;Color=-1;LWidth=0;',0,NULL,505);
INSERT INTO t_diagramlinks VALUES(41,615,'EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=6C953D53;SOID=09830E2E;Color=-1;LWidth=0;',0,'',511);
INSERT INTO t_diagramlinks VALUES(41,560,'EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=CA70C2AA;SOID=E64ABB54;Color=-1;LWidth=0;',-1,'',513);
INSERT INTO t_diagramlinks VALUES(41,618,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=109B09F6;SOID=CA70C2AA;Color=-1;LWidth=0;',0,'',515);
INSERT INTO t_diagramlinks VALUES(41,624,'SX=45;SY=-1;EX=47;EY=-1;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=109B09F6;SOID=377C3EBA;Color=-1;LWidth=0;',0,'',516);
INSERT INTO t_diagramlinks VALUES(52,619,'SX=0;SY=0;EX=62;EY=-4;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2DB6CA97;SOID=F3AEB6DF;Color=-1;LWidth=0;',0,NULL,518);
INSERT INTO t_diagramlinks VALUES(41,621,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=6C953D53;SOID=E64ABB54;Color=-1;LWidth=0;',0,'',519);
INSERT INTO t_diagramlinks VALUES(52,627,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=05FC9649;SOID=978147A2;Color=-1;LWidth=0;',0,'',525);
INSERT INTO t_diagramlinks VALUES(82,665,'EDGE=1;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=1BF629FD;SOID=D86F3399;Color=-1;LWidth=0;',0,'',558);
INSERT INTO t_diagramlinks VALUES(82,662,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=D86F3399;SOID=CBA672F1;Color=-1;LWidth=0;',0,'',559);
INSERT INTO t_diagramlinks VALUES(82,663,'SX=0;SY=0;EX=0;EY=0;EDGE=1;$LLB=;LLT=;LMT=;LMB=CX=31:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=1BF629FD;SOID=CBA672F1;Color=-1;LWidth=0;',0,'',560);
INSERT INTO t_diagramlinks VALUES(108,835,'SX=18;SY=-14;EX=-51;EY=19;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=D10F17E6;SOID=F8BB23BA;Color=-1;LWidth=0;',0,NULL,747);
INSERT INTO t_diagramlinks VALUES(108,836,'SX=19;SY=9;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=7B024D0F;SOID=F8BB23BA;Color=-1;LWidth=0;',0,NULL,748);
INSERT INTO t_diagramlinks VALUES(49,835,'EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2ED691CC;SOID=D33D7ED0;Color=-1;LWidth=0;',0,NULL,750);
INSERT INTO t_diagramlinks VALUES(49,836,'EDGE=2;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BDF2E014;SOID=D33D7ED0;Color=-1;LWidth=0;',0,NULL,751);
INSERT INTO t_diagramlinks VALUES(108,843,'SX=0;SY=0;EX=0;EY=0;EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=2A3FFEFF;SOID=F8BB23BA;Color=-1;LWidth=0;',0,NULL,755);
INSERT INTO t_diagramlinks VALUES(108,844,'SX=0;SY=0;EX=0;EY=0;EDGE=2;$LLB=;LLT=;LMT=;LMB=CX=31:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=47756730;SOID=2A3FFEFF;Color=-1;LWidth=0;',0,NULL,758);
INSERT INTO t_diagramlinks VALUES(49,848,'SX=0;SY=0;EX=0;EY=0;EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=25:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=707B392D;SOID=BFA6B35F;Color=-1;LWidth=0;',0,NULL,761);
INSERT INTO t_diagramlinks VALUES(49,854,'EDGE=4;$LLB=;LLT=;LMT=;LMB=CX=25:CY=14:OX=0:OY=0:HDN=0:BLD=0:ITA=0:UND=0:CLR=-1:ALN=1:DIR=0:ROT=0;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BDF2E014;SOID=3B0C74D3;Color=-1;LWidth=0;',0,NULL,763);
INSERT INTO t_diagramlinks VALUES(49,851,'EDGE=3;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=BDF2E014;SOID=BFA6B35F;Color=-1;LWidth=0;',0,NULL,764);
INSERT INTO t_diagramlinks VALUES(108,851,'EDGE=4;$LLB=;LLT=;LMT=;LMB=;LRT=;LRB=;IRHS=;ILHS=;','Mode=3;EOID=7B024D0F;SOID=62B77F2D;Color=-1;LWidth=0;',0,NULL,765);
CREATE TABLE t_diagramobjects
(
	Diagram_ID INTEGER NULL DEFAULT 0,
	Object_ID INTEGER NULL DEFAULT 0,
	RectTop INTEGER NULL DEFAULT 0,
	RectLeft INTEGER NULL DEFAULT 0,
	RectRight INTEGER NULL DEFAULT 0,
	RectBottom INTEGER NULL DEFAULT 0,
	Sequence INTEGER NULL DEFAULT 0,
	ObjectStyle TEXT NULL COLLATE NOCASE,
	Instance_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO t_diagramobjects VALUES(49,737,-811,1520,1565,-901,12,'DUID=3B0C74D3;',284);
INSERT INTO t_diagramobjects VALUES(49,730,-1881,682,787,-1951,15,'DUID=52D65A3F;',285);
INSERT INTO t_diagramobjects VALUES(49,726,-1644,682,787,-1714,14,'DUID=95527C13;',286);
INSERT INTO t_diagramobjects VALUES(49,738,-1062,685,790,-1132,13,'DUID=14639896;',287);
INSERT INTO t_diagramobjects VALUES(49,739,-398,680,785,-468,18,'DUID=89402F60;',288);
INSERT INTO t_diagramobjects VALUES(49,734,-85,679,784,-155,10,'DUID=27BF48A6;',289);
INSERT INTO t_diagramobjects VALUES(49,729,-1508,690,795,-1578,25,'DUID=00960F01;',290);
INSERT INTO t_diagramobjects VALUES(49,736,-15,1198,1303,-85,6,'DUID=FC329AB1;',291);
INSERT INTO t_diagramobjects VALUES(49,727,-891,250,355,-961,7,'DUID=D2164FDF;LCol=-1;LWth=1;',292);
INSERT INTO t_diagramobjects VALUES(49,721,-686,685,790,-756,5,'DUID=8959CC33;',293);
INSERT INTO t_diagramobjects VALUES(49,725,-1853,247,352,-1923,2,'DUID=6E81156A;LCol=-1;LWth=1;',294);
INSERT INTO t_diagramobjects VALUES(49,722,-792,685,790,-862,19,'DUID=5AC629FA;',295);
INSERT INTO t_diagramobjects VALUES(49,740,-233,680,785,-303,28,'DUID=663C6B9B;',296);
INSERT INTO t_diagramobjects VALUES(49,728,-1270,965,1070,-1340,16,'DUID=BC8D9C57;',297);
INSERT INTO t_diagramobjects VALUES(49,719,-108,1198,1303,-178,17,'DUID=68667803;',298);
INSERT INTO t_diagramobjects VALUES(49,741,-398,1203,1308,-468,21,'DUID=DD4C1A5E;',299);
INSERT INTO t_diagramobjects VALUES(49,731,-318,1493,1598,-388,3,'DUID=FA8C9622;',300);
INSERT INTO t_diagramobjects VALUES(49,742,-891,685,790,-961,20,'DUID=4AD0A878;',301);
INSERT INTO t_diagramobjects VALUES(49,733,-62,256,361,-132,30,'DUID=707B392D;LCol=-1;LWth=1;',302);
INSERT INTO t_diagramobjects VALUES(49,735,-227,1203,1308,-297,4,'DUID=117A9DA4;',303);
INSERT INTO t_diagramobjects VALUES(49,720,-1281,286,391,-1351,26,'DUID=5A1330D1;LCol=-1;LWth=1;',304);
INSERT INTO t_diagramobjects VALUES(49,717,-497,430,535,-567,22,'DUID=BFD2DAA7;',305);
INSERT INTO t_diagramobjects VALUES(49,718,-1051,947,1086,-1144,8,'DUID=410D4A00;',306);
INSERT INTO t_diagramobjects VALUES(49,723,-586,685,790,-656,27,'DUID=2097B55C;',307);
INSERT INTO t_diagramobjects VALUES(49,724,-65,64,109,-155,9,'DUID=D33D7ED0;LWth=0;',308);
INSERT INTO t_diagramobjects VALUES(49,732,-657,250,355,-727,24,'DUID=2ED691CC;LCol=-1;LWth=1;',309);
INSERT INTO t_diagramobjects VALUES(49,746,-1063,250,355,-1133,23,'DUID=50DF8880;LCol=-1;LWth=1;',310);
INSERT INTO t_diagramobjects VALUES(49,747,-455,239,344,-525,29,'DUID=BDF2E014;LCol=-1;LWth=1;',311);
INSERT INTO t_diagramobjects VALUES(52,923,-40,53,178,-200,1,'DUID=2DB6CA97;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',338);
INSERT INTO t_diagramobjects VALUES(52,922,-10,10,597,-700,8,' DUID=8EF3C938;NSL=1;',339);
INSERT INTO t_diagramobjects VALUES(52,924,-295,50,181,-371,7,'DUID=6DAC4120;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',340);
INSERT INTO t_diagramobjects VALUES(52,930,-475,252,547,-551,3,'DUID=05FC9649;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',343);
INSERT INTO t_diagramobjects VALUES(52,934,-466,65,155,-536,4,'DUID=4081586A;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',344);
INSERT INTO t_diagramobjects VALUES(53,923,-10,20,721,-418,10,' DUID=7098AEE4;NSL=1;',345);
INSERT INTO t_diagramobjects VALUES(53,928,-138,236,403,-284,8,'DUID=FA99E9DB;NSL=0;',346);
INSERT INTO t_diagramobjects VALUES(52,938,-289,432,545,-391,2,'DUID=7A1D3BE3;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',353);
INSERT INTO t_diagramobjects VALUES(53,942,-133,458,616,-380,7,'DUID=572ED1DD;NSL=0;',354);
INSERT INTO t_diagramobjects VALUES(53,945,-237,478,596,-293,5,' DUID=6AE8A010;',355);
INSERT INTO t_diagramobjects VALUES(53,944,-173,478,596,-229,3,' DUID=615FE803;',356);
INSERT INTO t_diagramobjects VALUES(53,943,-308,478,596,-364,4,' DUID=DA378DDE;',357);
INSERT INTO t_diagramobjects VALUES(53,946,-181,256,383,-269,2,' DUID=4D18341B;',358);
INSERT INTO t_diagramobjects VALUES(41,923,-49,693,783,-129,1,'DUID=CA70C2AA;NSL=0;BCol=-1;BFol=-1;LCol=-1;LWth=-1;fontsz=0;bold=0;black=0;italic=0;ul=0;charset=0;pitch=0;HideIcon=0;AttPro=0;AttPkg=0;AttPub=0;Constraint=1;AttPri=0;',362);
INSERT INTO t_diagramobjects VALUES(41,938,-171,693,783,-251,2,'AttPkg=0;AttPri=0;AttPro=0;AttPub=0;BCol=-1;BFol=-1;Constraint=1;DUID=377C3EBA;HideIcon=0;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',385);
INSERT INTO t_diagramobjects VALUES(41,1005,-5,598,840,-445,10,'DUID=440996A3;',386);
INSERT INTO t_diagramobjects VALUES(41,1006,-10,310,552,-450,11,'DUID=C29FE597;',387);
INSERT INTO t_diagramobjects VALUES(41,1007,-39,22,264,-479,9,'DUID=552CD0E6;',388);
INSERT INTO t_diagramobjects VALUES(53,1464,-89,60,218,-307,9,'DUID=4AD1B4FF;NSL=0;',510);
INSERT INTO t_diagramobjects VALUES(53,1466,-130,80,198,-186,1,' DUID=60955F2A;',511);
INSERT INTO t_diagramobjects VALUES(53,1465,-201,80,198,-257,6,' DUID=A0FDAFAF;',512);
INSERT INTO t_diagramobjects VALUES(73,1530,-10,10,384,-258,2,' DUID=E30BB277;NSL=1;',551);
INSERT INTO t_diagramobjects VALUES(41,1461,-309,693,783,-389,6,'AttPkg=0;AttPri=0;AttPro=0;AttPub=0;BCol=-1;BFol=-1;Constraint=1;DUID=E64ABB54;HideIcon=0;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',582);
INSERT INTO t_diagramobjects VALUES(41,1519,-397,363,523,-430,5,'BCol=-1;BFol=-1;DUID=6C953D53;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',583);
INSERT INTO t_diagramobjects VALUES(41,1516,-127,369,529,-160,4,'BCol=-1;BFol=-1;DUID=109B09F6;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',584);
INSERT INTO t_diagramobjects VALUES(41,1514,-314,363,523,-373,8,'BCol=-1;BFol=-1;DUID=09830E2E;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',585);
INSERT INTO t_diagramobjects VALUES(52,1565,-89,432,545,-159,6,'AttPkg=0;AttPri=0;AttPro=0;AttPub=0;Constraint=1;DUID=F3AEB6DF;HideIcon=0;',586);
INSERT INTO t_diagramobjects VALUES(52,1569,-593,354,444,-663,5,'AttPkg=0;AttPri=0;AttPro=0;AttPub=0;Constraint=1;DUID=978147A2;HideIcon=0;',595);
INSERT INTO t_diagramobjects VALUES(82,934,-312,84,174,-382,3,'AttPkg=0;AttPri=0;AttPro=0;AttPub=0;BCol=-1;BFol=-1;Constraint=1;DUID=CBA672F1;HideIcon=0;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',635);
INSERT INTO t_diagramobjects VALUES(82,588,-10,10,671,-450,4,'DUID=467ABE72;NSL=1;',636);
INSERT INTO t_diagramobjects VALUES(82,1669,-321,456,616,-351,1,'BCol=-1;BFol=-1;DUID=D86F3399;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',637);
INSERT INTO t_diagramobjects VALUES(82,1664,-110,235,395,-140,2,'BCol=-1;BFol=-1;DUID=1BF629FD;LCol=-1;LWth=-1;NSL=0;black=0;bold=0;charset=0;fontsz=0;italic=0;pitch=0;ul=0;',638);
INSERT INTO t_diagramobjects VALUES(107,1880,-5,6,998,-543,1,'Dockable=standard;HideIcon=0;DUID=116602C6;',837);
INSERT INTO t_diagramobjects VALUES(49,716,-10,10,1637,-1988,31,'DUID=C9968E07;NSL=1;',848);
INSERT INTO t_diagramobjects VALUES(108,716,-10,10,548,-370,8,'DUID=81FFDAB3;NSL=1;',852);
INSERT INTO t_diagramobjects VALUES(108,724,-57,32,77,-147,3,'LWth=0;DUID=F8BB23BA;NSL=0;',854);
INSERT INTO t_diagramobjects VALUES(108,747,-67,177,282,-137,7,'LCol=-1;LWth=1;DUID=7B024D0F;NSL=0;',856);
INSERT INTO t_diagramobjects VALUES(108,732,-180,177,282,-250,6,'LCol=-1;LWth=1;DUID=D10F17E6;NSL=0;',857);
INSERT INTO t_diagramobjects VALUES(108,1895,-237,41,146,-307,4,'DUID=2A3FFEFF;',863);
INSERT INTO t_diagramobjects VALUES(108,1889,-242,339,471,-307,5,'DUID=47756730;NSL=0;BCol=-1;BFol=-1;LCol=-1;LWth=-1;fontsz=0;bold=0;black=0;italic=0;ul=0;charset=0;pitch=0;HideIcon=0;UCRect=1;Tag=0;',867);
INSERT INTO t_diagramobjects VALUES(41,1897,-351,62,177,-406,7,'DUID=4A9DD868;',869);
INSERT INTO t_diagramobjects VALUES(49,1898,-42,425,470,-132,11,'DUID=BFA6B35F;',870);
INSERT INTO t_diagramobjects VALUES(108,1898,-67,413,458,-157,2,'DUID=62B77F2D;NSL=0;BCol=-1;BFol=-1;LCol=-1;LWth=-1;fontsz=0;bold=0;black=0;italic=0;ul=0;charset=0;pitch=0;',872);
INSERT INTO t_diagramobjects VALUES(49,1904,-40,186,231,-130,1,'DUID=D0951FB1;',873);
INSERT INTO t_diagramobjects VALUES(108,1904,-37,350,395,-127,1,'DUID=DDEA0798;NSL=0;BCol=-1;BFol=-1;LCol=-1;LWth=-1;fontsz=0;bold=0;black=0;italic=0;ul=0;charset=0;pitch=0;',874);
CREATE TABLE t_diagramtypes
(
	Diagram_Type TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Name TEXT NULL COLLATE NOCASE,
	Package_ID INTEGER NULL DEFAULT 0
);
INSERT INTO t_diagramtypes VALUES('Activity','Activity',1);
INSERT INTO t_diagramtypes VALUES('Analysis','Analysis',1);
INSERT INTO t_diagramtypes VALUES('Collaboration','Collaboration',1);
INSERT INTO t_diagramtypes VALUES('Component','Component',1);
INSERT INTO t_diagramtypes VALUES('CompositeStructure','CompositeStructure',1);
INSERT INTO t_diagramtypes VALUES('Custom','Custom',1);
INSERT INTO t_diagramtypes VALUES('Deployment','Deployment',1);
INSERT INTO t_diagramtypes VALUES('InteractionOverview','InteractionOverview',1);
INSERT INTO t_diagramtypes VALUES('Logical','Logical View',1);
INSERT INTO t_diagramtypes VALUES('Object','Object',1);
INSERT INTO t_diagramtypes VALUES('Package','Package',1);
INSERT INTO t_diagramtypes VALUES('Sequence','Sequence',1);
INSERT INTO t_diagramtypes VALUES('Statechart','Statechart',1);
INSERT INTO t_diagramtypes VALUES('Timing','Timing',1);
INSERT INTO t_diagramtypes VALUES('Use Case','Use Case View',1);
CREATE TABLE t_document
(
	DocID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	DocName TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Style TEXT NULL COLLATE NOCASE,
	ElementID TEXT NOT NULL COLLATE NOCASE,
	ElementType TEXT NOT NULL COLLATE NOCASE,
	StrContent TEXT NULL COLLATE NOCASE,
	BinContent BLOB NULL,
	DocType TEXT NULL COLLATE NOCASE,
	Author TEXT NULL COLLATE NOCASE,
	Version TEXT NULL COLLATE NOCASE,
	IsActive INTEGER NULL DEFAULT 1,
	Sequence INTEGER NULL DEFAULT 0,
	DocDate TEXT NULL COLLATE NOCASE
);
INSERT INTO t_document VALUES('{9A3878D0-AD33-4871-942C-12FEBD88F136}','LemonTree',NULL,NULL,'TECHNOLOGY','TECHNOLOGY',NULL,X'504b0304140000000800485069557444e89737050000b41b0000070011007374722e64617455540d00079c7a6b639c7a6b639c7a6b63ed5959731a4710eed750e5ff40f935a5238e2d452e2297088e8240872d64398fdcc6468bc222cbf2afcff775efeccceeb2023bc953a82998d9beafe91d869abc922f722353a9ca6719ca5c6299c84c22f9559eca4fb22dbb98abc044d2077c006c2463c55e49477e972d50ed294d2c0be9023bc0f754650c952ec29af85772284fa422353995861c437607147df9a014e418cbc3a3761c82b701685fee60336da2c6454259c53c50fa3670370aeb40d21083fa23d092cb282658f55453b8ae96f096db44b933d83004f671c997a01b81f21e7650721531b801f60f95c2b88e4071256fa5a992ee756c23325e4ab8ded68cdc80724723d3d608ce74dd04bc8b276a5920aab7627ef7c0bf50dcad6ab5dc47b0fd2562b7509a3bc88ef01c6b6e188d2ed65b982780cca1214e3cd94a2c202ff3c08fe98a553a257ab9d41dc1ea9eca1ba26a9e6b4edfc82744f2991cc1dba3cc68c89fe97a96ae5ea7ab7abab2751d1e7b888d4601b26a540a90fca8236e63b94694df63074c51cf2df94d2ee44cf691e5b19c23175d787b8a6fc29bf0fb0c1ff2cdc09397b76a788b4e502d53c4d36938838e6b7981a703d4685fabf7bd561eab84b3c18d6e2fe5a39c2f8578978f3674ec251e0e91af8a4afe19eb16a02354600bdf178fce46e7f89ca436e41ea3e6f31add68827a807a71f49c2788c119bc3a96af2af723e45654533bd1b87c364ae3dc0d249964c664816839cd75547f5fdea53133cb47cadfc2fe0f7330945f329ef6128b6ce530467910709a252e260eeeea84f555579f2dcb3ed6ce935350ff987a40fe6b586d16d2436f29e195208ae43cc848e4ecea84157b829dcdbc3f03cceaa817f8e863cb67af791f5cac76c6f6263313eee81c5f366b84384d6eef90f35c6958d97f2db1c0624c5fcf616b5e63d1228b49989b503f2bdbf68ecfd2fa16b4fe050bdc1e263dbb092dfa6fb39097e373607dada9d5f751581d97e8da56d9f94ae41ea0866c259e2659b139b4d0d521f94e208372b275f822edb0dc8b3c6f847bf1abf6b558bb4025c896abecec6e0ca3dd493470ef783e9364920729dcf5fab01fbd4315780fc27eb49b7af06dfd88f5e025f97ec45e9fef886eb4f1a67d80178ede59ee73e3b3ebf75a087194c59e6cdd3eafb16cb8988439609d50ee1c10567407783f1b9cfdc828ad2e2669b7cf6b5877b04ede4087ab58b773e819f7b09b1ddc7558ebf5576bbcfb6b88973f5df1acc5f885272f9e89a2cd292c3336a7b0cd29acd8f536a7b0cd296cf91968730a0b73b039856d4e61abc7fffd14169ebcae749f5ee83969a4f9e469a80c53450ec3e7f0acc69bc629ace419a9223fe858ef16f239bc7c8d0ceec1af3a9eb6e0edd3c23d64feb6b18abdce67de9ef621951cdf72fbb85a1e6f0bbd2786a5047e7b0c71970aa71cea7067ca90a68c2aeb658c48c50aa70543c4a76839217dec72ae0f12dffa90c6e7fde4b9876c33c7bc2b9e2b86b7cfc4f0e694f62fc7f61432502b5753dc6b0617a8c590e2834287c2d3b7cb82dd4987d1603c8ee0e9add84d6d8c3cf077419626a4e28d77586f47f071acd11c075595cdda3a5262fd7dd007fff74bc9560e2354f4d724d87e22df5c2564f3ff49f89bc3b2fe59f8efc05d8229b36827b06919becce20666aea9cdfeb37828d55126e35839e9092d9da09b87112c4a5aedff04b9b884cf3de17f24fced7727ec193ded36c5a82c2085eb32cbbf373a6f319b4ff13fa80a76962e22bbdcbed0bab21d409a655d23db7d96d364fb4f0dd2f90ee05b6080b79f8b6227a5ce5a58030dadbad74a61bf8f341f16892235cf45cc147b2a2b6a9aeb9e3b25fd9398656f1ac39761ed0db5238ffd3f76287f03504b0102170b140000000800485069557444e89737050000b41b00000700090000000000000000000080000000007374722e64617455540500079c7a6b63504b050600000000010001003e0000006d0500000000','TECHNOLOGY',NULL,NULL,1,0,NULL);
CREATE TABLE t_ecf
(
	ECFID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Technical Factor Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of TCF
	Weight REAL NULL DEFAULT 1,	-- Weighting
	Value REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_ecf VALUES('ECF01','Familiar with Rational Unified Process',1.5,4.0,'1');
INSERT INTO t_ecf VALUES('ECF02','Application experience',0.5,3.0,'1');
INSERT INTO t_ecf VALUES('ECF03','Object-oriented experience',1.0,4.0,'1');
INSERT INTO t_ecf VALUES('ECF04','Lead analyst capability',0.5,4.0,'1');
INSERT INTO t_ecf VALUES('ECF05','Motivation',1.0,3.0,'1');
INSERT INTO t_ecf VALUES('ECF06','Stable requirements',2.0,4.0,'1');
INSERT INTO t_ecf VALUES('ECF07','Part-time workers',-1.0,0.0,'1');
INSERT INTO t_ecf VALUES('ECF08','Difficult programming language',-1.0,3.0,'1');
CREATE TABLE t_efforttypes
(
	EffortType TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Effort Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of Effort
	NumericWeight REAL NULL DEFAULT 0,	-- Numeric factor to apply to effort - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE	-- Further Notes
);
INSERT INTO t_efforttypes VALUES('Analysis','Analyzing System',1.0,'Analysis');
INSERT INTO t_efforttypes VALUES('Coding','Developing code',1.0,'Code writing');
INSERT INTO t_efforttypes VALUES('Construction','Design and build system components',1.0,'The construction phase is concerned with designing and building the components necessary to implement the system as specified.');
INSERT INTO t_efforttypes VALUES('Design','Designing specifications',1.0,'Process of developing system design');
INSERT INTO t_efforttypes VALUES('Elaboration','Refine specification. Set up project',1.0,'The elaboration phase is concerned with refining the system specification, setting up project infrastructure and agreeing on the body of work to be completed.');
INSERT INTO t_efforttypes VALUES('Transition','Implementation, acceptance testing',1.0,'The Transition phase revolves around the implementation of the project and the acceptance testing carried out by the end user');
CREATE TABLE t_files
(
	FileID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	AppliesTo TEXT NULL COLLATE NOCASE,
	Category TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	File TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	FileDate TEXT NULL COLLATE NOCASE,
	FileSize INTEGER NULL
);
CREATE TABLE t_genopt
(
	AppliesTo TEXT NULL COLLATE NOCASE,
	Option TEXT NULL COLLATE NOCASE
);
INSERT INTO t_genopt VALUES('CMACRO','_AFX_NO_DEBUG_CRT;_AFX_NO_OCC_SUPPORT;_AFX_OLD_EXCEPTIONS;_AFX_PACKING;_AFXDLL;_DEBUG;_MSC_VER;_UNICODE;AFX_CDECL;AFX_COMDAT;AFX_DATA;AFX_DATADEF;AFX_NOVTABLE;AFXAPI;APICALL;BEGIN_INTERFACE_PART ^ END_INTERFACE_PART;BEGIN_PARAM_MAP ^ END_PARAM_MAP;CONTROLLER_API;DECLARE_DYNAMIC();DECLARE_DYNCREATE();DECLARE_INTERFACE_MAP();DECLARE_MESSAGE_MAP();defined();PASCAL;SWLAPI;WINAPI;');
INSERT INTO t_genopt VALUES('Status','1');
INSERT INTO t_genopt VALUES('class',unistr('nKill=0;nLang=1;sLang=Java;bConstructor=1;bConInline=0;sConScope=Public;bCpyConstructor=0;bCpyConInline=0;sCpyConScope=Public;bDestructor=1;bDesVirtual=1;bDesInline=0;sDesScope=Public;CHeader=.h;CBody=.cpp;JBody=.java;VBody=.cls;VBNetBody=.vb;WFSBody=.vbs;JavaScriptBody=.js;ModelicaBody=.mo;MDGBPSimExecutionEngineExtensionBody=;sAssocName=m_$LinkClass;bGetSet=1;bGenInterfaces=1;JCol=Vector;CCol=[];VCol=Collection;bVMultiuse=1;bVPersist=0;bVDatabind=0;bVDatasource=0;bVGlobal=0;bVCreatable=1;bVExposed=0;sMTS=0;sCRefType=*;sCGetPrefix=Get;sCSetPrefix=Set;sJGetPrefix=get;sJSetPrefix=set;sCSGetPrefix=Get;sCSSetPrefix=Set;sVVersion=6.0;CSBody=.cs;DBody=.pas;bJInnerClasses=1;sJCollection=;sCodePage=;sPHPBody=.php;sPHPVersion=;sPHPGetPrefix=get;sPHPSetPrefix=set;ASBody=.as;PyBody=.py;CPPVersion=;ASVersion=2.0;ANSICHeader=.h;ANSICBody=.c;ANSIC_OOSupport=0;ANSIC_NSDLMT=_;ANSIC_RefParam=1;ANSIC_RefStyle=*;ANSIC_RefName=this;ANSIC_ConstructorName=new;ANSIC_DestructorName=delete;CPPCollections=CArray<#TYPE#>\u001fCMap<CString,LPCTSTR,#TYPE#*,#TYPE#*>\u001f;CSCollections=List<#TYPE#>\u001fStack<#TYPE#>\u001fQueue<#TYPE#>\u001f;JCollections=HashSet<#TYPE#>\u001fMap<String,#TYPE#>\u001fList<#TYPE#>\u001f;CPPWrappers=unique_ptr<#TYPE#>\u001fshared_ptr<#TYPE#>\u001fweak_ptr<#TYPE#>\u001f;'));
INSERT INTO t_genopt VALUES('statemachine','STM_Java_UseNewTemplate=1;STM_Java_ObjectOrientedSupport=0;STM_Java_GenerateTrace=1;STM_CPP_UseNewTemplate=1;STM_CPP_ObjectOrientedSupport=0;STM_CPP_GenerateTrace=1;STM_C_UseNewTemplate=1;STM_C_GenerateTrace=1;STM_CS_UseNewTemplate=1;STM_CS_ObjectOrientedSupport=0;STM_CS_GenerateTrace=1;STM_SYSTEMC_UseNewTemplate=0;STM_SYSTEMC_GenerateTrace=1;');
INSERT INTO t_genopt VALUES('scenario','usesManagedList=0;');
INSERT INTO t_genopt VALUES('mdgtech','{ll embedded c}DefaultExtension=.h;CollClassID=FC87E352;');
INSERT INTO t_genopt VALUES('mdgtech','{ll embedded c++}DefaultExtension=.h;CollClassID=3C398470;');
CREATE TABLE t_glossary
(
	Term TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Meaning TEXT NULL COLLATE NOCASE,
	GlossaryID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
CREATE TABLE t_html
(
	Type TEXT NULL COLLATE NOCASE,
	Template TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_image
(
	ImageID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Image BLOB NULL
);
CREATE TABLE t_implement
(
	Type TEXT NULL COLLATE NOCASE
);
INSERT INTO t_implement VALUES('Requirement');
INSERT INTO t_implement VALUES('UseCase');
INSERT INTO t_implement VALUES('Component');
CREATE TABLE t_issues
(
	Issue TEXT NULL COLLATE NOCASE,
	IssueDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	Owner TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Resolver TEXT NULL COLLATE NOCASE,
	DateResolved TEXT NULL COLLATE NOCASE,
	Resolution TEXT NULL COLLATE NOCASE,
	IssueID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Category TEXT NULL COLLATE NOCASE,
	Priority TEXT NULL COLLATE NOCASE,
	Severity TEXT NULL COLLATE NOCASE,
	IssueType TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_lists
(
	ListID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Category TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	NVal INTEGER NULL,
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_lists VALUES('{1E9843C4-0788-4948-8FCA-EF9E0D9B9369}','ConstStatusType','Build',1,'1');
INSERT INTO t_lists VALUES('{4C61C3E6-B721-41a7-BFB3-699DF50BC4D9}','ConstStatusType','Validated',1,'1');
INSERT INTO t_lists VALUES('{5A276B14-D271-431f-A63C-D76B5572F829}','ConstStatusType','Proposed',1,'1');
INSERT INTO t_lists VALUES('{AC15A9A3-8278-4e4e-AA88-23DF5EA35B43}','ConstStatusType','Approved',1,'1');
INSERT INTO t_lists VALUES('{CD22EDBC-4F15-4b1c-A8D9-EAC780A2CE98}','ConstStatusType','Mandatory',1,'1');
INSERT INTO t_lists VALUES('{FDF9A368-23F8-4730-9637-D43E35628A12}','ConstStatusType','Implemented',1,'1');
CREATE TABLE t_mainttypes
(
	MaintType TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Maintenance Type
	Description TEXT NULL COLLATE NOCASE,	-- Description of the maintenance
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric weight to apply to this type of problem type
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_method
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Name TEXT NOT NULL COLLATE NOCASE,
	Scope TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_method PRIMARY KEY (Object_ID,Name)
);
CREATE TABLE t_metrictypes
(
	Metric TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Metric Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of Metric
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_metrictypes VALUES('Breakage','Convergence, rework, software scrap',1.0,'Reworked SLOC per change. ');
INSERT INTO t_metrictypes VALUES('Change','Change control, stability',1.0,'Change requests, ');
INSERT INTO t_metrictypes VALUES('Cost','Budget, cost, expenditure',1.0,'Cost per day, percentage expended.');
INSERT INTO t_metrictypes VALUES('Progress','Iteration, planning, actuals',1.0,'Measures such as function points, SLOC, scenarios, test cases.');
INSERT INTO t_metrictypes VALUES('Team','Staffing, team dynamics',1.0,'Resource turnover');
CREATE TABLE t_object
(
	Object_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,	-- The object unique ID
	Object_Type TEXT NULL COLLATE NOCASE,	-- The object Type
	Diagram_ID INTEGER NULL DEFAULT 0,	-- Diagram ID
	Name TEXT NULL COLLATE NOCASE,	-- Object Name
	Alias TEXT NULL COLLATE NOCASE,
	Author TEXT NULL COLLATE NOCASE,
	Version TEXT NULL DEFAULT '1.0' COLLATE NOCASE,
	Note TEXT NULL COLLATE NOCASE,
	Package_ID INTEGER NULL DEFAULT 0,
	Stereotype TEXT NULL COLLATE NOCASE,
	NType INTEGER NULL DEFAULT 0,
	Complexity TEXT NULL DEFAULT '2' COLLATE NOCASE,	-- Subjective Measure of object complexity
	Effort INTEGER NULL DEFAULT 0,	-- Estimated Effort
	Style TEXT NULL COLLATE NOCASE,
	Backcolor INTEGER NULL DEFAULT 0,
	BorderStyle INTEGER NULL DEFAULT 0,	-- Dash, dot ... depends on object - default = solid
	BorderWidth INTEGER NULL DEFAULT 0,
	Fontcolor INTEGER NULL DEFAULT 0,
	Bordercolor INTEGER NULL DEFAULT 0,
	CreatedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	ModifiedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	Abstract TEXT NULL COLLATE NOCASE,
	Tagged INTEGER NULL DEFAULT 0,
	PDATA1 TEXT NULL COLLATE NOCASE,
	PDATA2 TEXT NULL COLLATE NOCASE,
	PDATA3 TEXT NULL COLLATE NOCASE,
	PDATA4 TEXT NULL COLLATE NOCASE,
	PDATA5 TEXT NULL COLLATE NOCASE,
	Concurrency TEXT NULL COLLATE NOCASE,
	Visibility TEXT NULL COLLATE NOCASE,
	Persistence TEXT NULL COLLATE NOCASE,
	Cardinality TEXT NULL COLLATE NOCASE,
	GenType TEXT NULL COLLATE NOCASE,
	GenFile TEXT NULL COLLATE NOCASE,
	Header1 TEXT NULL COLLATE NOCASE,
	Header2 TEXT NULL COLLATE NOCASE,
	Phase TEXT NULL COLLATE NOCASE,
	Scope TEXT NULL COLLATE NOCASE,
	GenOption TEXT NULL COLLATE NOCASE,
	GenLinks TEXT NULL COLLATE NOCASE,
	Classifier INTEGER NULL,
	ea_guid TEXT NULL COLLATE NOCASE,
	ParentID INTEGER NULL,
	RunState TEXT NULL COLLATE NOCASE,
	Classifier_guid TEXT NULL COLLATE NOCASE,
	TPos INTEGER NULL,
	IsRoot INTEGER NULL DEFAULT 0,
	IsLeaf INTEGER NULL DEFAULT 0,
	IsSpec INTEGER NULL DEFAULT 0,
	IsActive INTEGER NULL DEFAULT 0,
	StateFlags TEXT NULL COLLATE NOCASE,
	PackageFlags TEXT NULL COLLATE NOCASE,
	Multiplicity TEXT NULL COLLATE NOCASE,
	StyleEx TEXT NULL COLLATE NOCASE,
	ActionFlags TEXT NULL COLLATE NOCASE,
	EventFlags TEXT NULL COLLATE NOCASE
);
INSERT INTO t_object VALUES(473,'Package',0,'Configuration','','','','',9,'MPMS Configuration',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-10-14 11:42:13.2963835','2022-10-14 11:42:13.2963783',NULL,'0',0,'132',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{f753cac4-e9bd-4a77-a844-66a0d822b092}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(516,'Package',0,'Requirements','','dsiegl','1.0','',1,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-10-07 08:52:53','2022-11-16 10:31:59','Proposed','0',0,'138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{AB2F52EB-8C65-4a4c-BDBC-E77DB114C1C8}',0,NULL,NULL,1,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(588,'Package',0,'Tracing','','dsiegl','1.0','',138,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-10-10 10:23:44','2022-10-10 10:23:44','Proposed','0',0,'140',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{D7D976F0-4124-460c-9997-0FEBBCF2FBD2}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(716,'Package',0,'Use Cases','','dsiegl','1.0','',1,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:10:42','2022-11-07 09:10:42','Proposed','0',0,'157',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{84586B2D-2C36-4b5a-ACF1-7C4E07B731C0}',0,NULL,NULL,2,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(717,'UseCase',0,'LemonTree','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:14:06','2022-11-07 09:14:12','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{5CD7596D-F8BD-428b-B0D4-CBB58DDFB711}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(718,'UseCase',0,'EmbeddedEngineer.Automation','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:15:46','2022-11-07 09:16:05','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{BDF8B37F-0964-410a-84EF-FDFE0EAEF4B2}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(719,'UseCase',0,'Codebeamer Import','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:13:24','2022-11-07 09:14:00','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{7B86C9B4-80ED-4797-A3CE-F384D0B536BC}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(720,'UseCase',0,'Publish',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:16:16','2022-11-07 09:56:13','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{22FC2E5F-CFD6-4f56-B5D8-6145EF0619FE}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(721,'UseCase',0,'run XMI Export','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:17:13','2022-11-07 09:17:17','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{D482095F-C97B-4c66-A486-26A1CDAAE765}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(722,'UseCase',0,'run IncQuery Validation','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:17:22','2022-11-07 09:18:16','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{749D2BDA-8AA1-4413-BDD6-6E9314CEFAE5}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(723,'UseCase',0,'run Modelcheck','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:17:06','2022-11-07 09:17:10','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{1C8D55F0-818C-4d14-A4A0-E2732D51D0FD}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(724,'Actor',0,'User',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:20:11','2024-10-10 11:59:46','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{B67A7077-E567-4dfe-B6CC-3CC7A9B4211E}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(725,'UseCase',0,'Review','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:16:22','2022-11-07 09:16:24','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{FD7FDFBE-871B-47e3-A954-2453157346F5}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(726,'UseCase',0,'Prolaborate','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:15:15','2022-11-07 09:15:27','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{8D07DE83-F8DD-492c-9D0F-42FDC18D3026}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(727,'UseCase',0,'Reuse Model Components',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:19:49','2024-10-10 12:08:14','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{BE13BDAE-F214-4a55-AA65-05E1CA0399DF}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(728,'UseCase',0,'LemonTree.Automation','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:14:39','2022-11-07 09:14:47','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{806C0B0C-9157-490f-887D-C4E577E7C216}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(729,'UseCase',0,'Procloud Server','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:15:07','2022-11-07 09:15:11','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{3689E18F-CDB8-4961-BEE8-177C8AD50A37}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(730,'UseCase',0,'Prolaborate Addin','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:15:30','2022-11-07 09:15:40','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{81F5C2C4-B605-43d9-9CF7-D21062023277}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(731,'UseCase',0,'Polarion Automation for validation','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:12:23','2022-11-07 09:12:35','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{F94EFA10-2FCF-42d0-871F-69E103C20353}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(732,'UseCase',0,'Validate Model',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:17:01','2024-10-10 12:03:43','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{408675F0-3B7C-4b73-B315-E5B350712796}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(733,'UseCase',0,'Integrate External Data','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:18:23','2022-11-07 09:18:31','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{02D5E01D-58DE-4079-B9A9-3E12C8727205}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(734,'UseCase',0,'Codebeamer Integration',NULL,'dsiegl','1.0',unistr('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam\u000d\u000a\u000d\u000aThis is my changes'),157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:12:56','2023-10-18 13:09:07','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{A7207403-EA13-4ba9-9C51-174BE7CA3127}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(735,'UseCase',0,'Polarion Import','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:11:12','2022-11-07 09:11:23','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{EF5BDF30-9DCF-4222-B485-FD3576F6236B}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(736,'UseCase',0,'Codebeamer Export','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:13:07','2022-11-07 09:13:15','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{CDE09A6A-096C-4ee7-8037-E477B1398952}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(737,'Actor',0,'Agent','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:20:28','2022-11-07 09:20:30','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{981A4A98-8E72-411c-8D9C-08F18541E6CE}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(738,'UseCase',0,'EmbeddedEngineer','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:14:54','2022-11-07 09:16:56','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{8E60E7B9-270D-4a48-9150-13922E9DD304}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(739,'UseCase',0,'ARXML Import','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:19:34','2022-11-07 09:19:39','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{7AE65E70-43BE-41e3-A428-9F024D31C58C}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(740,'UseCase',0,'Polarion  Integration','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:10:58','2022-11-07 09:11:29','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{09956023-10FD-4370-8D54-F6EE811EA526}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(741,'UseCase',0,'Polarion Export','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:11:58','2022-11-07 09:12:18','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{6019B78C-8D1C-490e-ACD6-4F137494FC27}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(742,'UseCase',0,'run custom','','dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 09:18:47','2022-11-07 09:18:54','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{682275A9-C87B-47fd-B471-835109634E20}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(746,'UseCase',0,'Generate Code',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 10:00:42','2024-10-10 12:08:10','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{53557AD0-5498-4018-AA8A-60E03F64CF38}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(747,'UseCase',0,'Compare Model',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-07 10:01:27','2024-10-11 17:17:27','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{08686A0F-8F9E-4889-8B3A-6A1F0DF0B1A2}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(922,'Package',0,'SystemArchitecture',NULL,'pkalenda','1.0',NULL,1,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:43:16','2022-11-16 10:43:17','Proposed','0',0,'165',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{88F6B56C-F756-4fe3-9C18-5153CF845ACA}',0,NULL,NULL,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(923,'Class',0,'TrafficLightSystem_modified by Philipp',NULL,'pkalenda','1.0',unistr('This is it!\u000d\u000a\u000d\u000aThis needs be altered!\u000d\u000a\u000d\u000a<font color="#d2691e"><b>Philipp added some changes here.</b></font>'),165,'block',8,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:43:29','2025-02-24 11:38:45','Proposed','0',0,NULL,'Java',NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{FED5756D-E548-48ad-809B-7252829C35D3}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'ConstructID=0;',NULL,NULL);
INSERT INTO t_object VALUES(924,'Class',0,'Main controller',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:43:35','2023-06-23 01:14:12','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{023D17E4-F907-43c2-8F21-E24BF4B2AD48}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(928,'Part',0,NULL,NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:45:37','2022-11-16 10:45:37','Proposed','0',0,'{023D17E4-F907-43c2-8F21-E24BF4B2AD48}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{6961D52D-64E2-446a-9314-C5B1BF9CE4F6}',923,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(930,'Class',0,'Energysource',NULL,'pkalenda','1.0',unistr('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam\u000d\u000aLet''s keep it genric'),165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:45:42','2023-11-29 15:16:17','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(934,'Class',0,'CarTrafficLight Software',NULL,'pkalenda','1.0',unistr('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam\u000d\u000a\u000d\u000aIt think this should be changed\u000d\u000a\u000d\u000aMore text changes coming in'),165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:47:30','2025-03-26 14:40:44','Proposed','0',0,NULL,'Java',NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{6CB1935B-F7CD-4729-8B03-741EF72A6F7D}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(935,'Part',0,NULL,NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 10:47:48','2022-11-16 10:47:48','Proposed','0',0,'{6CB1935B-F7CD-4729-8B03-741EF72A6F7D}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{5545D653-46C3-4fc0-8F21-3A9392F98D01}',924,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(938,'Class',0,'CarTrafficLight45',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:04:02','2024-06-20 13:25:35','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{BE9557DD-906A-408a-A872-2C64C1DF1253}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(939,'Part',0,'green',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:04:13','2022-11-16 11:04:13','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{4A452622-4601-44fe-BDA5-56338080B85F}',938,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(940,'Part',0,'red',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:04:17','2022-11-16 11:04:17','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{0DA3AF90-426B-4f95-9589-380171E8ACD7}',938,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(941,'Part',0,'yellow',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:04:22','2022-11-16 11:04:22','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{B38BB303-1A84-4fe2-AC44-7C6C61EA796C}',938,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(942,'Part',0,NULL,NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:05:15','2022-11-16 11:05:15','Proposed','0',0,'{BE9557DD-906A-408a-A872-2C64C1DF1253}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{8C2FFCBD-DC9E-4cc9-8EE2-49067A15CD3C}',923,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(943,'Part',0,'green',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:06:52','2022-11-16 11:06:52','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,'{4A452622-4601-44fe-BDA5-56338080B85F}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{76558EE7-1494-47d6-9D4B-A45CE3231F7D}',942,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(944,'Part',0,'red',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:06:52','2022-11-16 11:06:52','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,'{0DA3AF90-426B-4f95-9589-380171E8ACD7}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{85F962D5-6453-4f26-AF6A-2067C6D31FCD}',942,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(945,'Part',0,'yellow',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:06:52','2022-11-16 11:06:52','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,'{B38BB303-1A84-4fe2-AC44-7C6C61EA796C}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{4E6EA462-3F9C-42c5-942B-03DF48C34846}',942,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(946,'Part',0,NULL,NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:07:26','2022-11-16 11:07:26','Proposed','0',0,'{6CB1935B-F7CD-4729-8B03-741EF72A6F7D}',NULL,'{5545D653-46C3-4fc0-8F21-3A9392F98D01}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{91D06922-76DD-4756-85C4-FAF4A50518F2}',928,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(948,'Package',0,'SystemArchitecture [{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}]','','','','',9,'MPMS Spec',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:15:43.7248517','2022-11-16 11:15:43.7248472',NULL,'0',0,'166',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{65460cc6-e2e4-64a5-f6dc-38ad4481a7e9}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(949,'Class',0,'{88F6B56C-F756-4fe3-9C18-5153CF845ACA}','','','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',166,'MPMS Model Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:15:43.7399697','2022-11-16 11:15:43.7399605','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{8bab8a9f-e100-b248-7506-ebc331e2cec1}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(950,'Class',0,'{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}','','','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',166,'MPMS Spec Metadata',0,'',0,NULL,-1,0,-1,-1,-1,'2022-11-16 11:15:43.7404161','2022-11-16 11:15:43.740414','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{d94b5d49-9e70-a013-604e-c262b883b42b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1005,'Boundary',0,'Model Based Systems Engineering',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',140,NULL,0,'1',0,NULL,-1,3,-1,-1,-1,'2022-11-30 10:00:32','2022-11-30 10:00:42','Proposed','0',0,'1','1','0',NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{468C8464-8C34-4836-97D2-55C9D33B7A92}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1006,'Boundary',0,'Requirements',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',140,NULL,0,'1',0,NULL,-1,3,-1,-1,-1,'2022-11-30 10:01:02','2022-11-30 10:01:08','Proposed','0',0,'1','1','0',NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{0C01F428-9605-4638-BE78-FCAFE1F6CFB4}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1007,'Boundary',0,'Model Based Software Engineering',NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',140,NULL,0,'1',0,NULL,-1,3,-1,-1,-1,'2022-11-30 10:01:23','2022-11-30 10:01:38','Proposed','0',0,'1','1','0',NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{9A242843-4BC8-4dec-93AB-FF3B0EBE25DD}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1008,'Note',0,NULL,NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',140,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-30 11:35:39','2023-06-21 16:11:17','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{2692F4FF-2AC0-4e02-BC44-BF8C58034CAF}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1009,'Note',0,NULL,NULL,'dsiegl','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',140,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2022-11-30 11:35:47','2022-11-30 11:35:47','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{003572F3-ED19-4baa-9CF6-FAD99BCB2568}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1318,'Package',0,'LT.Connect',NULL,'dsiegl','1.0',NULL,138,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-03-21 20:00:05','2023-03-21 20:00:05','Proposed','0',0,'341',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{B9F97373-2170-4246-8571-ABD30B527AAA}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1461,'Class',0,'WalkersLight',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:11:21','2023-12-14 12:14:38','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{571EB965-0438-470b-A314-5832B3A75D84}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1462,'Part',0,'red',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:15:06','2023-06-23 01:15:25','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{9503D238-8EDD-4368-898B-78300D3CAEDF}',1461,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1463,'Part',0,'green',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:15:08','2023-06-23 01:15:18','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{B935B105-9442-4700-BA2B-3B0AB0601E85}',1461,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1464,'Part',0,NULL,NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:15:30','2023-06-23 01:15:30','Proposed','0',0,'{571EB965-0438-470b-A314-5832B3A75D84}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{12510C7C-0FA6-4c67-9F55-7FE72B287E6D}',923,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1465,'Part',0,'green',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:16:55','2023-06-23 01:16:55','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,'{B935B105-9442-4700-BA2B-3B0AB0601E85}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{4259BBC3-3C39-4d9e-BFD4-E35894CDBE52}',1464,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1466,'Part',0,'red',NULL,'pkalenda','1.0','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',165,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-06-23 01:16:55','2023-06-23 01:16:55','Proposed','0',0,'{88BCD405-A82E-44d8-B3FA-8914C2CF557F}',NULL,'{9503D238-8EDD-4368-898B-78300D3CAEDF}',NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{DF5F8647-D4D5-4d85-9088-AD04097DA47C}',1464,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1504,'Class',0,'Requirements','','','1.0','',166,'MPMS Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2023-09-27 01:43:06.0004882','2023-09-27 01:43:06.0004836','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{4528f0b7-fa9c-999e-87dc-2cc021fdb5e8}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1505,'Package',0,'Requirements [{cc472323-774f-4f9b-608e-be83e3a4bae2}]','','','','',9,'MPMS Spec',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-09-27 01:43:06.017364','2023-09-27 01:43:06.0173608',NULL,'0',0,'368',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{82789660-0f01-66a1-4553-5f09bb604a78}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1506,'Class',0,'{AB2F52EB-8C65-4a4c-BDBC-E77DB114C1C8}','','','1.0','',368,'MPMS Model Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2023-09-27 01:43:06.0561811','2023-09-27 01:43:06.0561781','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{fb805dc7-8b06-c725-518e-23a3e8958a78}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1507,'Class',0,'SystemArchitecture','','','1.0','',368,'MPMS Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2023-09-27 01:43:06.0567183','2023-09-27 01:43:06.0567171','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{d61c7ca4-0b5e-dfbf-8624-758fa589a8f3}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1508,'Class',0,'{cc472323-774f-4f9b-608e-be83e3a4bae2}','','','1.0','',368,'MPMS Spec Metadata',0,'',0,NULL,-1,0,-1,-1,-1,'2023-09-27 01:43:06.0571192','2023-09-27 01:43:06.0571182','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{87d30233-3ba7-38b2-bd07-8c72a81e998f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1514,'Requirement',0,'Synchronized light switching between car and pedestrian traffic light','','','','There shall be a component which is responsible for synchronizing the indicated lights between various active traffic lights (pedestrian and car).',341,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-23 20:03:17.6281812','2023-10-23 20:03:17.6281771','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{0c1a02d7-3746-4d6f-bc55-553c486ab86b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1516,'Requirement',0,'Car Traffic Light Configuration',NULL,NULL,NULL,unistr('The car traffic light shall indicate three different colors:<br/>\u000a <br/>\u000a <br/>\u000a* Red<br/>\u000a* Yellow<br/>\u000a* Green<br/>\u000a <br/>\u000aThis requirement needed to be changed.<br/>\u000a <br/>'),341,NULL,0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-12-11 11:32:37','2023-12-11 11:32:37',NULL,'0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{70745f34-33f7-cdea-b9bf-3dca6139531a}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1519,'Requirement',0,'Traffic light system for cars and pedestrians',NULL,NULL,NULL,unistr('The traffic light system shall control two kind of lights:<br/>\u000a <br/>\u000a <br/>\u000a* for pedestrians (2 lights)<br/>\u000a* for cars (3 lights)<br/>\u000a <br/>\u000aThis is key! Wir höhren nie auf.<br/>\u000a <br/>\u000aTEXT ÄNDERUNG'),341,NULL,0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-23 20:03:17.640766','2024-04-30 10:11:14',NULL,'0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{63d33eff-4698-cc53-1d33-3e5d0c02764c}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1526,'Package',0,'Requirement',NULL,'dsiegl','1.0',NULL,373,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:14:45','2023-10-31 10:14:52','Proposed','0',0,'375',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{83EFE3B8-5A30-472e-8F09-1C644BF8252F}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1527,'Package',0,'LT.Connect.Salt',NULL,'dsiegl','1.0',NULL,375,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:15:33','2023-10-31 10:15:33','Proposed','0',0,'376',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{E362C698-202B-4cc1-9861-BDAFAC0D6389}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1529,'Package',0,'Trace',NULL,'dsiegl','1.0',NULL,373,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:16:04','2023-10-31 10:16:08','Proposed','0',0,'378',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{70FA894D-DD42-4aa9-B43C-586BBC0070E3}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1530,'Package',0,'Trace',NULL,'dsiegl','1.0',NULL,378,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:17:13','2023-10-31 10:17:13','Proposed','0',0,'379',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{FB567CC3-3231-438a-B5BD-D43D0C03B5DA}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1534,'Package',0,'Trace [{7c125bb0-048c-9a33-1b8c-61d29b2e6d25}]','','','','',9,'MPMS Spec',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:20:43.4338228','2023-10-31 10:20:43.4338171',NULL,'0',0,'381',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{85cee827-0063-a24a-2b72-8c03835841cb}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1535,'Class',0,'{7c125bb0-048c-9a33-1b8c-61d29b2e6d25}','','','1.0','',381,'MPMS Spec Metadata',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:20:43.4519184','2023-10-31 10:20:43.4519145','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{095fff78-53e1-a470-71b6-8fd1f254c7fd}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1536,'Class',0,'{FB567CC3-3231-438a-B5BD-D43D0C03B5DA}','','','1.0','',381,'MPMS Model Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:20:43.4546037','2023-10-31 10:20:43.4546','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{66f76c4f-27e9-5320-fa09-c723ea101a74}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1537,'Package',0,'PolarionImport [{bce13ca7-48c1-ce39-776a-579caab6ad5d}]','','','','',9,'MPMS Spec',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:21:00.4003986','2023-10-31 10:21:00.4003945',NULL,'0',0,'382',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{38a81e41-5f41-23f7-230e-8824931a9982}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1538,'Class',0,'{bce13ca7-48c1-ce39-776a-579caab6ad5d}','','','1.0','',382,'MPMS Spec Metadata',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:21:00.4270655','2023-10-31 10:21:00.4270619','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{5c17c1c3-6e81-0007-d70a-48f83545886a}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1539,'Class',0,'{E362C698-202B-4cc1-9861-BDAFAC0D6389}','','','1.0','',382,'MPMS Model Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-31 10:21:00.4275747','2023-10-31 10:21:00.4275731','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{d30e0c91-a973-a2ca-c79b-851036a9a206}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1545,'Requirement',0,'Demo Requirement','','','','THis is changed pls fix the model',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3556721','2023-10-31 14:00:44.3556633','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{8120b0b1-03f2-645b-5f12-e45981864549}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1546,'Requirement',0,'Traffic light system for cars and pedestrians','','','','<p>The traffic light system shall control two kind of lights:<br/><br/><br/>* for pedestrians (2 lights)<br/>* for cars (3 lights)<br/><br/>This is key!<br/><br/></p>',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3665426','2023-10-31 14:00:44.3665347','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{700b92f2-5b44-4cf3-24bf-a5fed43df7d3}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1547,'Requirement',0,'Pedestrian Light Configuration','','','','<p>The pedestrian traffic light shall indicate two colors:<br/><br/><br/>* Red<br/>* Green<br/><br/>For the Austrian market it shall also be able to &quot;blink&quot; green!<br/><br/>This is the key feature of our new System<br/></p>',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3685995','2023-10-31 14:00:44.3685915','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{08a34002-6ecb-8276-69f3-f5748b6ea39b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1548,'Requirement',0,'Synchronized light switching between car and pedestrian traffic light','','','','There shall be a component which is responsible for synchronizing the indicated lights between various active traffic lights (pedestrian and car).',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3713521','2023-10-31 14:00:44.3713449','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{e5e9fc76-f96c-f002-bb86-b92e76a3d7fd}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1549,'Requirement',0,'Red time for cars','','','','The red time for cars shall be 7 seconds.',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3738571','2023-10-31 14:00:44.3738492','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{c4592863-345e-e6b8-0e89-d2c8b708a989}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1550,'Requirement',0,'Green time for cars','','','',unistr('The green time for cars shall be 2 seconds.\u000a\u000a'),376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3757471','2023-10-31 14:00:44.37574','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{14086c2a-f295-4351-0fb0-0c61c5982550}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1551,'Requirement',0,'Car Traffic Light Configuration','','','',unistr('The car traffic light shall indicate three different colors:\u000a\u000a\u000a* Red\u000a* Yellow\u000a* Green\u000a\u000a'),376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3777066','2023-10-31 14:00:44.3776989','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{03fe3fa0-ce96-8a52-fbd5-1c916bf99318}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1552,'Requirement',0,'Pedestrian light times depending on car light times','','','','The time for pedestrians to walk or wait shall depend on the time that the car traffic light is indicating red or green.',376,'',0,NULL,0,NULL,-1,0,-1,-1,-1,'2023-10-31 14:00:44.3797733','2023-10-31 14:00:44.3797529','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{916b6d12-2f80-9e1e-6a93-085d8ae97c0b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1562,'Note',0,'','','dsiegl','1.0','Some Change',140,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-12-13 18:20:25','2023-12-13 18:20:31','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{82FC4D3A-BF4B-4f23-BCD9-647932F81B56}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1563,'Note',0,'','','dsiegl','1.0','This is new capability',140,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-12-14 12:14:06','2023-12-14 12:14:17','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{CF55159D-4208-4f8e-8E57-E680D9809EC7}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1564,'Requirement',0,'Three stage lighting for pedestrians','','','','The pedestrian light indication shall include an orange light between green and red.',341,'',0,'',0,NULL,-1,0,-1,-1,-1,'2023-12-11 13:33:53','2023-12-11 13:33:53','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{1400357c-ce15-52dc-66eb-7111170f756a}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1565,'Class',0,'Casing','','pkalenda','1.0','',165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-01 15:54:27','2024-02-01 15:54:33','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{3AC8AB61-E8D0-4a11-8D19-C1A5C0CE7B2E}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1566,'Part',0,'','','pkalenda','1.0','',165,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-01 15:54:41','2024-02-01 15:54:41','Proposed','0',0,'{3AC8AB61-E8D0-4a11-8D19-C1A5C0CE7B2E}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{2A72CE0F-03EC-4de4-857C-21BE46845E70}',923,NULL,NULL,NULL,0,0,0,0,NULL,NULL,'','','',NULL);
INSERT INTO t_object VALUES(1569,'Class',0,'RTG','','dsiegl','1.0','',165,'block',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-11-29 10:57:13','2023-11-29 10:58:35','Proposed','0',0,NULL,'Java',NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{4FBD0E7C-2883-4ad6-A3B4-49FF1F7C48DD}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1570,'Part',0,'','','dsiegl','1.0','',165,'',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-11-29 10:58:46','2023-11-29 10:58:46','Proposed','0',0,'{4FBD0E7C-2883-4ad6-A3B4-49FF1F7C48DD}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{20EAE8D0-9071-4d0d-8CBC-763C528D748C}',930,NULL,NULL,NULL,0,0,0,0,NULL,NULL,'','','',NULL);
INSERT INTO t_object VALUES(1617,'Package',0,'LL Project','','dsiegl','1.0','',138,'Project',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-04-22 11:22:36','2024-04-22 11:22:36','Proposed','0',0,'387',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{B08ECE39-3D2C-433f-8960-F5E8F44D07C3}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1618,'Package',0,'UnitTest created ComponentInRootItem @14.02.2024 14:26:21','','dsiegl','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 14:26:21'),387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-14 14:26:22','2024-02-14 14:26:22',NULL,'0',0,'388',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{d4cd2d58-3526-7ce4-4f5c-9665f874e304}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1619,'Package',0,'LLExport','','dsiegl','','',387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-01-25 08:39:41','2024-01-25 08:39:41',NULL,'0',0,'389',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{8f010db8-3261-8e41-d6a1-06ddaeabca9c}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1620,'Package',0,'UnitTest created ComponentInRootItem @14.02.2024 10:17:55','','dsiegl','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 10:17:55'),387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-14 10:17:56','2024-02-14 10:17:56',NULL,'0',0,'390',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{74f865c3-6dde-ddde-1617-cb721796fd44}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1621,'Package',0,'Walking Squirrel System','','dsiegl','','',387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2023-11-23 15:31:19','2023-11-23 15:31:50',NULL,'0',0,'391',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{403d091c-262a-4841-1051-546b2023d7fc}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1622,'Package',0,'ExportFromEA','','dsiegl','','',387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-01-31 09:51:49','2024-01-31 09:51:49',NULL,'0',0,'392',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{7feb9f4a-dbcc-d777-a364-2f1b38f82c03}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1623,'Package',0,'UnitTest created ComponentInRootItem @13.02.2024 16:15:36','','dsiegl','',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:15:36'),387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-13 16:15:37','2024-02-13 16:15:37',NULL,'0',0,'393',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{a1557144-39c8-1a49-a269-fd608b5b3a91}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1624,'Package',0,'Flying Squirrel System','','cary','','',387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:19:10','2022-09-06 13:19:10',NULL,'0',0,'394',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{4c79d980-3bd8-92ba-aa25-a66112801b61}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1625,'Package',0,'Obsolete Items','','dsiegl','','',387,'CMP',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-01 09:38:11','2024-02-01 09:38:11',NULL,'0',0,'395',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{96285456-a8a3-1dbb-cabb-19b5f0993155}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1626,'Requirement',0,'ClassX','','','','',392,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-01-31 09:51:55','2024-02-08 08:33:25','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{4313a910-ea89-9c52-cf2a-cea9dceaa05e}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1627,'Requirement',0,'ClassY','','','','',392,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-01-31 09:52:01','2024-02-08 08:34:00','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{b1996dc4-444c-4edf-acd3-c13dbaad3c4b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1628,'Package',0,'System Requirements','','dsiegl','','',392,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-02-13 09:09:02','2024-02-13 09:09:02',NULL,'0',0,'396',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{fdbb311b-993d-49f3-f89e-be4268cd766e}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1629,'Package',0,'System Requirements','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:19:37','2022-09-06 13:19:37',NULL,'0',0,'397',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{c43a6c49-5576-2d3f-a8d8-cf5749092d02}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1630,'Package',0,'Architectural Elements','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:19:26','2022-09-06 13:19:26',NULL,'0',0,'398',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{f6b570e4-946a-928d-7e7e-2c7bfd0a904a}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1631,'Package',0,'Defects','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:21:25','2022-09-06 13:21:25',NULL,'0',0,'399',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{a2a29df1-52a4-f4b2-d989-5eebda30f3af}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1632,'Package',0,'Stakeholder Requirements','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:18:27','2022-09-06 13:18:27',NULL,'0',0,'400',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{210e2ee0-4a13-3243-1a51-d679bbe7ee10}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1633,'Package',0,'System Verification Test Cases','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:20:04','2022-09-06 13:20:04',NULL,'0',0,'401',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{3523213a-2193-8def-a717-f761624fad8e}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1634,'Package',0,'Subsystem Requirements','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:19:46','2022-09-06 13:19:46',NULL,'0',0,'402',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{494e3170-0c78-1daa-2468-bff4163c02a4}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1635,'Package',0,'Change Requests','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:21:11','2022-09-06 13:21:11',NULL,'0',0,'403',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{53552ea6-2a46-2a9d-5f22-e8cb7e51e1f2}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1636,'Package',0,'User Stories','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:20:40','2022-09-06 13:20:40',NULL,'0',0,'404',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{66bc4614-4a7e-c534-27fa-e8262afa1c8c}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1637,'Package',0,'Behaviors','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:20:54','2022-09-06 13:20:54',NULL,'0',0,'405',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{7082c07b-fb71-bf57-682b-41840489c4ab}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1638,'Package',0,'Subsystem Verification Test Cases','','cary','','',394,'SET',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:20:27','2022-09-06 13:20:27',NULL,'0',0,'406',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{427a365c-7dda-3f88-8516-8969fc1b2f8b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1639,'Package',0,'System Requirements Inside a Folder','','cary','','',397,'FLD',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:33:07','2022-09-06 13:33:07',NULL,'0',0,'407',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{418e41da-c8f2-1dfd-2cdc-a5ca91ff1bec}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1640,'Package',0,'Functional Architecture','','cary','','',398,'FLD',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:21:55','2022-09-06 13:21:55',NULL,'0',0,'408',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{7546b482-3d35-4dd0-53be-2de1478ffce6}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1641,'Requirement',0,'UnitTest created TextItem @13.02.2024 16:14:08','','','',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:14:08'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-13 16:14:09','2024-02-13 16:14:09','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{c8e3d602-944c-a537-fb6f-b632c33c1ecb}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1642,'Requirement',0,'Stake 1','','','','',400,'STK',0,'',0,NULL,-1,0,-1,-1,-1,'2024-04-18 14:37:56','2024-04-18 14:37:56','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{f345c23c-00df-c0f3-3fa2-30c5a065afa1}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1643,'Requirement',0,'UnitTest created RequirementItem @13.11.2023 16:24:44','','','',unistr('UnitTest\u000d\u000acreated Description @13.11.2023 16:24:44'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2023-11-13 16:24:45','2023-11-13 16:24:45','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{7ab9ed9e-30a0-000b-2d25-692fcfb28eef}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1644,'Requirement',0,'Introduction Changed','','','',unistr('<p>This is background material. This is not a stakeholder requirement. Text items are used to provide document information and structure.</p>\u000a\u000a<p>Changed</p>\u000a'),400,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:30:14','2023-05-25 12:18:38','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{5716373c-4b9a-00e2-8c1c-59e35436b73b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1645,'Requirement',0,'UnitTest created RequirementItem @13.02.2024 16:14:05','','','',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:14:05'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-13 16:14:06','2024-02-13 16:14:06','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{b78080bc-53b5-4fe2-523f-421e1f1d913f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1646,'Package',0,'Folder of Requirements','','cary','','Folders are like containers and also function as section headings.',400,'FLD',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:30:57','2022-09-06 13:30:57',NULL,'0',0,'409',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{b0cd4ea7-0928-328c-9498-686e6e55da34}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1647,'Requirement',0,'UnitTest created CreateNewTextItemWithoutDescription @14.02.2024 14:26:09','','','','lalelu @14.02.2024 14:26:12',397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 14:26:10','2024-02-14 14:26:13','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{17c1e2da-11e3-09ab-4cad-8049f4d7d9da}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1648,'Requirement',0,'UnitTest created CreateNewTextItemWithoutDescription @14.02.2024 12:40:55','','','','lalelu @14.02.2024 12:41:09',397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 12:40:56','2024-02-14 12:41:13','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{99dcf550-6808-9dd4-0393-2222e0471d00}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1649,'Requirement',0,'UnitTest created TextItem @13.02.2024 16:15:42','','','',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:15:42'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-13 16:15:43','2024-02-13 16:15:43','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{0eb5eebf-febd-e1e1-f34f-9d663f7002a0}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1650,'Requirement',0,'More Requirments 3','','','','',397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-07 20:49:48','2023-05-25 12:20:33','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{04d2235c-126a-613b-162d-3a423cb109c1}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1651,'Requirement',0,'Introduction','','','',unistr('<p>Another intro</p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<p>And an image:</p>\u000a\u000a<p><img alt="see attached image: c64.jpg" src="https://jama-cbjd.jamacloud.com/attachment/4814/c64.jpg" /></p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<p>And a second image, but resized (smaller):</p>\u000a\u000a<p><img alt="see attached image: Atari.png" height="248" src="https://jama-cbjd.jamacloud.com/attachment/4837/Atari.png" width="189" /></p>\u000a'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:32:48','2024-02-06 13:00:37','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{4db2efee-f956-3607-2278-b9f97c1bbfd9}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1652,'Requirement',0,'UnitTest created RequirementItem @13.11.2023 12:22:29','','','',unistr('UnitTest\u000d\u000acreated Description @13.11.2023 12:22:29'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2023-11-13 12:22:30','2023-11-13 12:22:30','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{be02e17c-92c8-66a2-501d-b99a127ea55a}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1653,'Requirement',0,'UnitTest created TextItem @14.02.2024 10:18:01','','','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 10:18:01'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 10:18:02','2024-02-14 10:18:02','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{af9f56c3-1346-c026-ee20-6a036017eec0}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1654,'Requirement',0,'UnitTest created RequirementItem @13.02.2024 16:15:39','','','',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:15:39'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-13 16:15:40','2024-02-13 16:15:40','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{f51194c4-7cb9-3a93-98fd-892d4dec639b}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1655,'Requirement',0,'UnitTest created TextItem @14.02.2024 14:26:26','','','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 14:26:26'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 14:26:27','2024-02-14 14:26:27','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{459c8bef-a73d-c1f8-63ff-563139bb3746}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1656,'Requirement',0,'UnitTest created TextItem @13.11.2023 12:22:31','','','',unistr('UnitTest\u000d\u000acreated Description @13.11.2023 12:22:31'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2023-11-13 12:22:32','2023-11-13 12:22:32','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{431292bd-4caa-0423-71f2-221d98e53521}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1657,'Requirement',0,'UnitTest created RequirementItem @14.02.2024 14:26:23','','','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 14:26:23'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 14:26:24','2024-02-14 14:26:24','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{e605b2a2-dd06-e17a-8826-f17d87035533}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1658,'Requirement',0,'UnitTest created RequirementItem @14.02.2024 10:17:58','','','',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 10:17:58'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 10:17:59','2024-02-14 10:17:59','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{02f6aa42-f346-af50-5fed-79ccff474b5f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1659,'Requirement',0,'UnitTest created TextItem @13.11.2023 16:24:46','','','',unistr('UnitTest\u000d\u000acreated Description @13.11.2023 16:24:46'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2023-11-13 16:24:47','2023-11-13 16:24:47','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{1fb96379-dbbd-f4e3-58c9-3f6ef0b03e0f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1660,'Requirement',0,'UnitTest created Item @12.10.2023 12:44:20','','','',unistr('UnitTest\u000d\u000acreated Description @12.10.2023 12:44:20'),397,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-12 12:44:22','2023-10-12 12:44:22','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{47b2ab3b-b047-9e85-65eb-5e98e9ba72b8}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1661,'Requirement',0,'UnitTest created RequirementItem @16.10.2023 11:37:37','','','',unistr('UnitTest\u000d\u000acreated Description @16.10.2023 11:37:37'),397,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2023-10-16 11:37:39','2023-10-16 11:37:39','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{1cf7e07e-5b80-0ec8-5995-674436122ee8}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1662,'Package',0,'Physical Architecture','','cary','','',398,'FLD',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:21:43','2022-09-06 13:21:43',NULL,'0',0,'410',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{c988efff-4ab8-1038-3dbc-c78c97de3031}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1663,'Package',0,'System-Subsystem Architecture','','cary','','',398,'FLD',0,'1',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:25:34','2022-09-06 13:25:34',NULL,'0',0,'411',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{7d2eb185-7360-9ffc-c736-dac12c16c282}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1664,'Requirement',0,'Born with wings','','','',unistr('<p>The willing squirrels must be born with wings.</p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<p>Can''t it have feet?</p>\u000a'),407,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:36:12','2024-04-22 11:26:46','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{ad8a2aa0-82bb-30da-3053-e70be7b235e0}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1665,'Requirement',0,'My Second Requirements','','','',unistr('<p>This is really key, for everything to make sense.</p>\u000a\u000a<p>More details are coming... for sure.</p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<p>MORE FUN</p>\u000a'),407,'SYS',0,'',0,NULL,-1,0,-1,-1,-1,'2024-04-18 12:26:23','2024-04-18 14:34:50','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{37282c81-c296-0bbf-14a7-a3268dc50839}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1666,'Requirement',0,'TestItem to embedd attached image into description','','','','<p><img alt="ExportFromEA;{9F793033-26B5-49d3-9BEC-ED81C3964C9F};06.02.2024 12:06:31" src="https://jama-cbjd.jamacloud.com/attachment/4869/%7B9F793033-26B5-49d3-9BEC-ED81C3964C9F%7D.png" /></p>',407,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2024-02-14 09:50:45','2024-02-14 10:17:45','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{99907b3c-a012-6468-3c14-c4dc6419592f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1667,'Requirement',0,'AB4LL','','','','New Description set @14.02.2024 14:26:34',407,'TXT',0,'',0,NULL,-1,0,-1,-1,-1,'2023-09-18 15:01:37','2024-02-14 14:26:35','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{771ad3ba-3dfd-d8c6-3ef3-1cfbf95847b2}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1668,'Requirement',0,'Flying Squirrel System','','','','',411,'ARCH',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:25:01','2022-09-06 13:26:02','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{2d63b543-1b9c-dda1-a316-48e8908aa57f}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1669,'Requirement',0,'Willing squirrel','','','',unistr('<p>This is a stakeholder requirement. The description field is where the requirement statement should be written. The name field is just a short text.</p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<p><strong>This text can be rich text.</strong></p>\u000a\u000a<p>&nbsp;</p>\u000a\u000a<ul>\u000a\u0009<li>Ears</li>\u000a\u0009<li>Tail</li>\u000a\u0009<li>Wings</li>\u000a</ul>\u000a\u000a<p><img alt="" height="249" src="https://jama-cbjd.jamacloud.com/attachment/4809/image.png" width="286" /></p>\u000a\u000a<p>&nbsp;</p>\u000a'),409,'STK',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:32:19','2022-09-06 13:34:59','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{bf8d6f36-84b9-387d-3135-d2bb7c43e287}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1670,'Requirement',0,'Environment Awareness Subsystem','','','','',411,'ARCH',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:28:20','2022-09-06 13:28:20','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{fb89ed55-30d4-3ede-9dd5-a58fb23acfe8}',1668,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1671,'Requirement',0,'Flight Dynamics Subsystem','','','','',411,'ARCH',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:27:37','2022-09-06 13:27:37','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{50e8834d-3959-c17d-9833-cfe18abaa070}',1668,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1672,'Requirement',0,'Body Processes Subsystem','','','','',411,'ARCH',0,'',0,NULL,-1,0,-1,-1,-1,'2022-09-06 13:28:42','2022-09-06 13:28:42','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{8c0d21c9-fadd-a9ff-95f2-bedb27ef7a6f}',1668,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1879,'Package',0,'DIAGRAMIMAGE',NULL,'dsiegl','1.0',NULL,412,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2024-04-30 17:51:37','2024-05-02 13:31:50','Proposed','0',0,'438',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{9E823DCB-876D-4985-BE1A-2B141BDD120C}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1880,'Class',0,'DIAGRAMIMAGE',NULL,'dsiegl','1.0',NULL,438,'ModelView',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-04-30 17:52:18','2024-04-30 17:52:30','Proposed','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{D8B44F85-AEA2-437c-B122-BFB22CEED5AF}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1889,'Requirement',0,'Integrate with modern version control systems',NULL,'chris','1.0','The system shall integrate with modern version control systems such as Git.',138,'interfaceRequirement',0,'1',0,NULL,-1,0,-1,-1,-1,'2024-10-10 11:31:28','2024-10-10 12:01:56','Proposed','0',0,'Proposed','Medium','Medium',NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{5B29C0B6-DA74-44e9-B7FA-1B3F02063618}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1895,'UseCase',0,'Demonstrate Integration',NULL,'chris','1.0','Some documentation...',157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2024-10-11 17:17:31','2024-10-11 17:42:30','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{833C94A1-F866-4676-8B49-CFD59A09A063}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1897,'Note',0,NULL,NULL,'pkalenda','1.0','New Note here!',140,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2025-02-24 11:31:30','2025-02-24 11:31:41','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{202A8E9A-2583-49ae-8A75-6AB857D50285}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1898,'Actor',0,'Integrator',NULL,'dsiegl','1.0',NULL,157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2025-03-26 14:39:43','2025-07-10 09:12:53','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{A2A5FCD0-7255-40db-B89B-B8047BB665B4}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_object VALUES(1900,'Package',0,'Use Cases [{d3095554-4013-6b8a-8629-b582b167ca1d}]','','','','',9,'MPMS Spec',0,'1',0,NULL,-1,0,-1,-1,-1,'2025-08-01 11:36:59','2025-08-01 11:36:59',NULL,'0',0,'439',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'Public',NULL,NULL,0,'{7812f569-a3c4-54de-5091-08d6754ecee4}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,'',NULL);
INSERT INTO t_object VALUES(1901,'Class',0,'{d3095554-4013-6b8a-8629-b582b167ca1d}','','','1.0','',439,'MPMS Spec Metadata',0,'',0,NULL,-1,0,-1,-1,-1,'2025-08-01 11:36:59','2025-08-01 11:36:59','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{9d6cf570-3eb6-aec3-7891-924cb9dbd163}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1902,'Class',0,'{84586B2D-2C36-4b5a-ACF1-7C4E07B731C0}','','','1.0','',439,'MPMS Model Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2025-08-01 11:36:59','2025-08-01 11:36:59','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{696e4e17-8bc7-d56b-cfeb-e4a4bb27fd45}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1903,'Class',0,'Requirements','','','1.0','',439,'MPMS Dependency',0,'',0,NULL,-1,0,-1,-1,-1,'2025-08-01 11:36:59','2025-08-01 11:36:59','','0',0,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'1.0','Public',NULL,NULL,0,'{df414273-02b0-ca1f-a484-9e14fa418d81}',0,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,'','',NULL);
INSERT INTO t_object VALUES(1904,'Actor',0,'Actor1',NULL,'dsiegl','1.0',NULL,157,NULL,0,'1',0,NULL,-1,0,-1,-1,-1,'2025-08-04 09:23:58','2025-08-04 09:23:58','Proposed','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<none>',NULL,NULL,NULL,'1.0','Public',NULL,NULL,0,'{A52BCDDA-F6CD-4e28-A839-65063697DE13}',0,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
CREATE TABLE t_objectconstraint
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	'Constraint' TEXT NOT NULL COLLATE NOCASE,
	ConstraintType TEXT NOT NULL COLLATE NOCASE,
	Weight REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectconstraint PRIMARY KEY (Object_ID,ConstraintType,'Constraint')
);
CREATE TABLE t_objecteffort
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Effort TEXT NOT NULL COLLATE NOCASE,
	EffortType TEXT NULL COLLATE NOCASE,
	EValue REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objecteffort PRIMARY KEY (Object_ID,Effort)
);
CREATE TABLE t_objectfiles
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	FileName TEXT NOT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Note TEXT NULL COLLATE NOCASE,
	FileSize TEXT NULL COLLATE NOCASE,
	FileDate TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectfiles PRIMARY KEY (Object_ID,FileName)
);
CREATE TABLE t_objectmetrics
(
	Object_ID INTEGER NOT NULL DEFAULT 0,	-- Object metric applies to
	Metric TEXT NOT NULL COLLATE NOCASE,
	MetricType TEXT NULL COLLATE NOCASE,	-- Metric code
	EValue REAL NULL DEFAULT 1,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectmetrics PRIMARY KEY (Object_ID,Metric)
);
CREATE TABLE t_objectproblems
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Problem TEXT NOT NULL COLLATE NOCASE,
	ProblemType TEXT NOT NULL COLLATE NOCASE,
	DateReported TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	ProblemNotes TEXT NULL COLLATE NOCASE,
	ReportedBy TEXT NULL COLLATE NOCASE,
	ResolvedBy TEXT NULL COLLATE NOCASE,
	DateResolved TEXT NULL COLLATE NOCASE,
	Version TEXT NULL COLLATE NOCASE,
	ResolverNotes TEXT NULL COLLATE NOCASE,
	Priority TEXT NULL COLLATE NOCASE,
	Severity TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectproblems PRIMARY KEY (Object_ID,ProblemType,Problem)
);
CREATE TABLE t_objectproperties
(
	PropertyID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Object_ID INTEGER NULL DEFAULT 0,
	Property TEXT NULL COLLATE NOCASE,
	Value TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE
);
INSERT INTO t_objectproperties VALUES(877,473,'MPMS Configuration.Repository Path','<memo>','bdBdIy9+8MARvQ5eq4ap7WNwHw3hJyNvx0Y1dz+6eNoz2Wk9iBMwayVfxXkx+4VZ78fIu0EVTdJbnxbEiN9vkQ8NqKml/EDZEFYxj+KpMmn3bDCWoksJF/xpNsqWFENQUrytdEwsK5Pk9IK08KA+Gw27MXKIgmlnRO374rhaUgnkoiFDAqqY6NhU0qcbj7V5xrUECEpesWooXHcvX/yf3Dy3MWi7B1pZF5AZbg921XbDgPrSw5/jnBbLriRUHZ0gGHtHGKslRYMYMTsdTP/lBljnEPYuXU6VEvb1/R6tnpMR1/qN9xbIzrCRZkwW3MX9WHzFopQJ+iQj6Jwgd5VQiZe8hqsCkXyJ8Y/eKnA/NGge9vXqYZrzROYdfsAKWpK1HXVN0kNjOBxc5Kv4qEkr/zcHUBJCfRCPkzrpNPK4EPgQYIqzSnKWrrmW+eUd4gdWG2I735YYkbF4In1nKSO50H+Lk1emhuF3bMlSm3CJZrAlYrg6NRs6tH91AIeCnV//z7QNA9ocZSFHNVQpO1S4/Ydz98ggdwkliCIbaNPi3XpCJvFfnPpYHwyTYA5n4nC2QsimfZ37KSt7sqMbIGxncpokL+J2GnRDm118l3oOZ113x2JWcnx5N0GCunlXxzb1PNIal4qhIgwJSODxm6K3JdyXewkOBrg280xPNuJV69N4wv/loYhveMjPgoeI1lx1RSM1hQNXoAYiiCU9zTep/qBUXp4uhb7ktqHphF1tMPHYX8CxFPSwYx1kHVD5+Ram2tuV+UuCoYLEy0fjkOdTwFelDw0rVs1CqAKegjM67D2KQhfQDLFaEkam9jlSa+f2VSFiTQFDFfHa6d51ayj4Awjjtzez50YqT3ywGQrQFo0LQRVO45uzDstsbpospm7atcinttoR2xG0VHScQyCcv4mnCh6AdyUXk6aoal6/4jfsI15SSpsHsHF+ZSO5YpTPYKH4p0DUAWILaRDwwDAsqUYaDd21GS47eHbrbWgV9U7uE7d9AD7SAqwhEmPoMBR1kPRwyDJdVBN7PVnRXbHNhOuZZTW7cAQDNTIrBkZahNQ=','{9fd51a05-46d1-5327-c440-f4f7bf1796ad}');
INSERT INTO t_objectproperties VALUES(2630,923,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-A101-8D0264D6B201}');
INSERT INTO t_objectproperties VALUES(2631,924,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-BD48-182FE427F051}');
INSERT INTO t_objectproperties VALUES(2634,930,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-9578-13BF89921F3F}');
INSERT INTO t_objectproperties VALUES(2635,934,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-AF66-E3BD502D4B4E}');
INSERT INTO t_objectproperties VALUES(2637,938,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-B1B1-86F9EFA42646}');
INSERT INTO t_objectproperties VALUES(2638,948,'MPMS Package GUID','{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}',NULL,'{43893df9-f36d-ef5c-e5d5-08595d2e2811}');
INSERT INTO t_objectproperties VALUES(2995,923,'SysML1.4::unit',NULL,NULL,'{35D3BDB5-0950-44bf-B321-13B0EEF3F2FB}');
INSERT INTO t_objectproperties VALUES(2996,923,'Custom','This is the Value',NULL,'{63309DCE-F3C8-4a64-A850-BFE375762855}');
INSERT INTO t_objectproperties VALUES(3849,948,'LastImportedId','3c3331e31f87aee66a59f55e11765e81c0e3beb0ee73740247f574fb9ff01f28',NULL,'{012d2c0e-52b6-748c-de9d-cb78716bd279}');
INSERT INTO t_objectproperties VALUES(3850,948,'MPMS Configuration.Last Exported Version','A',NULL,'{49cf6e81-bda3-4b73-2496-3017b845a588}');
INSERT INTO t_objectproperties VALUES(4205,1461,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-813C-B5CD5411B743}');
INSERT INTO t_objectproperties VALUES(4340,1505,'MPMS Package GUID','{cc472323-774f-4f9b-608e-be83e3a4bae2}',NULL,'{e0da6608-cc47-50e0-07b7-dca8889acc6b}');
INSERT INTO t_objectproperties VALUES(4346,1514,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{bc278978-2a53-f9a5-b888-ff9d8d66e5f9}');
INSERT INTO t_objectproperties VALUES(4349,1516,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{1c0b2c94-4230-0b97-fb38-3ab749716505}');
INSERT INTO t_objectproperties VALUES(4350,1514,'id','LTC-7',NULL,'{966673ac-1850-0ddc-0a94-c1bd7e9e9d4b}');
INSERT INTO t_objectproperties VALUES(4353,1516,'id','LTC-5',NULL,'{0bc15174-961a-89cb-6e59-a1a4ccb20b69}');
INSERT INTO t_objectproperties VALUES(4354,1514,'priority','Medium',NULL,'{60bf5a27-9e59-8d33-c0af-d560ea0d7b3b}');
INSERT INTO t_objectproperties VALUES(4356,1516,'priority','Medium',NULL,'{3d0e05bd-3aa7-60ba-0fe0-ffb7dbd17978}');
INSERT INTO t_objectproperties VALUES(4357,1514,'resolution',NULL,NULL,'{4a7f7450-d955-18e5-3c5e-da2379c189e0}');
INSERT INTO t_objectproperties VALUES(4360,1516,'resolution',NULL,NULL,'{1d54f127-e741-8d81-0890-9e740132bcef}');
INSERT INTO t_objectproperties VALUES(4361,1514,'severity','Normal',NULL,'{5142f298-06d2-365e-ac10-ba2cdbe2e504}');
INSERT INTO t_objectproperties VALUES(4364,1516,'severity','Normal',NULL,'{a821ddea-0e45-c402-e96a-00172f9a7f50}');
INSERT INTO t_objectproperties VALUES(4366,1514,'status','Open',NULL,'{1aed64ff-0a16-90f0-648e-0655b9f03fb6}');
INSERT INTO t_objectproperties VALUES(4369,1516,'status','Open',NULL,'{af24d7aa-fc24-2d86-8bf3-8b644cf0da71}');
INSERT INTO t_objectproperties VALUES(4371,1514,'uri','subterra:data-service:objects:/default/LT.Connect${WorkItem}LTC-7',NULL,'{cbcd0053-303e-d548-9828-30934bd68e72}');
INSERT INTO t_objectproperties VALUES(4374,1516,'uri','subterra:data-service:objects:/default/LT.Connect${WorkItem}LTC-5',NULL,'{c92aeadc-d41f-fcc8-6e14-c5c18c609ea1}');
INSERT INTO t_objectproperties VALUES(4378,1519,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{f0f8beb4-4938-5a2f-0ff5-68eebf1605f2}');
INSERT INTO t_objectproperties VALUES(4383,1519,'id','LTC-8',NULL,'{d3cb8b96-26e7-7350-df6d-b8419cfd9cf0}');
INSERT INTO t_objectproperties VALUES(4388,1519,'priority','Medium',NULL,'{6ef5afbf-eabd-752e-d844-d514b3215f3b}');
INSERT INTO t_objectproperties VALUES(4392,1519,'resolution',NULL,NULL,'{0ef80049-6503-d3c8-5700-9db8eb91e386}');
INSERT INTO t_objectproperties VALUES(4395,1519,'severity','Normal',NULL,'{680d9fba-fb96-e53b-2838-5d6fcc30d732}');
INSERT INTO t_objectproperties VALUES(4398,1519,'status','Open',NULL,'{7cf7b8e8-b9d2-4802-cdef-cdc9b7421914}');
INSERT INTO t_objectproperties VALUES(4401,1519,'uri','subterra:data-service:objects:/default/LT.Connect${WorkItem}LTC-8',NULL,'{08aa9f9e-a3b2-75d7-02ab-3aa612c2789d}');
INSERT INTO t_objectproperties VALUES(4407,1534,'MPMS Package GUID','{7c125bb0-048c-9a33-1b8c-61d29b2e6d25}',NULL,'{df6abdac-788f-1f9f-760d-756ab76bf508}');
INSERT INTO t_objectproperties VALUES(4408,1537,'MPMS Package GUID','{bce13ca7-48c1-ce39-776a-579caab6ad5d}',NULL,'{b1273301-2be9-b165-af00-707a4cb6ea30}');
INSERT INTO t_objectproperties VALUES(4413,1527,'exportDiagrams','0',NULL,'{7FF31D3B-547E-4fca-A596-7BFE2128449E}');
INSERT INTO t_objectproperties VALUES(4414,1527,'projectId','LT.Connect.Salt',NULL,'{F83945A3-C822-441c-B6F3-56E8A3330D7C}');
INSERT INTO t_objectproperties VALUES(4415,1527,'document',NULL,NULL,'{E9E1079F-2B98-47a2-85AA-52F45707D23F}');
INSERT INTO t_objectproperties VALUES(4416,1527,'direction','ToEa',NULL,'{E1431F5C-FA46-4e1f-BD8D-A89531458DA4}');
INSERT INTO t_objectproperties VALUES(4417,1545,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{d9b95a29-421e-7bdd-5ffa-0f2f07b6ef34}');
INSERT INTO t_objectproperties VALUES(4418,1545,'id','LTCS-1',NULL,'{cae7ae42-b4a7-129a-3912-e4901bebf9ba}');
INSERT INTO t_objectproperties VALUES(4419,1545,'priority','Medium',NULL,'{27634fe1-8f90-9530-82da-3ad8f9f94910}');
INSERT INTO t_objectproperties VALUES(4420,1545,'resolution',NULL,NULL,'{6b8a30f0-1b02-e9ed-22ca-0bdac3858661}');
INSERT INTO t_objectproperties VALUES(4421,1545,'severity','Normal',NULL,'{a9d19ddc-6728-c82b-44b1-c711e09a395a}');
INSERT INTO t_objectproperties VALUES(4422,1545,'status','Open',NULL,'{6f8ce162-25f6-3f31-bebd-bebcb1188b45}');
INSERT INTO t_objectproperties VALUES(4423,1545,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-1',NULL,'{53e4cdb2-83bb-f894-d94b-e7a9991de883}');
INSERT INTO t_objectproperties VALUES(4424,1546,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{d060f967-f9a8-1f51-990c-2aa463cec261}');
INSERT INTO t_objectproperties VALUES(4425,1546,'id','LTCS-2',NULL,'{4d0bc79b-d0bd-5d79-2963-15dcd9637066}');
INSERT INTO t_objectproperties VALUES(4426,1546,'priority','Medium',NULL,'{a3d2cacb-8341-9c4b-d7e6-d35c243b209f}');
INSERT INTO t_objectproperties VALUES(4427,1547,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{7d76c08c-8262-0d77-804f-8d9dce4bbf37}');
INSERT INTO t_objectproperties VALUES(4428,1546,'resolution',NULL,NULL,'{caf2a00d-0b69-b93d-1523-1b4ee5133738}');
INSERT INTO t_objectproperties VALUES(4429,1547,'id','LTCS-4',NULL,'{673247b1-87e9-e02a-2246-8ed1ef459fd7}');
INSERT INTO t_objectproperties VALUES(4430,1546,'severity','Normal',NULL,'{cdce6bd5-932f-0968-b760-900f22ae418a}');
INSERT INTO t_objectproperties VALUES(4431,1547,'priority','Medium',NULL,'{2356f9b5-34eb-fd92-316b-437e83478383}');
INSERT INTO t_objectproperties VALUES(4432,1548,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{8a9d8ef2-98a8-351c-0433-34acdb862e52}');
INSERT INTO t_objectproperties VALUES(4433,1546,'status','Open',NULL,'{3799f522-2e5b-a915-95fc-25b865d093af}');
INSERT INTO t_objectproperties VALUES(4434,1547,'resolution',NULL,NULL,'{10dd2aa8-d603-e0f5-ffbc-837e680841a0}');
INSERT INTO t_objectproperties VALUES(4435,1548,'id','LTCS-3',NULL,'{93f4140b-6c9c-a10e-a214-3ad924f6b91c}');
INSERT INTO t_objectproperties VALUES(4436,1546,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-2',NULL,'{55b779eb-872b-8eb3-a6a4-1a1ff410891c}');
INSERT INTO t_objectproperties VALUES(4437,1547,'severity','Normal',NULL,'{6928759d-3632-c1cf-ddac-e378f49608f3}');
INSERT INTO t_objectproperties VALUES(4438,1548,'priority','Medium',NULL,'{57053617-caba-906f-6261-7e5566c2d49a}');
INSERT INTO t_objectproperties VALUES(4439,1547,'status','Open',NULL,'{fdc08011-ba0b-10e4-9411-0a82050ed26e}');
INSERT INTO t_objectproperties VALUES(4440,1549,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{80167274-e807-446a-ea9d-99797476ded6}');
INSERT INTO t_objectproperties VALUES(4441,1548,'resolution',NULL,NULL,'{e3d15ce1-42c0-0dc1-d0f6-82b4325711b9}');
INSERT INTO t_objectproperties VALUES(4442,1547,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-4',NULL,'{0ee58c5b-942f-ae42-1068-31d3fa3f3d8f}');
INSERT INTO t_objectproperties VALUES(4443,1549,'id','LTCS-6',NULL,'{07c7cfe4-c46c-188b-f815-9b91d091ce4d}');
INSERT INTO t_objectproperties VALUES(4444,1548,'severity','Normal',NULL,'{a2bbf65d-07e6-2f59-4115-c33ab83e70f1}');
INSERT INTO t_objectproperties VALUES(4445,1549,'priority','Medium',NULL,'{199e4f38-de4d-b41e-00b1-b3743efee754}');
INSERT INTO t_objectproperties VALUES(4446,1548,'status','Open',NULL,'{a1068c88-0e29-7dbf-4d00-e85901e55542}');
INSERT INTO t_objectproperties VALUES(4447,1549,'resolution',NULL,NULL,'{81f1a61b-d521-615f-9b11-c8177c870bfb}');
INSERT INTO t_objectproperties VALUES(4448,1548,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-3',NULL,'{dd9bb583-73e1-19c4-aec6-d417d88527a7}');
INSERT INTO t_objectproperties VALUES(4449,1549,'severity','Normal',NULL,'{1a5f5f77-72e2-c076-442a-e3b9a8e2dc0f}');
INSERT INTO t_objectproperties VALUES(4450,1549,'status','Open',NULL,'{4e12ea97-cb90-28f0-0870-55d42bf98107}');
INSERT INTO t_objectproperties VALUES(4451,1549,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-6',NULL,'{1b7f3d37-956b-9fe8-232b-0f69cfe43bc4}');
INSERT INTO t_objectproperties VALUES(4452,1550,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{6165d1c8-6600-36aa-4a2e-3368a98ea860}');
INSERT INTO t_objectproperties VALUES(4453,1550,'id','LTCS-8',NULL,'{d9e13fb9-2021-50c4-6108-b5f5fda08363}');
INSERT INTO t_objectproperties VALUES(4454,1550,'priority','Medium',NULL,'{e44568e9-4044-693e-f0a4-d19560c14607}');
INSERT INTO t_objectproperties VALUES(4455,1550,'resolution',NULL,NULL,'{7b3d6cb8-8298-90c1-e21c-ddb0d10bd6b2}');
INSERT INTO t_objectproperties VALUES(4456,1550,'severity','Normal',NULL,'{c40ff847-10e9-3e18-4793-a546ae95c53a}');
INSERT INTO t_objectproperties VALUES(4457,1550,'status','Open',NULL,'{93916b8a-6fb6-74c8-c449-4dfae02fe0ba}');
INSERT INTO t_objectproperties VALUES(4458,1550,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-8',NULL,'{1d4e3e6c-8650-903f-0941-8b12f7861295}');
INSERT INTO t_objectproperties VALUES(4459,1551,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{a04d992f-3111-58db-70db-7c4bc16579df}');
INSERT INTO t_objectproperties VALUES(4460,1551,'id','LTCS-5',NULL,'{3c21560c-bd4b-326e-19a7-c8d0f7709a99}');
INSERT INTO t_objectproperties VALUES(4461,1551,'priority','Medium',NULL,'{18a82cc5-aa61-bc52-2e8d-bf9791b694e1}');
INSERT INTO t_objectproperties VALUES(4462,1551,'resolution',NULL,NULL,'{7ad53d45-f9c8-8719-70aa-cbf19da785ad}');
INSERT INTO t_objectproperties VALUES(4463,1551,'severity','Normal',NULL,'{ab05e052-0c67-b086-b0b0-5a099e08f897}');
INSERT INTO t_objectproperties VALUES(4464,1551,'status','Open',NULL,'{018e512a-bd81-bc03-acee-555a6c33df60}');
INSERT INTO t_objectproperties VALUES(4465,1551,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-5',NULL,'{4b566733-49d7-0157-1065-23c5c2f4146e}');
INSERT INTO t_objectproperties VALUES(4466,1552,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{b9e1dc0b-b3c8-54e3-2394-57fb91a26575}');
INSERT INTO t_objectproperties VALUES(4467,1552,'id','LTCS-7',NULL,'{eccc40b4-1d3c-bf21-343e-4d9d26dab99e}');
INSERT INTO t_objectproperties VALUES(4468,1552,'priority','Medium',NULL,'{4bef2f9e-98be-5f36-a4b0-453affb74963}');
INSERT INTO t_objectproperties VALUES(4469,1552,'resolution',NULL,NULL,'{5eeabc39-0a09-7067-f090-9e156fa87134}');
INSERT INTO t_objectproperties VALUES(4470,1552,'severity','Normal',NULL,'{32498f05-5643-450d-f676-e6a0cc4006f5}');
INSERT INTO t_objectproperties VALUES(4471,1552,'status','Open',NULL,'{3d79bbb3-f0b5-e44b-47ee-867b40edbaca}');
INSERT INTO t_objectproperties VALUES(4472,1552,'uri','subterra:data-service:objects:/default/LT.Connect.Salt${WorkItem}LTCS-7',NULL,'{3b09d354-97ec-de38-0463-34ce21c8fd9f}');
INSERT INTO t_objectproperties VALUES(4476,1318,'direction','ToEa',NULL,'{7608706D-9D70-4726-9948-D690C3EF196E}');
INSERT INTO t_objectproperties VALUES(4477,1318,'document',NULL,NULL,'{763DEEA8-0600-4c03-B03A-F7FA6A80B7CE}');
INSERT INTO t_objectproperties VALUES(4478,922,'direction','FromEa',NULL,'{5BEBC5D4-A7FE-4c87-8D04-9484966FB559}');
INSERT INTO t_objectproperties VALUES(4479,1318,'exportDiagrams','0',NULL,'{8F9A8EC4-F58A-44fe-8B30-624BF394BA0C}');
INSERT INTO t_objectproperties VALUES(4480,922,'document',NULL,NULL,'{07E49C54-F73A-4ba1-9252-D8A93DE5C952}');
INSERT INTO t_objectproperties VALUES(4481,1318,'projectId','LT.Connect',NULL,'{66FC59CB-2943-481b-AACC-245B85D2F58B}');
INSERT INTO t_objectproperties VALUES(4482,922,'exportDiagrams','1',NULL,'{598FFD10-9A11-46b0-993D-270B8ECE8BE6}');
INSERT INTO t_objectproperties VALUES(4483,922,'lastSync','638378944367573347',NULL,'{F3BF7956-90D6-49e3-B578-E3ED22620A5E}');
INSERT INTO t_objectproperties VALUES(4484,922,'projectId','LT.Connect',NULL,'{B3A0B19A-2D53-4b28-8791-9C35D25BF4A1}');
INSERT INTO t_objectproperties VALUES(4488,1564,'author','0ee265a99e504e639b4fe954739dd14e',NULL,'{3a9214c5-02b8-f85f-5754-4c9f082aee54}');
INSERT INTO t_objectproperties VALUES(4489,1564,'id','LTC-82',NULL,'{ba3afe67-684f-b20d-db8c-afc5244cb0cb}');
INSERT INTO t_objectproperties VALUES(4490,1564,'priority','Medium',NULL,'{b9990b05-00a4-9e81-7e0d-668726906224}');
INSERT INTO t_objectproperties VALUES(4491,1565,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-9652-BCC45C443931}');
INSERT INTO t_objectproperties VALUES(4492,1564,'resolution',NULL,NULL,'{798d29c4-0a4a-26ea-af5a-eb7b1c3c6edd}');
INSERT INTO t_objectproperties VALUES(4493,1564,'severity','Normal',NULL,'{aedde716-2d57-71c0-ca75-7ac6ce8578c5}');
INSERT INTO t_objectproperties VALUES(4494,1564,'status','Open',NULL,'{7852920c-26ca-154c-7be4-5919b9526d33}');
INSERT INTO t_objectproperties VALUES(4495,1564,'uri','subterra:data-service:objects:/default/LT.Connect${WorkItem}LTC-82',NULL,'{5d1263cc-241b-e92f-f9d4-3fdc685bfbd9}');
INSERT INTO t_objectproperties VALUES(4504,1569,'isEncapsulated',NULL,unistr('Values: true,false\u000d\u000a'),'{501B1315-B5D3-0eb5-96D4-35F1A005BA9D}');
INSERT INTO t_objectproperties VALUES(5391,1617,'configuration','<memo>',unistr('<?xml version="1.0" encoding="utf-16"?>\u000d\u000a<map xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xsi:schemaLocation="MappingConfiguration.xsd">\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="Project" />\u000d\u000a      <myumlProperty name="_objectType" value="Package" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::Project" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="id" myuml="::id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="CMP" />\u000d\u000a      <myumlProperty name="_objectType" value="Package" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::CMP" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="::id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="creator" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="SET" />\u000d\u000a      <myumlProperty name="_objectType" value="Package" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::SET" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="::id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="creator" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="FLD" />\u000d\u000a      <myumlProperty name="_objectType" value="Package" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::FLD" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="::id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="creator" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="ARCH" />\u000d\u000a      <myumlProperty name="_objectType" value="Class" />\u000d\u000a      <myumlProperty name="_stereotype" value="EA Specifics 1.0::requirement" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::ARCH" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="SysML1.5::requirement::Id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="created" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="STK" />\u000d\u000a      <myumlProperty name="_objectType" value="Class" />\u000d\u000a      <myumlProperty name="_stereotype" value="EA Specifics 1.0::requirement" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::STK" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="SysML1.5::requirement::Id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="created" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="SYS" />\u000d\u000a      <myumlProperty name="_objectType" value="Class" />\u000d\u000a      <myumlProperty name="_stereotype" value="EA Specifics 1.0::requirement" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::SYS" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="SysML1.5::requirement::Id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="created" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_objectType" value="TXT" />\u000d\u000a      <myumlProperty name="_objectType" value="Class" />\u000d\u000a      <myumlProperty name="_stereotype" value="EA Specifics 1.0::requirement" />\u000d\u000a      <myumlProperty name="_stereotype" value="Jama::TXT" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties>\u000d\u000a      <property external="id" myuml="SysML1.5::requirement::Id" />\u000d\u000a      <property external="key" myuml="::Key" />\u000d\u000a      <property external="uri" myuml="::Uri" />\u000d\u000a      <property external="type" myuml="::Type" />\u000d\u000a      <property external="name" myuml="Name" />\u000d\u000a      <property external="description" myuml="Documentation" />\u000d\u000a      <property external="createdAt" myuml="Element Metadata 1.0::CreatedDate" />\u000d\u000a      <property external="created" myuml="EA Specifics 1.0::Author" />\u000d\u000a      <property external="modifiedAt" myuml="Element Metadata 1.0::ModifiedDate" />\u000d\u000a      <property external="modifier" myuml="::Modifier" />\u000d\u000a    </properties>\u000d\u000a  </mappingRule>\u000d\u000a  <mappingRule>\u000d\u000a    <matchingRule>\u000d\u000a      <externalProperty name="_linkField" value="derivReq" />\u000d\u000a      <myumlProperty name="_objectType" value="Association" />\u000d\u000a    </matchingRule>\u000d\u000a    <properties />\u000d\u000a  </mappingRule>\u000d\u000a</map>'),'{CCDF7E6A-DFDE-4715-8702-C20592341D91}');
INSERT INTO t_objectproperties VALUES(5392,1617,'direction','ToEa',NULL,'{A7B90CBE-8C0C-49d9-8198-09D84C53CEE6}');
INSERT INTO t_objectproperties VALUES(5393,1617,'document','40229',NULL,'{879826CE-3F46-446c-A320-4C17CA3F87B8}');
INSERT INTO t_objectproperties VALUES(5394,1617,'exportDiagrams','0',NULL,'{70EAC610-3E28-4146-8D79-B3285429ADE9}');
INSERT INTO t_objectproperties VALUES(5395,1617,'lastSync','638493820414544096',NULL,'{553F43DC-5A3C-404c-973F-4B5B236A5A00}');
INSERT INTO t_objectproperties VALUES(5396,1617,'projectId','78',NULL,'{CDEB525B-302E-4567-94A3-B35A6AD358F3}');
INSERT INTO t_objectproperties VALUES(5397,1617,'trackerId',NULL,NULL,'{F260A8F5-9961-4b18-90C0-F1F259B772BD}');
INSERT INTO t_objectproperties VALUES(5398,1618,'Key','LL-CMP-22',NULL,'{a591f75b-e854-14d1-2a39-7f2c6745f22a}');
INSERT INTO t_objectproperties VALUES(5399,1618,'Modifier','dsiegl',NULL,'{a51beb12-392d-01f8-312d-e7b043bbe4ae}');
INSERT INTO t_objectproperties VALUES(5400,1618,'Type','items',NULL,'{39b784d4-0907-9942-4634-8489bbfcea9a}');
INSERT INTO t_objectproperties VALUES(5401,1618,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42311?projectId=78',NULL,'{b67acb5a-8aac-0022-0dce-6d002b098e39}');
INSERT INTO t_objectproperties VALUES(5402,1618,'id','42311',NULL,'{f510b6d4-946f-3b58-1a0c-32d077f52baf}');
INSERT INTO t_objectproperties VALUES(5403,1619,'Key','LL-CMP-3',NULL,'{a788c9f6-dc75-9abb-a45a-c49b4a59390f}');
INSERT INTO t_objectproperties VALUES(5404,1619,'Modifier','dsiegl',NULL,'{4d536f9c-f802-937e-342a-5592d3f01f7c}');
INSERT INTO t_objectproperties VALUES(5405,1619,'Type','items',NULL,'{d2f2d864-d34b-a452-9c17-c45051cba855}');
INSERT INTO t_objectproperties VALUES(5406,1619,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42007?projectId=78',NULL,'{01aded80-b7d6-58df-e139-4c8ce989c950}');
INSERT INTO t_objectproperties VALUES(5407,1619,'id','42007',NULL,'{4be82514-458a-b7af-c6a3-afe3be60ccee}');
INSERT INTO t_objectproperties VALUES(5408,1620,'Key','LL-CMP-21',NULL,'{9d07e160-0af0-034a-5353-189c9afc3ddb}');
INSERT INTO t_objectproperties VALUES(5409,1620,'Modifier','dsiegl',NULL,'{366d22c1-7cfb-750a-d126-13ad772e42bc}');
INSERT INTO t_objectproperties VALUES(5410,1620,'Type','items',NULL,'{ee54d6b4-50fc-5b27-c89b-4cc7b2479660}');
INSERT INTO t_objectproperties VALUES(5411,1620,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42251?projectId=78',NULL,'{564cd82e-c3fc-9ed8-7673-b93c8fb8c562}');
INSERT INTO t_objectproperties VALUES(5412,1620,'id','42251',NULL,'{bcb783b9-93c4-c528-e95c-0eb185da3132}');
INSERT INTO t_objectproperties VALUES(5413,1621,'Key','LL-CMP-2',NULL,'{ac2aecea-5ef0-5c37-c3a6-0de4d270a22c}');
INSERT INTO t_objectproperties VALUES(5414,1621,'Modifier','dsiegl',NULL,'{59a34996-e158-fc33-ea34-667ec6e1d453}');
INSERT INTO t_objectproperties VALUES(5415,1621,'Type','items',NULL,'{75f7ab93-e305-3a24-6693-81073238a55f}');
INSERT INTO t_objectproperties VALUES(5416,1621,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40496?projectId=78',NULL,'{8c4eef7b-2d9c-40a0-32af-b9809bf01c4d}');
INSERT INTO t_objectproperties VALUES(5417,1621,'id','40496',NULL,'{f53015b5-d90d-13bf-12d4-e3c2d54d991b}');
INSERT INTO t_objectproperties VALUES(5418,1622,'Key','LL-CMP-10',NULL,'{607a4885-d3df-ac40-9965-c32b31f187ee}');
INSERT INTO t_objectproperties VALUES(5419,1622,'Modifier','dsiegl',NULL,'{860afa19-f359-e3dd-2638-03b66b97ee88}');
INSERT INTO t_objectproperties VALUES(5420,1622,'Type','items',NULL,'{8c7ff2be-459b-6229-ecc2-c6a7994f3028}');
INSERT INTO t_objectproperties VALUES(5421,1622,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42042?projectId=78',NULL,'{88177834-a899-93e7-e82c-33c7e6409dc9}');
INSERT INTO t_objectproperties VALUES(5422,1622,'id','42042',NULL,'{85b8fca8-051c-be7e-0892-e07ae75fad47}');
INSERT INTO t_objectproperties VALUES(5423,1623,'Key','LL-CMP-20',NULL,'{07f43f96-8bea-b4fa-b1a1-9f3dec08b165}');
INSERT INTO t_objectproperties VALUES(5424,1623,'Modifier','dsiegl',NULL,'{25d4b826-bede-3492-465c-28d05beb0427}');
INSERT INTO t_objectproperties VALUES(5425,1623,'Type','items',NULL,'{ce9a1644-6a37-6256-32ba-19e8e57a3b02}');
INSERT INTO t_objectproperties VALUES(5426,1623,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42190?projectId=78',NULL,'{e7e5822b-b0e5-61cb-4491-d3f91ff0b5c4}');
INSERT INTO t_objectproperties VALUES(5427,1623,'id','42190',NULL,'{827c24ee-a4e5-d8a3-a786-637191d05fc5}');
INSERT INTO t_objectproperties VALUES(5428,1624,'Key','LL-CMP-1',NULL,'{315b985c-c203-5330-907f-de94c2d60d96}');
INSERT INTO t_objectproperties VALUES(5429,1624,'Modifier','cary',NULL,'{0078ea26-6bc1-101e-575b-86a99867c216}');
INSERT INTO t_objectproperties VALUES(5430,1624,'Type','items',NULL,'{70696e8a-6efb-effd-bc7f-2b3549559c92}');
INSERT INTO t_objectproperties VALUES(5431,1624,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40229?projectId=78',NULL,'{64ec3960-3657-0468-a2bf-cd652abf5b2f}');
INSERT INTO t_objectproperties VALUES(5432,1624,'id','40229',NULL,'{c706ace4-d0ab-72cc-7511-d78913def045}');
INSERT INTO t_objectproperties VALUES(5433,1625,'Key','LL-CMP-11',NULL,'{84afd73b-4246-b358-a461-20627f159f6e}');
INSERT INTO t_objectproperties VALUES(5434,1625,'Modifier','dsiegl',NULL,'{1f9f078e-adf9-8443-1150-c0139ebe8d83}');
INSERT INTO t_objectproperties VALUES(5435,1625,'Type','items',NULL,'{08dc8fb8-3bdd-262f-797a-527dadd4dad9}');
INSERT INTO t_objectproperties VALUES(5436,1625,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42046?projectId=78',NULL,'{c1b27430-e2bd-565a-0a7f-82e18efdefc1}');
INSERT INTO t_objectproperties VALUES(5437,1625,'id','42046',NULL,'{dd70f20e-5eec-dd8d-2c0b-a63ed7e20a63}');
INSERT INTO t_objectproperties VALUES(5438,1626,'Id','42043',NULL,'{6e558ff9-a222-e7ec-8677-4676e864943c}');
INSERT INTO t_objectproperties VALUES(5439,1626,'Key','LL-TXT-35',NULL,'{60adca09-25ff-74f6-cb45-3d8f2cb84877}');
INSERT INTO t_objectproperties VALUES(5440,1626,'Modifier','dsiegl',NULL,'{3ee5d453-0433-485c-d96d-e44a6406c4b7}');
INSERT INTO t_objectproperties VALUES(5441,1626,'Type','items',NULL,'{5f8b0327-d567-d74b-e749-473f653d055d}');
INSERT INTO t_objectproperties VALUES(5442,1626,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42043?projectId=78',NULL,'{5d2ffbd0-83fd-9d00-bdc5-b8a02599b209}');
INSERT INTO t_objectproperties VALUES(5443,1627,'Id','42045',NULL,'{02d67f79-af95-cf58-fa8e-fee1325a8022}');
INSERT INTO t_objectproperties VALUES(5444,1627,'Key','LL-TXT-37',NULL,'{b59f4654-0a81-47af-759a-d5b5acb358d5}');
INSERT INTO t_objectproperties VALUES(5445,1627,'Modifier','dsiegl',NULL,'{714c17f8-a551-3692-c6a5-8debd79cc57d}');
INSERT INTO t_objectproperties VALUES(5446,1627,'Type','items',NULL,'{9e3cdc2e-51c0-b4d1-820a-1ac86879e90e}');
INSERT INTO t_objectproperties VALUES(5447,1627,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42045?projectId=78',NULL,'{216535c3-614c-123b-93ab-8939ed5c0471}');
INSERT INTO t_objectproperties VALUES(5448,1628,'Key','LL-SET-11',NULL,'{15f3acd8-dbd9-684f-5b96-8c7c46721a04}');
INSERT INTO t_objectproperties VALUES(5449,1628,'Modifier','dsiegl',NULL,'{39e0e118-cd61-22a1-9d1b-842a7ca41ee7}');
INSERT INTO t_objectproperties VALUES(5450,1628,'Type','items',NULL,'{b7383805-456d-afe2-8d73-1a4bd04e669a}');
INSERT INTO t_objectproperties VALUES(5451,1628,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/42087?projectId=78',NULL,'{24577c86-56f9-7603-f6e6-8cda89107b34}');
INSERT INTO t_objectproperties VALUES(5452,1628,'id','42087',NULL,'{11b262c7-0061-14a9-96e2-7c0284afded9}');
INSERT INTO t_objectproperties VALUES(5453,1629,'Key','LL-SET-3',NULL,'{6aec94c5-18b8-caaf-649a-57ecbce21b42}');
INSERT INTO t_objectproperties VALUES(5454,1629,'Modifier','cary',NULL,'{1b01f7f0-a9f8-b61a-6745-860237c516d3}');
INSERT INTO t_objectproperties VALUES(5455,1629,'Type','items',NULL,'{ef7aa8ef-aadf-37ab-ded4-2095da8c95bb}');
INSERT INTO t_objectproperties VALUES(5456,1629,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40231?projectId=78',NULL,'{6eb3314a-3819-42b1-c828-af79047e986f}');
INSERT INTO t_objectproperties VALUES(5457,1629,'id','40231',NULL,'{84376244-53df-e76c-69ae-ca054e65a00c}');
INSERT INTO t_objectproperties VALUES(5458,1630,'Key','LL-SET-2',NULL,'{2d9d1d95-b715-b3ae-cdb4-253924455326}');
INSERT INTO t_objectproperties VALUES(5459,1630,'Modifier','cary',NULL,'{3fdb98be-52fc-15bc-2297-dedbe9ac519d}');
INSERT INTO t_objectproperties VALUES(5460,1630,'Type','items',NULL,'{eab3aac0-dc2f-c18e-c9c1-0a9d3d32222a}');
INSERT INTO t_objectproperties VALUES(5461,1630,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40230?projectId=78',NULL,'{af2a4c44-6c97-7581-41b2-b110e5d1d9c6}');
INSERT INTO t_objectproperties VALUES(5462,1630,'id','40230',NULL,'{d36d764e-7559-860e-d60a-8b6d38613328}');
INSERT INTO t_objectproperties VALUES(5463,1631,'Key','LL-SET-10',NULL,'{f51c1a6a-c491-1307-a8e9-1780ef505bc8}');
INSERT INTO t_objectproperties VALUES(5464,1631,'Modifier','cary',NULL,'{62adefde-ffd4-de54-36fd-50c3fd1709c1}');
INSERT INTO t_objectproperties VALUES(5465,1631,'Type','items',NULL,'{898aa3ca-cc5e-c817-c844-a76880e9ff01}');
INSERT INTO t_objectproperties VALUES(5466,1631,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40238?projectId=78',NULL,'{793caf0e-8ac2-06dc-805b-ffa405dfd587}');
INSERT INTO t_objectproperties VALUES(5467,1631,'id','40238',NULL,'{4cc4b80d-c4ed-48e0-8cb2-802120f77b39}');
INSERT INTO t_objectproperties VALUES(5468,1632,'Key','LL-SET-1',NULL,'{b312d5d8-40f3-577f-3251-50be16365073}');
INSERT INTO t_objectproperties VALUES(5469,1632,'Modifier','cary',NULL,'{f489c892-b5d6-5ad5-10c6-5b49c2086527}');
INSERT INTO t_objectproperties VALUES(5470,1632,'Type','items',NULL,'{87b3400c-08ba-fd50-80db-76448ad812a4}');
INSERT INTO t_objectproperties VALUES(5471,1632,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40228?projectId=78',NULL,'{5c115095-9f07-ee91-bd9e-bd7b272a0559}');
INSERT INTO t_objectproperties VALUES(5472,1632,'id','40228',NULL,'{4330e946-4fcb-fc33-1fa1-20b6059cd6fc}');
INSERT INTO t_objectproperties VALUES(5473,1633,'Key','LL-SET-5',NULL,'{279c5e38-65ea-b814-f26c-7b6765fd38a6}');
INSERT INTO t_objectproperties VALUES(5474,1633,'Modifier','cary',NULL,'{be873589-432a-138a-1ce0-8204d484b65b}');
INSERT INTO t_objectproperties VALUES(5475,1633,'Type','items',NULL,'{f04e5251-59f4-ad62-5f4a-3754467aa018}');
INSERT INTO t_objectproperties VALUES(5476,1633,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40233?projectId=78',NULL,'{3fa5f57f-2776-bb7a-33b5-8ae1417be3e4}');
INSERT INTO t_objectproperties VALUES(5477,1633,'id','40233',NULL,'{3e642e92-7daa-ed02-caf8-a4dacfa69b18}');
INSERT INTO t_objectproperties VALUES(5478,1634,'Key','LL-SET-4',NULL,'{b2d71ffd-ec3f-6952-7c21-87ae8c4bbdac}');
INSERT INTO t_objectproperties VALUES(5479,1634,'Modifier','cary',NULL,'{168ffa04-fd61-2412-2b74-8e6e77e53d60}');
INSERT INTO t_objectproperties VALUES(5480,1634,'Type','items',NULL,'{98f10663-97c4-c8e3-50c9-3bfe9f20c81b}');
INSERT INTO t_objectproperties VALUES(5481,1634,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40232?projectId=78',NULL,'{88cae6b1-c201-4b87-07a0-4deeea1b3c68}');
INSERT INTO t_objectproperties VALUES(5482,1634,'id','40232',NULL,'{f5aba87d-9f1d-5214-4b24-de30489fa639}');
INSERT INTO t_objectproperties VALUES(5483,1635,'Key','LL-SET-9',NULL,'{64e690de-f35a-4885-5dc6-4e1b11adbd48}');
INSERT INTO t_objectproperties VALUES(5484,1635,'Modifier','cary',NULL,'{903b6d1e-808d-7ce8-3704-687025679bea}');
INSERT INTO t_objectproperties VALUES(5485,1635,'Type','items',NULL,'{da1ad3a1-db70-b256-b007-0bc72e7d21d7}');
INSERT INTO t_objectproperties VALUES(5486,1635,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40237?projectId=78',NULL,'{f4ca01ee-2eba-5ad5-e970-e3e05bcdc3a6}');
INSERT INTO t_objectproperties VALUES(5487,1635,'id','40237',NULL,'{1ff0ceba-b3fa-701f-bf9e-835b043b2cfe}');
INSERT INTO t_objectproperties VALUES(5488,1636,'Key','LL-SET-7',NULL,'{abe924a8-7079-2753-5d16-80fb94244329}');
INSERT INTO t_objectproperties VALUES(5489,1636,'Modifier','cary',NULL,'{241b9e15-e90e-5378-ed8f-a81ccb9ad56b}');
INSERT INTO t_objectproperties VALUES(5490,1636,'Type','items',NULL,'{de43adb9-c059-7675-67c0-bba69006d4f8}');
INSERT INTO t_objectproperties VALUES(5491,1636,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40235?projectId=78',NULL,'{967be75a-5e02-6a02-019f-afdfbdf1503e}');
INSERT INTO t_objectproperties VALUES(5492,1636,'id','40235',NULL,'{9a214134-a03d-3d4e-7e2a-fce1cb9efc07}');
INSERT INTO t_objectproperties VALUES(5493,1637,'Key','LL-SET-8',NULL,'{18d02756-2626-8d25-9960-03c53d7fe2aa}');
INSERT INTO t_objectproperties VALUES(5494,1637,'Modifier','cary',NULL,'{2f13f82b-fb19-d2c6-6d35-999490d58299}');
INSERT INTO t_objectproperties VALUES(5495,1637,'Type','items',NULL,'{d27c79d4-85c4-c9eb-634c-c6009d4752f2}');
INSERT INTO t_objectproperties VALUES(5496,1637,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40236?projectId=78',NULL,'{b18292e3-e791-1e80-4d3c-0b277cfa74cf}');
INSERT INTO t_objectproperties VALUES(5497,1637,'id','40236',NULL,'{99d82fe5-2f89-fe64-b712-16b47c1ebbae}');
INSERT INTO t_objectproperties VALUES(5498,1638,'Key','LL-SET-6',NULL,'{c5b86d03-52fa-c5bd-dfd7-70447b3c54e7}');
INSERT INTO t_objectproperties VALUES(5499,1638,'Modifier','cary',NULL,'{ba91c141-73d6-b44a-8e80-a2e74ca5eae6}');
INSERT INTO t_objectproperties VALUES(5500,1638,'Type','items',NULL,'{a333371b-b7d2-b5c6-cd51-aaa30292d358}');
INSERT INTO t_objectproperties VALUES(5501,1638,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40234?projectId=78',NULL,'{d1447021-1a15-f9bf-725f-ad7aea31ca93}');
INSERT INTO t_objectproperties VALUES(5502,1638,'id','40234',NULL,'{2681acd0-4cc1-f8c7-f145-be77a00f0c5c}');
INSERT INTO t_objectproperties VALUES(5503,1639,'Key','LL-FLD-5',NULL,'{00373c36-6d3b-08c0-af19-b408873ab17d}');
INSERT INTO t_objectproperties VALUES(5504,1640,'Key','LL-FLD-2',NULL,'{522d06f6-73e3-05e6-0b6c-d3d9ff4ac7a3}');
INSERT INTO t_objectproperties VALUES(5505,1639,'Modifier','cary',NULL,'{e2e02a57-c5f4-c192-2b54-c88c0dd29ed7}');
INSERT INTO t_objectproperties VALUES(5506,1640,'Modifier','cary',NULL,'{bc60b243-6be2-3dea-342c-d72502f43299}');
INSERT INTO t_objectproperties VALUES(5507,1639,'Type','items',NULL,'{19b743fa-d28e-b9e6-f9c0-25579a49d1c2}');
INSERT INTO t_objectproperties VALUES(5508,1640,'Type','items',NULL,'{46ee70d9-1465-f244-a8b9-b180e40d118c}');
INSERT INTO t_objectproperties VALUES(5509,1639,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40251?projectId=78',NULL,'{f425f638-da6c-cc33-8648-8e0dc456e484}');
INSERT INTO t_objectproperties VALUES(5510,1640,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40240?projectId=78',NULL,'{8eda30db-17c7-a96d-66f3-2ffff7ede842}');
INSERT INTO t_objectproperties VALUES(5511,1639,'id','40251',NULL,'{a291aff7-cc39-92f3-8df3-c27681bdee03}');
INSERT INTO t_objectproperties VALUES(5512,1640,'id','40240',NULL,'{d7f2fb54-cc09-9987-bdd1-c2395a3d1129}');
INSERT INTO t_objectproperties VALUES(5513,1641,'Id','42185',NULL,'{4156251d-a6f2-531a-dfaa-8ff8ba4c044d}');
INSERT INTO t_objectproperties VALUES(5514,1642,'Id','42349',NULL,'{8d8ac461-8b84-7f79-983e-235bb1fa7e1c}');
INSERT INTO t_objectproperties VALUES(5515,1641,'Key','LL-TXT-64',NULL,'{0bbf709b-6250-adbf-68ed-5bb2786a1647}');
INSERT INTO t_objectproperties VALUES(5516,1642,'Key','LL-STK-2',NULL,'{4e41e6dc-5ae8-7942-24d0-03f62312dd2f}');
INSERT INTO t_objectproperties VALUES(5517,1641,'Modifier','dsiegl',NULL,'{77f7f8d2-b793-5147-52fa-ce7f8b070793}');
INSERT INTO t_objectproperties VALUES(5518,1642,'Modifier','dsiegl',NULL,'{7e1bbc24-0a21-27d7-2b5b-7d35ce69a77a}');
INSERT INTO t_objectproperties VALUES(5519,1641,'Type','items',NULL,'{eb8e2734-58e8-0d29-beb6-c1adcbb7ffbe}');
INSERT INTO t_objectproperties VALUES(5520,1642,'Type','items',NULL,'{5bc1ab81-d82f-7811-30ab-07e845ba1a20}');
INSERT INTO t_objectproperties VALUES(5521,1641,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42185?projectId=78',NULL,'{c5612827-52fc-4ae2-38d0-1ab375b3ab79}');
INSERT INTO t_objectproperties VALUES(5522,1642,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42349?projectId=78',NULL,'{0229a1f0-6def-5d0c-da6e-55d7e5b97426}');
INSERT INTO t_objectproperties VALUES(5523,1643,'Id','40411',NULL,'{65256e93-9095-7047-550e-2d0b0e96f14e}');
INSERT INTO t_objectproperties VALUES(5524,1644,'Id','40247',NULL,'{61466146-8c03-a316-4c97-d5170f68b106}');
INSERT INTO t_objectproperties VALUES(5525,1643,'Key','LL-SYS-7',NULL,'{0edda511-de30-69a7-30ab-3a1fc8680eed}');
INSERT INTO t_objectproperties VALUES(5526,1644,'Key','LL-TXT-1',NULL,'{41043015-6ea9-883d-180a-c9c7f4267a61}');
INSERT INTO t_objectproperties VALUES(5527,1643,'Modifier','dsiegl',NULL,'{7a36c618-539b-5333-bdde-0fb33b27df32}');
INSERT INTO t_objectproperties VALUES(5528,1644,'Modifier','dsiegl',NULL,'{a37d7518-c714-8f6d-8bb5-84c3bc6d84d4}');
INSERT INTO t_objectproperties VALUES(5529,1643,'Type','items',NULL,'{c4764fbc-63a2-4cb1-5f74-e251f6819420}');
INSERT INTO t_objectproperties VALUES(5530,1644,'Type','items',NULL,'{bd51e9ea-db97-c474-38a5-c4fc1533f2a9}');
INSERT INTO t_objectproperties VALUES(5531,1643,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40411?projectId=78',NULL,'{12a5276c-f18a-8773-9b6c-1130fa933d88}');
INSERT INTO t_objectproperties VALUES(5532,1644,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40247?projectId=78',NULL,'{825b60b7-cb94-bd4b-2737-e100375c98a7}');
INSERT INTO t_objectproperties VALUES(5533,1645,'Id','42184',NULL,'{35e4b9c4-dd35-52f2-e695-55ec24ec3442}');
INSERT INTO t_objectproperties VALUES(5534,1646,'Key','LL-FLD-4',NULL,'{4e1332c1-c42d-38b4-e3c3-7d1a2f097c10}');
INSERT INTO t_objectproperties VALUES(5535,1645,'Key','LL-SYS-22',NULL,'{564e2054-82e4-8da4-220a-f5ddbfa31b8a}');
INSERT INTO t_objectproperties VALUES(5536,1646,'Modifier','cary',NULL,'{4a1fb308-09d3-cc22-12b9-e0b5f6d13b6a}');
INSERT INTO t_objectproperties VALUES(5537,1645,'Modifier','dsiegl',NULL,'{7a2fed4b-ac4c-4a12-e3fe-33c2115b1d40}');
INSERT INTO t_objectproperties VALUES(5538,1646,'Type','items',NULL,'{14cedae4-7ab9-85ac-f0fa-b19f2f835c4b}');
INSERT INTO t_objectproperties VALUES(5539,1645,'Type','items',NULL,'{f13832fa-fe35-1302-5f6f-acf76eb83e34}');
INSERT INTO t_objectproperties VALUES(5540,1646,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40248?projectId=78',NULL,'{ccfb2e17-c364-fb3d-295e-7d6202aeb7db}');
INSERT INTO t_objectproperties VALUES(5541,1645,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42184?projectId=78',NULL,'{4eb758af-73f2-42ed-0019-f85a441ee769}');
INSERT INTO t_objectproperties VALUES(5542,1646,'id','40248',NULL,'{bafb08ca-7879-8679-cfc2-471be1ce7c46}');
INSERT INTO t_objectproperties VALUES(5543,1647,'Id','42307',NULL,'{138d72ad-6123-a30e-5eff-f8be9011a206}');
INSERT INTO t_objectproperties VALUES(5544,1647,'Key','LL-TXT-82',NULL,'{9cd73491-5169-5320-6bb9-c32fb5f69886}');
INSERT INTO t_objectproperties VALUES(5545,1647,'Modifier','dsiegl',NULL,'{692a089a-3216-5a55-e1e9-63e5c5b944dd}');
INSERT INTO t_objectproperties VALUES(5546,1647,'Type','items',NULL,'{3e5f820c-8892-96ed-d488-ed442ff9ab09}');
INSERT INTO t_objectproperties VALUES(5547,1647,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42307?projectId=78',NULL,'{fb2e724b-154d-b141-0c7b-ff74f55c9dc7}');
INSERT INTO t_objectproperties VALUES(5548,1648,'Id','42301',NULL,'{d6e61fd9-9ab8-8425-5ddb-aed70bbd8d9a}');
INSERT INTO t_objectproperties VALUES(5549,1648,'Key','LL-TXT-81',NULL,'{1d88b523-ca46-edbc-333f-5def01e6ac4f}');
INSERT INTO t_objectproperties VALUES(5550,1648,'Modifier','dsiegl',NULL,'{7d03d51a-6ffa-9691-ef2a-b37c88bcb754}');
INSERT INTO t_objectproperties VALUES(5551,1648,'Type','items',NULL,'{bf70f1b6-d399-7714-e542-98de6ddf888f}');
INSERT INTO t_objectproperties VALUES(5552,1648,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42301?projectId=78',NULL,'{f528a18f-8418-2e98-725d-43aefa284167}');
INSERT INTO t_objectproperties VALUES(5553,1649,'Id','42192',NULL,'{057672f1-a484-4aa8-3b3f-05c5500416e8}');
INSERT INTO t_objectproperties VALUES(5554,1649,'Key','LL-TXT-66',NULL,'{4e796d96-7af1-a33b-6639-64f6ca5e184b}');
INSERT INTO t_objectproperties VALUES(5555,1649,'Modifier','dsiegl',NULL,'{0d9d343b-6b5c-fe64-228f-09ab90a5aac8}');
INSERT INTO t_objectproperties VALUES(5556,1649,'Type','items',NULL,'{a3778f8d-aa6c-a48b-58cc-f784e87ef8c5}');
INSERT INTO t_objectproperties VALUES(5557,1649,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42192?projectId=78',NULL,'{5fa26c16-dc43-ea28-76b6-2fe07a572273}');
INSERT INTO t_objectproperties VALUES(5558,1650,'Id','40256',NULL,'{e3dcbb68-9cb6-8f51-8e26-cb450b9a336e}');
INSERT INTO t_objectproperties VALUES(5559,1650,'Key','LL-SYS-3',NULL,'{0071938d-4ee1-664e-4c69-f92ecc4bc4e2}');
INSERT INTO t_objectproperties VALUES(5560,1650,'Modifier','dsiegl',NULL,'{7a8a54bc-bc52-bf59-cfb6-bc5ef6ed19ac}');
INSERT INTO t_objectproperties VALUES(5561,1650,'Type','items',NULL,'{c9762392-5231-9f51-40e6-9813cea95d68}');
INSERT INTO t_objectproperties VALUES(5562,1650,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40256?projectId=78',NULL,'{7fc41806-eb90-8dc2-1a79-5cc17d779805}');
INSERT INTO t_objectproperties VALUES(5563,1655,'Id','42313',NULL,'{0b7856f2-c733-52e4-bc76-dd79fbbf43ba}');
INSERT INTO t_objectproperties VALUES(5564,1655,'Key','LL-TXT-84',NULL,'{2bf4db93-7148-2e84-d514-83d1be57af15}');
INSERT INTO t_objectproperties VALUES(5565,1655,'Modifier','dsiegl',NULL,'{c1a13066-9d11-8711-9e3c-4fd2557bbd7c}');
INSERT INTO t_objectproperties VALUES(5566,1655,'Type','items',NULL,'{482bec1c-ef3d-6261-4158-760eca6d8e0c}');
INSERT INTO t_objectproperties VALUES(5567,1651,'Id','40250',NULL,'{0b7bd52e-2d28-9589-b760-fb4d7cc1b28f}');
INSERT INTO t_objectproperties VALUES(5568,1651,'Key','LL-TXT-2',NULL,'{9e19b996-320b-b17d-8d17-641eaa770792}');
INSERT INTO t_objectproperties VALUES(5569,1651,'Modifier','dsiegl',NULL,'{de6fcf84-44de-8cf5-f4f3-f13fcbfa85a5}');
INSERT INTO t_objectproperties VALUES(5570,1651,'Type','items',NULL,'{a8d0dc4c-d089-de01-33b5-08a39c9d3414}');
INSERT INTO t_objectproperties VALUES(5571,1651,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40250?projectId=78',NULL,'{e9645cfe-56c2-032a-81fc-097ac9e2cf77}');
INSERT INTO t_objectproperties VALUES(5572,1652,'Id','40405',NULL,'{d63fb646-8ed7-7b72-1123-e88c01c57bb5}');
INSERT INTO t_objectproperties VALUES(5573,1652,'Key','LL-SYS-6',NULL,'{ace7acd8-e53e-a64c-2f11-7f88d4a840b8}');
INSERT INTO t_objectproperties VALUES(5574,1652,'Modifier','dsiegl',NULL,'{9cacc322-4d75-17d4-9774-87419a37d28c}');
INSERT INTO t_objectproperties VALUES(5575,1652,'Type','items',NULL,'{39c28ff3-d746-fc78-ab92-723d8ae8a967}');
INSERT INTO t_objectproperties VALUES(5576,1652,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40405?projectId=78',NULL,'{c573355c-5a69-ad6e-ec84-32e3d273ed35}');
INSERT INTO t_objectproperties VALUES(5577,1653,'Id','42253',NULL,'{0ff4764c-4b8b-5f14-7d01-34bc5c22de9f}');
INSERT INTO t_objectproperties VALUES(5578,1653,'Key','LL-TXT-71',NULL,'{cc5ac144-69a0-220a-5153-97950cae4f71}');
INSERT INTO t_objectproperties VALUES(5579,1653,'Modifier','dsiegl',NULL,'{e9ae1bb4-8ba5-e76e-d7bc-79788d3af6bd}');
INSERT INTO t_objectproperties VALUES(5580,1653,'Type','items',NULL,'{95baa000-1238-c999-290e-6442d0054b1f}');
INSERT INTO t_objectproperties VALUES(5581,1653,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42253?projectId=78',NULL,'{6019292f-3198-17ad-c63f-40613a660081}');
INSERT INTO t_objectproperties VALUES(5582,1654,'Id','42191',NULL,'{c50ce119-41ed-702c-7b61-625eb413d566}');
INSERT INTO t_objectproperties VALUES(5583,1654,'Key','LL-SYS-23',NULL,'{a951ebea-4c47-8581-f571-df8594daaf61}');
INSERT INTO t_objectproperties VALUES(5584,1654,'Modifier','dsiegl',NULL,'{b85b8f4a-19b4-b244-4a49-41ddff91cbe0}');
INSERT INTO t_objectproperties VALUES(5585,1654,'Type','items',NULL,'{177a5fae-d7bc-31f2-f155-6c635f97d4de}');
INSERT INTO t_objectproperties VALUES(5586,1654,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42191?projectId=78',NULL,'{d4129d22-e595-6b9e-8fae-9b8a98b9a265}');
INSERT INTO t_objectproperties VALUES(5587,1655,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42313?projectId=78',NULL,'{69e6575d-5677-baaa-a7e5-40109abbb3ee}');
INSERT INTO t_objectproperties VALUES(5588,1656,'Id','40406',NULL,'{fafe98b7-744a-dd96-63ab-acb067a0b5fc}');
INSERT INTO t_objectproperties VALUES(5589,1656,'Key','LL-TXT-13',NULL,'{a3297e09-387a-16b5-6637-ee84a6cc6446}');
INSERT INTO t_objectproperties VALUES(5590,1656,'Modifier','dsiegl',NULL,'{e78dc084-371f-d004-c069-2fc79c4f652e}');
INSERT INTO t_objectproperties VALUES(5591,1656,'Type','items',NULL,'{ab799d60-674b-28d3-1a8e-d6a69cf3a7f0}');
INSERT INTO t_objectproperties VALUES(5592,1656,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40406?projectId=78',NULL,'{89666ecc-7b31-ab75-ae96-4a7c62ccd5d8}');
INSERT INTO t_objectproperties VALUES(5593,1657,'Id','42312',NULL,'{06b2de90-2dd0-7842-60ac-938fb332fe6e}');
INSERT INTO t_objectproperties VALUES(5594,1657,'Key','LL-SYS-26',NULL,'{414326a4-b2fd-4894-a3e4-bb7f21c8b667}');
INSERT INTO t_objectproperties VALUES(5595,1657,'Modifier','dsiegl',NULL,'{27a1d33a-4c33-56e6-be0e-fb6d8fcdaf63}');
INSERT INTO t_objectproperties VALUES(5596,1657,'Type','items',NULL,'{88bc4470-0514-c57e-9fea-dde8fb515407}');
INSERT INTO t_objectproperties VALUES(5597,1657,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42312?projectId=78',NULL,'{26404861-b29f-af3d-8315-7e2bcc6e7bd4}');
INSERT INTO t_objectproperties VALUES(5598,1658,'Id','42252',NULL,'{7349645f-f1a2-9378-4e84-d432bbb7d3e4}');
INSERT INTO t_objectproperties VALUES(5599,1658,'Key','LL-SYS-25',NULL,'{06d471e5-4716-8d43-63b2-f25e50f52c2a}');
INSERT INTO t_objectproperties VALUES(5600,1658,'Modifier','dsiegl',NULL,'{bad6f005-466e-872c-74a5-c0d8e60b4ee4}');
INSERT INTO t_objectproperties VALUES(5601,1658,'Type','items',NULL,'{4dc2e7fc-983d-0165-f1d0-bab4f86c302d}');
INSERT INTO t_objectproperties VALUES(5602,1658,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42252?projectId=78',NULL,'{cd46ec75-6012-2f13-6325-b19563384a49}');
INSERT INTO t_objectproperties VALUES(5603,1659,'Id','40412',NULL,'{7cf615c7-a70c-83a6-f5a8-5ed0b17b2857}');
INSERT INTO t_objectproperties VALUES(5604,1659,'Key','LL-TXT-15',NULL,'{0cbf2e57-d2fa-002c-8936-d546503ca81d}');
INSERT INTO t_objectproperties VALUES(5605,1659,'Modifier','dsiegl',NULL,'{34419181-6b6e-316d-b213-3166a25a62ce}');
INSERT INTO t_objectproperties VALUES(5606,1659,'Type','items',NULL,'{fe349627-84f4-5e97-424d-4952a2f6ddfc}');
INSERT INTO t_objectproperties VALUES(5607,1659,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40412?projectId=78',NULL,'{74a1c06c-6fba-60a4-da29-8422fa0b99ab}');
INSERT INTO t_objectproperties VALUES(5608,1660,'Id','40377',NULL,'{d04f5677-f73e-4aaf-d21e-5f859120ef7c}');
INSERT INTO t_objectproperties VALUES(5609,1660,'Key','LL-TXT-8',NULL,'{02047984-4d62-54eb-88ce-07777aa5f793}');
INSERT INTO t_objectproperties VALUES(5610,1660,'Modifier','dsiegl',NULL,'{7f0a2cda-6f2a-4baa-7abd-45ce5136eb93}');
INSERT INTO t_objectproperties VALUES(5611,1660,'Type','items',NULL,'{04927ff8-8fcb-09de-18c3-a837ef7c9fd2}');
INSERT INTO t_objectproperties VALUES(5612,1660,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40377?projectId=78',NULL,'{d7494a34-d356-aa99-19bd-ef8e9b28b0db}');
INSERT INTO t_objectproperties VALUES(5613,1661,'Id','40381',NULL,'{8da8d011-c954-1fd9-e464-ba4d7587066e}');
INSERT INTO t_objectproperties VALUES(5614,1661,'Key','LL-SYS-5',NULL,'{bea33de1-6580-85e5-36a4-5673e5f74f59}');
INSERT INTO t_objectproperties VALUES(5615,1661,'Modifier','dsiegl',NULL,'{470e090b-5459-4407-1495-b532f07fbee0}');
INSERT INTO t_objectproperties VALUES(5616,1661,'Type','items',NULL,'{c12c51d6-d402-149f-4e74-4a730732ac40}');
INSERT INTO t_objectproperties VALUES(5617,1661,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40381?projectId=78',NULL,'{9c1cf0bb-2f6c-d329-17ea-6b6276bf21ca}');
INSERT INTO t_objectproperties VALUES(5618,1662,'Key','LL-FLD-1',NULL,'{b94ae0f4-832b-d77a-4281-fe6df7c67112}');
INSERT INTO t_objectproperties VALUES(5619,1662,'Modifier','cary',NULL,'{f1265a45-4f22-5cae-435c-d972edb854e2}');
INSERT INTO t_objectproperties VALUES(5620,1662,'Type','items',NULL,'{d971b9bd-b742-6809-1773-cfa7f4fd6507}');
INSERT INTO t_objectproperties VALUES(5621,1662,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40239?projectId=78',NULL,'{0a18b13f-a7b3-3c67-5755-65fc46ee7bf5}');
INSERT INTO t_objectproperties VALUES(5622,1662,'id','40239',NULL,'{72a382ed-7b5a-2ef2-9551-e48d31415b01}');
INSERT INTO t_objectproperties VALUES(5623,1663,'Key','LL-FLD-3',NULL,'{50e6ef17-cb06-6a33-48a3-d249064b83e3}');
INSERT INTO t_objectproperties VALUES(5624,1663,'Modifier','cary',NULL,'{ed260115-b61d-5043-2961-5f23f89ec551}');
INSERT INTO t_objectproperties VALUES(5625,1663,'Type','items',NULL,'{7b507599-a15b-85d7-af36-1c028aa60fdc}');
INSERT INTO t_objectproperties VALUES(5626,1663,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/containers/40242?projectId=78',NULL,'{db058d15-2b92-b675-c82b-c97c9eb23c84}');
INSERT INTO t_objectproperties VALUES(5627,1663,'id','40242',NULL,'{63a55906-d0e2-7188-d43e-be4674a3ace8}');
INSERT INTO t_objectproperties VALUES(5628,1664,'Id','40254',NULL,'{5dc08776-41bd-9a08-088c-526b459c6da8}');
INSERT INTO t_objectproperties VALUES(5629,1664,'Key','LL-SYS-1',NULL,'{c5cebbd7-c5cc-e26b-3de1-89b9835abd4b}');
INSERT INTO t_objectproperties VALUES(5630,1664,'Modifier','cary',NULL,'{58ef8468-36fb-7a18-fe75-22cf22591081}');
INSERT INTO t_objectproperties VALUES(5631,1664,'Type','items',NULL,'{20603b05-29a1-c040-4024-ac66395a5474}');
INSERT INTO t_objectproperties VALUES(5632,1664,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40254?projectId=78',NULL,'{4f2300c7-0ce2-fa9e-c63f-b132d8ec4322}');
INSERT INTO t_objectproperties VALUES(5633,1665,'Id','42343',NULL,'{d2b95b0d-1906-8121-3968-d5323f2d8c26}');
INSERT INTO t_objectproperties VALUES(5634,1665,'Key','LL-SYS-27',NULL,'{27f1a475-0d8b-6b96-08ec-a2f92248888d}');
INSERT INTO t_objectproperties VALUES(5635,1665,'Modifier','dsiegl',NULL,'{e540ea20-4d01-fde1-b093-2819b4802707}');
INSERT INTO t_objectproperties VALUES(5636,1665,'Type','items',NULL,'{830f5c87-993e-b3c9-4eb0-fa83b90e66b9}');
INSERT INTO t_objectproperties VALUES(5637,1665,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42343?projectId=78',NULL,'{37a0b284-3c54-f75b-2460-b63b7e00cc46}');
INSERT INTO t_objectproperties VALUES(5638,1666,'Id','42242',NULL,'{f4c49e4e-d3cc-6941-9579-922ead3c6098}');
INSERT INTO t_objectproperties VALUES(5639,1666,'Key','LL-TXT-69',NULL,'{f360964e-2046-72b2-e644-1d704eaebb58}');
INSERT INTO t_objectproperties VALUES(5640,1666,'Modifier','dsiegl',NULL,'{170fc2c2-23f0-31ac-f6b7-41c8c44f9796}');
INSERT INTO t_objectproperties VALUES(5641,1666,'Type','items',NULL,'{26fb29b1-9b8e-4ba0-c121-cba45a85d06b}');
INSERT INTO t_objectproperties VALUES(5642,1666,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/42242?projectId=78',NULL,'{1f9697f4-cf96-266b-e877-89af2a178f10}');
INSERT INTO t_objectproperties VALUES(5643,1667,'Id','40293',NULL,'{ad1d42b1-7119-76da-58ca-2a394ec773ff}');
INSERT INTO t_objectproperties VALUES(5644,1667,'Key','LL-TXT-3',NULL,'{334cbc1e-1a7a-1e74-16be-ade4d6b5a104}');
INSERT INTO t_objectproperties VALUES(5645,1667,'Modifier','dsiegl',NULL,'{c6f33077-9404-3b5a-0eef-cfaca76bd6ce}');
INSERT INTO t_objectproperties VALUES(5646,1667,'Type','items',NULL,'{32ec1151-c7e6-68f9-a13d-30d740fc958b}');
INSERT INTO t_objectproperties VALUES(5647,1667,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40293?projectId=78',NULL,'{8ad7edc9-e3bb-4afe-1282-423307594d7d}');
INSERT INTO t_objectproperties VALUES(5648,1668,'Id','40241',NULL,'{f7067ce0-97e6-3991-43a4-c54b6fc91c67}');
INSERT INTO t_objectproperties VALUES(5649,1668,'Key','LL-ARCH-1',NULL,'{3fa534fd-3903-37ce-5584-f0aefc46ef29}');
INSERT INTO t_objectproperties VALUES(5650,1668,'Modifier','cary',NULL,'{31f085c8-3b45-62cb-d879-fd132091529e}');
INSERT INTO t_objectproperties VALUES(5651,1668,'Type','items',NULL,'{f792c836-02b4-2e0c-6cf3-2a3b88019891}');
INSERT INTO t_objectproperties VALUES(5652,1668,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40241?projectId=78',NULL,'{3261565c-5e5b-7e2e-ee26-b698ed2ab82a}');
INSERT INTO t_objectproperties VALUES(5653,1669,'Id','40249',NULL,'{a8d634bf-90e8-8046-b596-cb8faaed79bc}');
INSERT INTO t_objectproperties VALUES(5654,1669,'Key','LL-STK-1',NULL,'{c3a49e90-e832-483c-42f2-8d19c526b070}');
INSERT INTO t_objectproperties VALUES(5655,1669,'Modifier','cary',NULL,'{ad34b888-2101-a4e2-71ba-5b3caf396aea}');
INSERT INTO t_objectproperties VALUES(5656,1669,'Type','items',NULL,'{fa71602a-8896-0605-dddb-f881175e18d1}');
INSERT INTO t_objectproperties VALUES(5657,1669,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40249?projectId=78',NULL,'{10bcd0d1-eb51-21a2-3bd6-6ba3d1625d82}');
INSERT INTO t_objectproperties VALUES(5658,1670,'Id','40245',NULL,'{4589b1f9-78c5-369f-c5d7-b58c22c053d1}');
INSERT INTO t_objectproperties VALUES(5659,1670,'Key','LL-ARCH-3',NULL,'{47671732-99f2-3f7b-3213-0a3ab872b79f}');
INSERT INTO t_objectproperties VALUES(5660,1670,'Modifier','cary',NULL,'{96ffa6d4-8c17-1839-59f9-a06609635b11}');
INSERT INTO t_objectproperties VALUES(5661,1670,'Type','items',NULL,'{f4cb2f07-e39b-19c1-f244-d42522a98bb8}');
INSERT INTO t_objectproperties VALUES(5662,1670,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40245?projectId=78',NULL,'{7181efe4-faf9-1aa1-318c-bb45a1b3f175}');
INSERT INTO t_objectproperties VALUES(5663,1671,'Id','40244',NULL,'{1c7db4bc-0be8-ce61-4fc2-5703118ddfe7}');
INSERT INTO t_objectproperties VALUES(5664,1671,'Key','LL-ARCH-2',NULL,'{3a801957-1665-7a9b-041f-2a4ffcbfa8f9}');
INSERT INTO t_objectproperties VALUES(5665,1671,'Modifier','cary',NULL,'{36757556-978b-c4b4-70da-715cecede33d}');
INSERT INTO t_objectproperties VALUES(5666,1671,'Type','items',NULL,'{6e66a5e4-dd00-448a-50d8-101085d551da}');
INSERT INTO t_objectproperties VALUES(5667,1671,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40244?projectId=78',NULL,'{d1d98ac8-768e-acfe-2dd8-99518229dc29}');
INSERT INTO t_objectproperties VALUES(5668,1672,'Id','40246',NULL,'{fc024724-72fb-a706-df0e-09cd0e78ac93}');
INSERT INTO t_objectproperties VALUES(5669,1672,'Key','LL-ARCH-4',NULL,'{250aa61d-1eca-1a64-5fb2-72b794ac631d}');
INSERT INTO t_objectproperties VALUES(5670,1672,'Modifier','cary',NULL,'{c00b72d5-c857-eaa8-f023-173467039c93}');
INSERT INTO t_objectproperties VALUES(5671,1672,'Type','items',NULL,'{377a9cfb-e0ed-f7b9-b360-905dd71182bc}');
INSERT INTO t_objectproperties VALUES(5672,1672,'Uri','https://jama-cbjd.jamacloud.com/rest/latest/perspective.req#/items/40246?projectId=78',NULL,'{906341ae-923c-bf45-e0c5-8a9c6c6c6c35}');
INSERT INTO t_objectproperties VALUES(5673,1664,'Modifier','dsiegl',NULL,'{fbaa0c4f-4818-909f-cb3f-0fae09109783}');
INSERT INTO t_objectproperties VALUES(5740,1880,'ViewProperties','<memo>',unistr('<modelview>\u000d\u000a\u0009<source customSQL="Select * from t_document where t_document.DocName = ''DIAGRAMIMAGEMAP''"/>\u000d\u000a</modelview>'),'{E1AA9A88-F2D0-adf2-AFE0-C0206F576753}');
INSERT INTO t_objectproperties VALUES(5758,1889,'id',NULL,NULL,'{00000DED-3AF1-773a-A131-54602EE4FAE7}');
INSERT INTO t_objectproperties VALUES(5759,1889,'text','<memo>','The system shall integrate with modern version control systems such as Git.','{00415985-D789-37d7-AE6D-D3D16CBF7708}');
INSERT INTO t_objectproperties VALUES(5760,1889,'source',NULL,NULL,'{145BFAB1-8886-7f88-AD56-33499CE5384E}');
INSERT INTO t_objectproperties VALUES(5761,1889,'risk',NULL,unistr('Values: High,Medium,Low\u000d\u000a'),'{00405119-65AE-0c65-9D7E-68AF8E621AAD}');
INSERT INTO t_objectproperties VALUES(5762,1889,'verifyMethod',NULL,unistr('Values: Analysis,Demonstration,Inspection,Test\u000d\u000a'),'{4BA86CD6-324B-1132-8687-D5241FA3E8E5}');
INSERT INTO t_objectproperties VALUES(5771,1900,'MPMS Package GUID','{d3095554-4013-6b8a-8629-b582b167ca1d}',NULL,'{2f89ce5f-2ea9-2e10-f6ad-4fefd0e26ac6}');
CREATE TABLE t_objectrequires
(
	ReqID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Object_ID INTEGER NULL DEFAULT 0,
	Requirement TEXT NULL COLLATE NOCASE,
	ReqType TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Stability TEXT NULL COLLATE NOCASE,
	Difficulty TEXT NULL COLLATE NOCASE,
	Priority TEXT NULL COLLATE NOCASE,
	LastUpdate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE
);
CREATE TABLE t_objectresource
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Resource TEXT NOT NULL COLLATE NOCASE,
	Role TEXT NOT NULL COLLATE NOCASE,
	Time REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	PercentComplete INTEGER NULL DEFAULT 0,
	DateStart TEXT NULL COLLATE NOCASE,
	DateEnd TEXT NULL COLLATE NOCASE,
	History TEXT NULL COLLATE NOCASE,
	ExpectedHours INTEGER NULL DEFAULT 0,
	ActualHours INTEGER NULL DEFAULT 0,
	CONSTRAINT pk_objectresource PRIMARY KEY (Object_ID,Resource,Role)
);
CREATE TABLE t_objectrisks
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Risk TEXT NOT NULL COLLATE NOCASE,
	RiskType TEXT NULL COLLATE NOCASE,
	EValue REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectrisks PRIMARY KEY (Object_ID,Risk)
);
CREATE TABLE t_objectscenarios
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Scenario TEXT NOT NULL COLLATE NOCASE,
	ScenarioType TEXT NULL COLLATE NOCASE,
	EValue REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	XMLContent TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objectscenarios PRIMARY KEY (Object_ID,Scenario)
);
CREATE TABLE t_objecttests
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	Test TEXT NOT NULL COLLATE NOCASE,
	TestClass INTEGER NOT NULL DEFAULT 0,
	TestType TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	InputData TEXT NULL COLLATE NOCASE,
	AcceptanceCriteria TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	DateRun TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	Results TEXT NULL COLLATE NOCASE,
	RunBy TEXT NULL COLLATE NOCASE,
	CheckBy TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objecttests PRIMARY KEY (Object_ID,Test,TestClass)
);
CREATE TABLE t_objecttrx
(
	Object_ID INTEGER NOT NULL DEFAULT 0,
	TRX TEXT NOT NULL COLLATE NOCASE,
	TRXType TEXT NOT NULL COLLATE NOCASE,
	Weight REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_objecttrx PRIMARY KEY (Object_ID,TRXType,TRX)
);
CREATE TABLE t_objecttypes
(
	Object_Type TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE,
	DesignObject INTEGER NULL,
	ImageID INTEGER NULL DEFAULT 0
);
INSERT INTO t_objecttypes VALUES('Action','Action',1,8);
INSERT INTO t_objecttypes VALUES('ActionPin','ActionPin',1,8);
INSERT INTO t_objecttypes VALUES('Activity','Activity',0,21);
INSERT INTO t_objecttypes VALUES('ActivityParameter','ActivityParameter',1,8);
INSERT INTO t_objecttypes VALUES('ActivityPartition','ActivityPartition',1,8);
INSERT INTO t_objecttypes VALUES('ActivityRegion','ActivityRegion',1,8);
INSERT INTO t_objecttypes VALUES('Actor','Actor',0,6);
INSERT INTO t_objecttypes VALUES('Artifact','UML Artifact',1,8);
INSERT INTO t_objecttypes VALUES('Association','Association',0,0);
INSERT INTO t_objecttypes VALUES('Boundary','Boundary',0,0);
INSERT INTO t_objecttypes VALUES('CentralBufferNode','CentralBufferNode',1,8);
INSERT INTO t_objecttypes VALUES('Change','Change',1,19);
INSERT INTO t_objecttypes VALUES('Class','Class',1,5);
INSERT INTO t_objecttypes VALUES('Collaboration','Collaboration',0,7);
INSERT INTO t_objecttypes VALUES('CollaborationOccurrence','CollaborationOccurrence',1,8);
INSERT INTO t_objecttypes VALUES('Comment','Comment',1,8);
INSERT INTO t_objecttypes VALUES('Component','Component',1,10);
INSERT INTO t_objecttypes VALUES('ConditionalNode','ConditionalNode',1,8);
INSERT INTO t_objecttypes VALUES('Constraint','Constraint',1,8);
INSERT INTO t_objecttypes VALUES('DataStore','DataStore',1,8);
INSERT INTO t_objecttypes VALUES('DataType','DataType',1,8);
INSERT INTO t_objecttypes VALUES('Decision','Decision',0,0);
INSERT INTO t_objecttypes VALUES('DeploymentSpecification','DeploymentSpecification',1,8);
INSERT INTO t_objecttypes VALUES('Device','Device',1,8);
INSERT INTO t_objecttypes VALUES('DiagramFrame','DiagramFrame',1,8);
INSERT INTO t_objecttypes VALUES('Entity','Entity',0,5);
INSERT INTO t_objecttypes VALUES('EntryPoint','UML Entry Point',1,8);
INSERT INTO t_objecttypes VALUES('Enumeration','Enumeration',1,8);
INSERT INTO t_objecttypes VALUES('Event','Event',0,0);
INSERT INTO t_objecttypes VALUES('ExceptionHandler','ExceptionHandler',1,8);
INSERT INTO t_objecttypes VALUES('ExecutionEnvironment','ExecutionEnvironment',1,8);
INSERT INTO t_objecttypes VALUES('ExitPoint','UML Exit Point',1,8);
INSERT INTO t_objecttypes VALUES('ExpansionNode','UML Expansion Node',1,8);
INSERT INTO t_objecttypes VALUES('ExpansionRegion','ExpansionRegion',1,8);
INSERT INTO t_objecttypes VALUES('Feature','Feature',1,8);
INSERT INTO t_objecttypes VALUES('GUIElement','User interface object',1,16);
INSERT INTO t_objecttypes VALUES('InformationItem','InformationItem',1,8);
INSERT INTO t_objecttypes VALUES('Interaction','Interaction',1,8);
INSERT INTO t_objecttypes VALUES('InteractionFragment','InteractionFragment',1,8);
INSERT INTO t_objecttypes VALUES('InteractionOccurrence','InteractionOccurrence',1,8);
INSERT INTO t_objecttypes VALUES('InteractionState','InteractionState',1,8);
INSERT INTO t_objecttypes VALUES('Interface','Interface',0,8);
INSERT INTO t_objecttypes VALUES('InterruptibleActivityRegion','InterruptibleActivityRegion',1,8);
INSERT INTO t_objecttypes VALUES('Issue','Issue',1,19);
INSERT INTO t_objecttypes VALUES('Label','Label',0,0);
INSERT INTO t_objecttypes VALUES('LoopNode','LoopNode',1,8);
INSERT INTO t_objecttypes VALUES('MergeNode','MergeNode',1,8);
INSERT INTO t_objecttypes VALUES('MessageEndpoint','MessageEndpoint',1,8);
INSERT INTO t_objecttypes VALUES('Node','Node',1,9);
INSERT INTO t_objecttypes VALUES('Note','Note',0,0);
INSERT INTO t_objecttypes VALUES('Object','Object',0,5);
INSERT INTO t_objecttypes VALUES('ObjectNode','ObjectNode',1,8);
INSERT INTO t_objecttypes VALUES('Package','Package',1,4);
INSERT INTO t_objecttypes VALUES('Parameter','UML Activity Parameter',1,8);
INSERT INTO t_objecttypes VALUES('Part','Part',1,8);
INSERT INTO t_objecttypes VALUES('Port','UML Port',1,8);
INSERT INTO t_objecttypes VALUES('PrimitiveType','PrimitiveType',1,8);
INSERT INTO t_objecttypes VALUES('ProtocolStateMachine','ProtocolStateMachine',1,8);
INSERT INTO t_objecttypes VALUES('ProvidedInterface','ProvidedInterface',1,8);
INSERT INTO t_objecttypes VALUES('Region','Region',1,8);
INSERT INTO t_objecttypes VALUES('Report','System report',1,17);
INSERT INTO t_objecttypes VALUES('RequiredInterface','RequiredInterface',1,8);
INSERT INTO t_objecttypes VALUES('Requirement','Requirement',1,19);
INSERT INTO t_objecttypes VALUES('Risk','Risk',1,8);
INSERT INTO t_objecttypes VALUES('Screen','Interface Screen',1,11);
INSERT INTO t_objecttypes VALUES('Sequence','Sequence',0,0);
INSERT INTO t_objecttypes VALUES('Signal','Signal',1,8);
INSERT INTO t_objecttypes VALUES('State','State Chart Object',1,20);
INSERT INTO t_objecttypes VALUES('StateMachine','StateMachine',1,8);
INSERT INTO t_objecttypes VALUES('StateNode','Start End State',0,59);
INSERT INTO t_objecttypes VALUES('Synchronization','Synchronization',0,0);
INSERT INTO t_objecttypes VALUES('Task','Task',1,8);
INSERT INTO t_objecttypes VALUES('Text','Text',0,0);
INSERT INTO t_objecttypes VALUES('TimeLine','TimeLine',1,8);
INSERT INTO t_objecttypes VALUES('Trigger','Trigger',1,8);
INSERT INTO t_objecttypes VALUES('UMLDiagram','UML Diagram',1,8);
INSERT INTO t_objecttypes VALUES('UseCase','UseCase',0,7);
INSERT INTO t_objecttypes VALUES('User','User',0,0);
INSERT INTO t_objecttypes VALUES('Defect','Defect',1,8);
INSERT INTO t_objecttypes VALUES('Test','Test',1,8);
CREATE TABLE t_ocf
(
	ObjectType TEXT NULL COLLATE NOCASE,	-- Type of Object e.g Actor, UseCase, Class
	ComplexityWeight REAL NULL DEFAULT 0
);
INSERT INTO t_ocf VALUES('Actor',1.0);
INSERT INTO t_ocf VALUES('UseCase',5.0);
CREATE TABLE t_operation
(
	OperationID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Object_ID INTEGER NULL DEFAULT 0,
	Name TEXT NULL COLLATE NOCASE,
	Scope TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	ReturnArray TEXT NULL COLLATE NOCASE,
	Stereotype TEXT NULL COLLATE NOCASE,
	IsStatic TEXT NULL COLLATE NOCASE,
	Concurrency TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Behaviour TEXT NULL COLLATE NOCASE,
	Abstract TEXT NULL COLLATE NOCASE,
	GenOption TEXT NULL COLLATE NOCASE,
	Synchronized TEXT NULL COLLATE NOCASE,
	Pos INTEGER NULL,
	Const INTEGER NULL,
	Style TEXT NULL COLLATE NOCASE,
	Pure INTEGER NULL DEFAULT 0,
	Throws TEXT NULL COLLATE NOCASE,
	Classifier TEXT NULL COLLATE NOCASE,
	Code TEXT NULL COLLATE NOCASE,
	IsRoot INTEGER NULL DEFAULT 0,
	IsLeaf INTEGER NULL DEFAULT 0,
	IsQuery INTEGER NULL DEFAULT 0,
	StateFlags TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	StyleEx TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_operationparams
(
	OperationID INTEGER NOT NULL DEFAULT 0,
	Name TEXT NOT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	'Default' TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Pos INTEGER NULL DEFAULT 0,
	Const INTEGER NULL,
	Style TEXT NULL COLLATE NOCASE,
	Kind TEXT NULL COLLATE NOCASE,
	Classifier TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	StyleEx TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_operationparams PRIMARY KEY (OperationID,Name)
);
CREATE TABLE t_operationposts
(
	OperationID INTEGER NOT NULL DEFAULT 0,
	PostCondition TEXT NOT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_operationposts PRIMARY KEY (OperationID,PostCondition)
);
CREATE TABLE t_operationpres
(
	OperationID INTEGER NOT NULL DEFAULT 0,
	PreCondition TEXT NOT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_operationpres PRIMARY KEY (OperationID,PreCondition)
);
CREATE TABLE t_operationtag
(
	PropertyID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ElementID INTEGER NULL DEFAULT 0,
	Property TEXT NULL COLLATE NOCASE,
	VALUE TEXT NULL COLLATE NOCASE,
	NOTES TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_package
(
	Package_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	Parent_ID INTEGER NULL DEFAULT 0,
	CreatedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	ModifiedDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	XMLPath TEXT NULL COLLATE NOCASE,
	IsControlled INTEGER NULL DEFAULT 0,
	LastLoadDate TEXT NULL COLLATE NOCASE,
	LastSaveDate TEXT NULL COLLATE NOCASE,
	Version TEXT NULL COLLATE NOCASE,
	Protected INTEGER NULL DEFAULT 0,
	PkgOwner TEXT NULL COLLATE NOCASE,
	UMLVersion TEXT NULL COLLATE NOCASE,
	UseDTD INTEGER NULL DEFAULT 0,
	LogXML INTEGER NULL DEFAULT 0,
	CodePath TEXT NULL COLLATE NOCASE,
	Namespace TEXT NULL COLLATE NOCASE,
	TPos INTEGER NULL,
	PackageFlags TEXT NULL COLLATE NOCASE,
	BatchSave INTEGER NULL,
	BatchLoad INTEGER NULL
);
INSERT INTO t_package VALUES(1,'Model',0,'2012-04-17 00:01:01','2012-04-17 00:01:01','1','{A73A195A-2585-4fda-BF62-CCF6ABEE490A}','1',0,'2024-04-08 15:28:01','2012-04-17 00:01:01','1',0,'1','1',0,0,'1','1',1,'1',1,1);
INSERT INTO t_package VALUES(9,'MPMS Specification and Configuration',0,'2022-05-23 23:47:50.0458818','2022-05-23 23:47:50.0458715','','{5BEEF931-53C8-4FE3-A607-71FACADE381B}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(132,'Configuration',9,'2022-10-14 11:42:13.2939978','2024-05-27 12:34:19','','{f753cac4-e9bd-4a77-a844-66a0d822b092}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(138,'Requirements',1,'2022-10-07 08:52:53','2022-11-16 10:31:59','','{AB2F52EB-8C65-4a4c-BDBC-E77DB114C1C8}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,1,'isModel=1;VICON=3;',0,0);
INSERT INTO t_package VALUES(140,'Tracing',138,'2022-10-10 10:23:44','2022-10-10 10:23:44','','{D7D976F0-4124-460c-9997-0FEBBCF2FBD2}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0);
INSERT INTO t_package VALUES(157,'Use Cases',1,'2022-11-07 09:10:42','2022-11-07 09:10:42','','{84586B2D-2C36-4b5a-ACF1-7C4E07B731C0}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,2,'isModel=1;VICON=3;',0,0);
INSERT INTO t_package VALUES(165,'SystemArchitecture',1,'2022-11-16 10:43:16','2022-11-16 10:43:17',NULL,'{88F6B56C-F756-4fe3-9C18-5153CF845ACA}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,3,'isModel=1;VICON=3;',NULL,NULL);
INSERT INTO t_package VALUES(166,'SystemArchitecture [{c8925f90-a9d2-cb1c-3d38-83c8dbd4e5bc}]',9,'2022-11-16 11:15:43.7215926','2024-05-27 12:34:20','','{65460cc6-e2e4-64a5-f6dc-38ad4481a7e9}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(341,'LT.Connect',138,'2023-03-21 20:00:04','2023-03-21 20:00:05',NULL,'{B9F97373-2170-4246-8571-ABD30B527AAA}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_package VALUES(368,'Requirements [{cc472323-774f-4f9b-608e-be83e3a4bae2}]',9,'2023-09-27 01:43:06.0145031','2024-05-27 12:34:20','','{82789660-0f01-66a1-4553-5f09bb604a78}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(373,'SaltModel',0,'2023-10-31 10:14:23','2023-10-31 10:14:23',NULL,'{F309900B-DF69-4290-9E98-26A13F7F6C37}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,'isModel=1;',NULL,NULL);
INSERT INTO t_package VALUES(375,'Requirement',373,'2023-10-31 10:14:45','2023-10-31 10:14:52',NULL,'{83EFE3B8-5A30-472e-8F09-1C644BF8252F}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,'isModel=1;VICON=3;',NULL,NULL);
INSERT INTO t_package VALUES(376,'LT.Connect.Salt',375,'2023-10-31 10:15:33','2023-10-31 10:15:33',NULL,'{E362C698-202B-4cc1-9861-BDAFAC0D6389}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_package VALUES(378,'Trace',373,'2023-10-31 10:16:04','2023-10-31 10:16:08',NULL,'{70FA894D-DD42-4aa9-B43C-586BBC0070E3}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,'isModel=1;VICON=3;',NULL,NULL);
INSERT INTO t_package VALUES(379,'Trace',378,'2023-10-31 10:17:13','2023-10-31 10:17:13',NULL,'{FB567CC3-3231-438a-B5BD-D43D0C03B5DA}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_package VALUES(381,'Trace [{7c125bb0-048c-9a33-1b8c-61d29b2e6d25}]',9,'2023-10-31 10:20:43.4288967','2024-05-27 12:34:20','','{85cee827-0063-a24a-2b72-8c03835841cb}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(382,'PolarionImport [{bce13ca7-48c1-ce39-776a-579caab6ad5d}]',9,'2023-10-31 10:21:00.396555','2024-05-27 12:34:20','','{38a81e41-5f41-23f7-230e-8824931a9982}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(387,'LL Project',138,'2024-04-22 11:22:36','2024-04-22 11:22:36','','{B08ECE39-3D2C-433f-8960-F5E8F44D07C3}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0);
INSERT INTO t_package VALUES(388,'UnitTest created ComponentInRootItem @14.02.2024 14:26:21',387,'2024-02-14 14:26:22','2024-02-14 14:26:22',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 14:26:21'),'{d4cd2d58-3526-7ce4-4f5c-9665f874e304}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(389,'LLExport',387,'2024-01-25 08:39:41','2024-01-25 08:39:41','','{8f010db8-3261-8e41-d6a1-06ddaeabca9c}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(390,'UnitTest created ComponentInRootItem @14.02.2024 10:17:55',387,'2024-02-14 10:17:56','2024-02-14 10:17:56',unistr('UnitTest\u000d\u000acreated Description @14.02.2024 10:17:55'),'{74f865c3-6dde-ddde-1617-cb721796fd44}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(391,'Walking Squirrel System',387,'2023-11-23 15:31:19','2023-11-23 15:31:50','','{403d091c-262a-4841-1051-546b2023d7fc}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(392,'ExportFromEA',387,'2024-01-31 09:51:49','2024-01-31 09:51:49','','{7feb9f4a-dbcc-d777-a364-2f1b38f82c03}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(393,'UnitTest created ComponentInRootItem @13.02.2024 16:15:36',387,'2024-02-13 16:15:37','2024-02-13 16:15:37',unistr('UnitTest\u000d\u000acreated Description @13.02.2024 16:15:36'),'{a1557144-39c8-1a49-a269-fd608b5b3a91}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(394,'Flying Squirrel System',387,'2022-09-06 13:19:10','2022-09-06 13:19:10','','{4c79d980-3bd8-92ba-aa25-a66112801b61}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(395,'Obsolete Items',387,'2024-02-01 09:38:11','2024-02-01 09:38:11','','{96285456-a8a3-1dbb-cabb-19b5f0993155}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(396,'System Requirements',392,'2024-02-13 09:09:02','2024-02-13 09:09:02','','{fdbb311b-993d-49f3-f89e-be4268cd766e}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(397,'System Requirements',394,'2022-09-06 13:19:37','2022-09-06 13:19:37','','{c43a6c49-5576-2d3f-a8d8-cf5749092d02}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(398,'Architectural Elements',394,'2022-09-06 13:19:26','2022-09-06 13:19:26','','{f6b570e4-946a-928d-7e7e-2c7bfd0a904a}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(399,'Defects',394,'2022-09-06 13:21:25','2022-09-06 13:21:25','','{a2a29df1-52a4-f4b2-d989-5eebda30f3af}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(400,'Stakeholder Requirements',394,'2022-09-06 13:18:27','2022-09-06 13:18:27','','{210e2ee0-4a13-3243-1a51-d679bbe7ee10}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(401,'System Verification Test Cases',394,'2022-09-06 13:20:04','2022-09-06 13:20:04','','{3523213a-2193-8def-a717-f761624fad8e}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(402,'Subsystem Requirements',394,'2022-09-06 13:19:46','2022-09-06 13:19:46','','{494e3170-0c78-1daa-2468-bff4163c02a4}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(403,'Change Requests',394,'2022-09-06 13:21:11','2022-09-06 13:21:11','','{53552ea6-2a46-2a9d-5f22-e8cb7e51e1f2}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(404,'User Stories',394,'2022-09-06 13:20:40','2022-09-06 13:20:40','','{66bc4614-4a7e-c534-27fa-e8262afa1c8c}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(405,'Behaviors',394,'2022-09-06 13:20:54','2022-09-06 13:20:54','','{7082c07b-fb71-bf57-682b-41840489c4ab}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(406,'Subsystem Verification Test Cases',394,'2022-09-06 13:20:27','2022-09-06 13:20:27','','{427a365c-7dda-3f88-8516-8969fc1b2f8b}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(407,'System Requirements Inside a Folder',397,'2022-09-06 13:33:07','2022-09-06 13:33:07','','{418e41da-c8f2-1dfd-2cdc-a5ca91ff1bec}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(408,'Functional Architecture',398,'2022-09-06 13:21:55','2022-09-06 13:21:55','','{7546b482-3d35-4dd0-53be-2de1478ffce6}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(409,'Folder of Requirements',400,'2022-09-06 13:30:57','2022-09-06 13:30:57','Folders are like containers and also function as section headings.','{b0cd4ea7-0928-328c-9498-686e6e55da34}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(410,'Physical Architecture',398,'2022-09-06 13:21:43','2022-09-06 13:21:43','','{c988efff-4ab8-1038-3dbc-c78c97de3031}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(411,'System-Subsystem Architecture',398,'2022-09-06 13:25:34','2022-09-06 13:25:34','','{7d2eb185-7360-9ffc-c736-dac12c16c282}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
INSERT INTO t_package VALUES(412,'Documentation',0,'2024-05-02 13:30:09','2024-05-02 13:30:09',NULL,'{964B4244-9C16-48ee-97A0-C0ED69E6F038}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,NULL,'isModel=1;',NULL,NULL);
INSERT INTO t_package VALUES(438,'DIAGRAMIMAGE',412,'2024-04-30 17:51:37','2024-05-02 13:31:50',NULL,'{9E823DCB-876D-4985-BE1A-2B141BDD120C}',NULL,0,NULL,NULL,'1.0',0,NULL,NULL,0,0,NULL,NULL,0,'isModel=1;VICON=3;',0,0);
INSERT INTO t_package VALUES(439,'Use Cases [{d3095554-4013-6b8a-8629-b582b167ca1d}]',9,'2025-08-01 11:36:59','2025-08-01 11:36:59','','{7812f569-a3c4-54de-5091-08d6754ecee4}',NULL,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0);
CREATE TABLE t_palette
(
	PaletteID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_paletteitem
(
	PaletteID INTEGER NULL,
	ItemID INTEGER NULL
);
CREATE TABLE t_phase
(
	PhaseID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	PhaseName TEXT NULL COLLATE NOCASE,
	PhaseNotes TEXT NULL COLLATE NOCASE,
	PhaseStyle TEXT NULL COLLATE NOCASE,
	StartDate TEXT NULL COLLATE NOCASE,
	EndDate TEXT NULL COLLATE NOCASE,
	PhaseContent TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_primitives
(
	Datatype TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_problemtypes
(
	ProblemType TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE,
	NumericWeight REAL NULL DEFAULT 1,
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_problemtypes VALUES('HW','Hardware related',1.0,'1');
INSERT INTO t_problemtypes VALUES('Network','Network problems',1.0,'Network issues');
INSERT INTO t_problemtypes VALUES('Perform','Performance',1.5,'Performance related problems');
INSERT INTO t_problemtypes VALUES('SW','Software',2.0,'Software related issues');
INSERT INTO t_problemtypes VALUES('User','User caused problem',1.0,'Problems caused by user');
CREATE TABLE t_projectroles
(
	Role TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Role name
	Description TEXT NULL COLLATE NOCASE,	-- Description of the Role
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_projectroles VALUES('Application Analyst','Define and model the application structure','1');
INSERT INTO t_projectroles VALUES('Business Analyst','Model business processes','1');
INSERT INTO t_projectroles VALUES('C++ Programmer','Programming in Visual C++','1');
INSERT INTO t_projectroles VALUES('Developer','Application development','1');
INSERT INTO t_projectroles VALUES('Java Programmer','Java programming','1');
INSERT INTO t_projectroles VALUES('Project Manager','Manage schedule','Manage the project schedule ');
INSERT INTO t_projectroles VALUES('Solution Architect','Lead Technical and Project Architect','Define and communicate application architecture');
INSERT INTO t_projectroles VALUES('Use Case Modeller','Use Case modelling ','1');
INSERT INTO t_projectroles VALUES('VB Programmer','Visual Basic Programming','1');
CREATE TABLE t_propertytypes
(
	Property TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_requiretypes
(
	Requirement TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Requirement Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of requirement
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_requiretypes VALUES('Display','System will display in a specified format',1.0,'Information will be displayed in a particular way');
INSERT INTO t_requiretypes VALUES('Functional','Functional Requirement',1.0,'Comments here');
INSERT INTO t_requiretypes VALUES('Performance','Performance based requirement',1.0,'The system must meet some performance criteria');
INSERT INTO t_requiretypes VALUES('Printing','System printing requirement',1.0,'The system will allow the user(s) to print out some artifact as required by the specification. ');
INSERT INTO t_requiretypes VALUES('Report','The system will roduce a report',1.0,'The system will have the facility to produce a report as required');
INSERT INTO t_requiretypes VALUES('Testing','Testing requirement',1.600000000000000088,'Testing requirement');
INSERT INTO t_requiretypes VALUES('Validate','Validate a particular rule',1.0,'The system will validate a specific rule as supplied in the business requirements');
CREATE TABLE t_resources
(
	Name TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Organisation TEXT NULL COLLATE NOCASE,
	Phone1 TEXT NULL COLLATE NOCASE,
	Phone2 TEXT NULL COLLATE NOCASE,
	Mobile TEXT NULL COLLATE NOCASE,
	Fax TEXT NULL COLLATE NOCASE,
	Email TEXT NULL COLLATE NOCASE,
	Roles TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_risktypes
(
	Risk TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Risk Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of Risk
	NumericWeight REAL NULL DEFAULT 0,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_roleconstraint
(
	ConnectorID INTEGER NOT NULL DEFAULT 0,
	'Constraint' TEXT NOT NULL COLLATE NOCASE,
	ConnectorEnd TEXT NOT NULL COLLATE NOCASE,
	ConstraintType TEXT NOT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_roleconstraint PRIMARY KEY (ConnectorID,'Constraint',ConnectorEnd,ConstraintType)
);
CREATE TABLE t_rtf
(
	Type TEXT NULL COLLATE NOCASE,
	Template TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_rtfreport
(
	TemplateID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	RootPackage INTEGER NULL DEFAULT 0,
	Filename TEXT NULL COLLATE NOCASE,
	Details INTEGER NULL DEFAULT 0,
	ProcessChildren INTEGER NULL DEFAULT 0,
	ShowDiagrams INTEGER NULL DEFAULT 0,
	Heading TEXT NULL COLLATE NOCASE,
	Requirements INTEGER NULL DEFAULT 0,
	Associations INTEGER NULL DEFAULT 0,
	Scenarios INTEGER NULL DEFAULT 0,
	ChildDiagrams INTEGER NULL DEFAULT 0,
	Attributes INTEGER NULL DEFAULT 0,
	Methods INTEGER NULL DEFAULT 0,
	ImageType INTEGER NULL DEFAULT 0,
	Paging INTEGER NULL DEFAULT 0,
	Intro TEXT NULL COLLATE NOCASE,
	Resources INTEGER NULL DEFAULT 1,
	Constraints INTEGER NULL DEFAULT 1,
	Tagged INTEGER NULL DEFAULT 0,
	ShowTag INTEGER NULL DEFAULT 0,
	ShowAlias INTEGER NULL DEFAULT 0,
	PDATA1 TEXT NULL COLLATE NOCASE,
	PDATA2 TEXT NULL COLLATE NOCASE,
	PDATA3 TEXT NULL COLLATE NOCASE,
	PDATA4 TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_rules
(
	RuleID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	RuleName TEXT NULL COLLATE NOCASE,
	RuleType TEXT NULL COLLATE NOCASE,
	RuleActive INTEGER NULL DEFAULT 0,
	ErrorMsg TEXT NULL COLLATE NOCASE,
	Flags TEXT NULL COLLATE NOCASE,
	RuleOCL TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	RuleXML TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_scenariotypes
(
	ScenarioType TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- scenario code
	Description TEXT NULL COLLATE NOCASE,	-- Description of scenario type
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_scenariotypes VALUES('Alternate','Alternate pathway',1.0,'Path of execution that includes exceptional conditions.');
INSERT INTO t_scenariotypes VALUES('Basic Path','Basic execution path',1.0,'The standard execution path with no exceptions');
INSERT INTO t_scenariotypes VALUES('Simple','Standard scenario',1.0,'Used to describe ordinary usage');
CREATE TABLE t_script
(
	ScriptID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ScriptCategory TEXT NULL COLLATE NOCASE,
	ScriptName TEXT NULL COLLATE NOCASE,
	ScriptAuthor TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Script TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secgroup
(
	GroupID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	GroupName TEXT NULL COLLATE NOCASE,
	Description TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secgrouppermission
(
	GroupID TEXT NOT NULL COLLATE NOCASE,
	PermissionID INTEGER NOT NULL DEFAULT 0,
	CONSTRAINT pk_secgrouppermission PRIMARY KEY (GroupID,PermissionID)
);
CREATE TABLE t_seclocks
(
	UserID TEXT NULL COLLATE NOCASE,
	GroupID TEXT NULL COLLATE NOCASE,
	EntityType TEXT NULL COLLATE NOCASE,
	EntityID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Timestamp TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	LockType TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secpermission
(
	PermissionID INTEGER NOT NULL PRIMARY KEY,
	PermissionName TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secpolicies
(
	Property TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Value TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secuser
(
	UserID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	UserLogin TEXT NULL COLLATE NOCASE,
	FirstName TEXT NULL COLLATE NOCASE,
	Surname TEXT NULL COLLATE NOCASE,
	Department TEXT NULL COLLATE NOCASE,
	Password TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_secusergroup
(
	UserID TEXT NOT NULL COLLATE NOCASE,
	GroupID TEXT NOT NULL COLLATE NOCASE,
	CONSTRAINT pk_secusergroup PRIMARY KEY (UserID,GroupID)
);
CREATE TABLE t_secuserpermission
(
	UserID TEXT NOT NULL COLLATE NOCASE,
	PermissionID INTEGER NOT NULL DEFAULT 0,
	CONSTRAINT pk_secuserpermission PRIMARY KEY (UserID,PermissionID)
);
CREATE TABLE t_snapshot
(
	SnapshotID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	SeriesID TEXT NULL COLLATE NOCASE,
	Position INTEGER NULL DEFAULT 0,
	SnapshotName TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Style TEXT NULL COLLATE NOCASE,
	ElementID TEXT NULL COLLATE NOCASE,
	ElementType TEXT NULL COLLATE NOCASE,
	StrContent TEXT NULL COLLATE NOCASE,
	BinContent1 BLOB NULL,
	BinContent2 BLOB NULL
);
CREATE TABLE t_statustypes
(
	Status TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE
);
INSERT INTO t_statustypes VALUES('Approved','Item is approved');
INSERT INTO t_statustypes VALUES('Implemented','Finished');
INSERT INTO t_statustypes VALUES('Mandatory','Required');
INSERT INTO t_statustypes VALUES('Proposed','Item has been proposed');
INSERT INTO t_statustypes VALUES('Validated','Approved and Checked');
CREATE TABLE t_stereotypes
(
	Stereotype TEXT NOT NULL COLLATE NOCASE,
	AppliesTo TEXT NOT NULL COLLATE NOCASE,
	Description TEXT NULL COLLATE NOCASE,
	MFEnabled INTEGER NULL,
	MFPath TEXT NULL COLLATE NOCASE,
	Metafile BLOB NULL,
	Style TEXT NULL COLLATE NOCASE,
	ea_guid TEXT NULL COLLATE NOCASE,
	VisualType TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_stereotypes PRIMARY KEY (AppliesTo,Stereotype)
);
INSERT INTO t_stereotypes VALUES('process','activity','A classifier whose instances represent a flow',0,'',NULL,'','{71810F48-CC41-4300-AD81-004FEDD0090B}','1');
INSERT INTO t_stereotypes VALUES('subscribe','association','Source class will be notified when an event occurs in target',0,'',NULL,'','{5733A225-65B8-4cbe-A3D2-2D58A0EABF0B}','1');
INSERT INTO t_stereotypes VALUES('column','AttribTable','A column attribute for a table',0,'',NULL,'','{D5D8FBC1-4FCF-4d65-A0E8-BFD9C821661A}','1');
INSERT INTO t_stereotypes VALUES('case worker','business class','A worker who directly interacts with actors outside the system',0,'',NULL,'','{15FB58F7-165E-421a-A133-68B2BF7E5489}','1');
INSERT INTO t_stereotypes VALUES('entity','business class','Passive class accessed and manipulated by workers',0,'',NULL,'','{91ED0FD6-3074-426e-A89C-843797C6D082}','1');
INSERT INTO t_stereotypes VALUES('internal worker','business class','A worker that interacts with other workers and entities inside the system.',0,'',NULL,'','{A6A83AA9-3AF1-4516-9915-B24DA8FEC9F7}','1');
INSERT INTO t_stereotypes VALUES('worker','business class','An abstraction of a human that works within the system.',0,'',NULL,'','{9560A979-37D3-4bae-9AD3-22FB443DB936}','1');
INSERT INTO t_stereotypes VALUES('object system','business model','Contains business process objects, work units, organization units and relationships',0,'',NULL,'','{03F5DF05-40E7-4c8a-BFD5-F9C2C3A3FF7E}','1');
INSERT INTO t_stereotypes VALUES('organization unit','business model','Subsystem corresponding to an organizational unit of the actual business',0,'',NULL,'','{7078273F-AC25-45c4-9831-9983D8008DB0}','1');
INSERT INTO t_stereotypes VALUES('work unit','business model','Subsystem with one or more entities',0,'',NULL,'','{8F46C87E-7FAF-4ce6-AFE1-B8732361D53B}','1');
INSERT INTO t_stereotypes VALUES('asp page','class','A Microsoft active server page',0,'',NULL,'','{B167750B-7296-4619-BA62-8E6327CB6F08}','1');
INSERT INTO t_stereotypes VALUES('boundary','class','Specifies an element that is at the system boundary (e.g.. User Interface)',0,'',NULL,'','{4E4AD79C-9943-45c8-AF24-EDD6367DFCB3}','1');
INSERT INTO t_stereotypes VALUES('client page','class','A class that represents a client based web page',0,'',NULL,'','{F61A0DAE-A762-4517-940E-784F0FA1503E}','1');
INSERT INTO t_stereotypes VALUES('clientscript','class','A collection of client-side scripts',0,'',NULL,'','{337E0608-C15C-4bfc-BB21-0C0D7153FD0F}','1');
INSERT INTO t_stereotypes VALUES('control','class','Specifies an element that controls the work and lifetimes of other objects',0,'',NULL,'','{DEDF83A5-70F9-4168-898D-A9F418EA9094}','1');
INSERT INTO t_stereotypes VALUES('entity','class','Specifies a persistent element mainly concerned with managing its own state',0,'',NULL,'','{91D2284B-1D60-4837-BD0C-982ED0727640}','1');
INSERT INTO t_stereotypes VALUES('enumeration','class','Specifies an enumerated type',0,'',NULL,'','{BD95B0D8-8B7E-45a6-A28A-92DEA2232986}','1');
INSERT INTO t_stereotypes VALUES('exception','class','An event may be thrown or caught by operation',0,'',NULL,'','{7071DB3D-613B-4c81-8E30-328B034D472B}','1');
INSERT INTO t_stereotypes VALUES('form','class','A class that represents a html form',0,'',NULL,'','{835079A2-FB51-4756-8FE9-AD1CCEC38E52}','1');
INSERT INTO t_stereotypes VALUES('frameset','class','A class that represents a html frame set',0,'',NULL,'','{5DC7FA5C-BD59-461a-9D4C-A63D172A63C5}','1');
INSERT INTO t_stereotypes VALUES('implementationClass','class','Implementation of a class in some programming language',0,'',NULL,'','{BFF9C0EA-D958-4332-8DDF-E91A68ACC15D}','1');
INSERT INTO t_stereotypes VALUES('interface','class','A collection of operations that specify a service of a class or component',0,'',NULL,'','{DD09AAED-2C67-42b9-A09B-B300B520D6BF}','1');
INSERT INTO t_stereotypes VALUES('jsp page','class','A java server page',0,'',NULL,'','{10B920EF-D214-4513-AAFE-D99ACA19B3D8}','1');
INSERT INTO t_stereotypes VALUES('model document','class','Set a class as an RTF "Model Document"',0,'',NULL,'','{EF07C8A6-C9F4-4177-91E2-A0E7DA880A6D}','1');
INSERT INTO t_stereotypes VALUES('powertype','class','A classifier whose objects are all children of a given parent',0,'',NULL,'','{AB77303F-923A-4743-8020-DF50689FD4F6}','1');
INSERT INTO t_stereotypes VALUES('process','class','A classifier whose instances represent a flow',0,'',NULL,'','{8E140B82-8213-4834-9AC4-4A075A6A70E7}','1');
INSERT INTO t_stereotypes VALUES('script library','class','A library of subroutines/functions for web pages',0,'',NULL,'','{6C012943-1901-4711-B440-5B3422F64BD7}','1');
INSERT INTO t_stereotypes VALUES('server page','class','A class that represents a server based web page',0,'',NULL,'','{CACFAD3E-2333-4621-A348-43C1F68A2AFC}','1');
INSERT INTO t_stereotypes VALUES('servlet','class','A java servlet component',0,'',NULL,'','{262AAD3A-4E3A-4d01-918C-550DDFB7E8BC}','1');
INSERT INTO t_stereotypes VALUES('signal','class','Specifies an asynchronous stimulus communicated amongst instances',0,'',NULL,'','{F3C46473-1432-479f-9256-7340E387D77B}','1');
INSERT INTO t_stereotypes VALUES('stereotype','class','The classifier is a stereotype that may be applied to other elements',0,'',NULL,'','{E8CAE24A-BF2E-48c3-8C53-E0E615F3E3BA}','1');
INSERT INTO t_stereotypes VALUES('table','class','A class that represents a database table',0,'',NULL,'','{37262B9F-B253-4c3b-8221-9DB2866C550C}','1');
INSERT INTO t_stereotypes VALUES('target','class','A class that represents a target',0,'',NULL,'','{7CB3B360-E0B8-46d9-9888-FA8D707315D4}','1');
INSERT INTO t_stereotypes VALUES('thread','class','A classifier whose instances represent a lightweight flow of control',0,'',NULL,'','{09D9E81C-E63A-4e0a-A200-95C78E839570}','1');
INSERT INTO t_stereotypes VALUES('type','class','An abstract class specifying the structure but not implementation of a set of objects',0,'',NULL,'','{BF26B109-05F5-447b-82E3-AA167A96BBB0}','1');
INSERT INTO t_stereotypes VALUES('utility','class','A class whose attributes and operations are all class-scoped',0,'',NULL,'','{7230810D-AA45-477d-A5B5-F819F34038AF}','1');
INSERT INTO t_stereotypes VALUES('web page','class','A html web page',0,'',NULL,'','{6D4762B8-F7F5-4b6c-BEA1-380688A7FE6F}','1');
INSERT INTO t_stereotypes VALUES('metaclass','classifier','A classifier whose objects are all classes',0,'',NULL,'','{FE34C8E0-27F3-4c43-8FFD-251821507741}','1');
INSERT INTO t_stereotypes VALUES('requirement','comment','Specifies a desired feature, property or behavior of system',0,'',NULL,'','{6EB38A93-12DA-476f-824E-752D98D5BDE6}','1');
INSERT INTO t_stereotypes VALUES('responsibility','comment','Specifies a contract by or an obligation of a class',0,'',NULL,'','{E1BC7CDF-A1B0-4b0a-A0B3-001DE360262A}','1');
INSERT INTO t_stereotypes VALUES('document','component','The component represents a document',0,'',NULL,'','{E8E2894B-3423-4bab-89C3-35920339AC15}','1');
INSERT INTO t_stereotypes VALUES('executable','component','A component may be executed on a node',0,'',NULL,'','{C688E040-304F-4b5e-A7FD-513CD34D051F}','1');
INSERT INTO t_stereotypes VALUES('file','component','Component represents a document containing source code',0,'',NULL,'','{29974BFC-2EDB-4621-8571-604D29795645}','1');
INSERT INTO t_stereotypes VALUES('library','component','Static or dynamic object library',0,'',NULL,'','{CB9F6C60-8599-40af-ADB4-AB7DEA763F6E}','1');
INSERT INTO t_stereotypes VALUES('table','component','A component that represents a database table',0,'',NULL,'','{9F8C01BD-08F9-4bbc-A658-137FBB44BC78}','1');
INSERT INTO t_stereotypes VALUES('invariant','constraint','Constrain must always hold for associated element',0,'',NULL,'','{19F67807-1707-4f25-A9F2-26C626837CF4}','1');
INSERT INTO t_stereotypes VALUES('postcondition','constraint','A constraint must hold after the invocation of an element',0,'',NULL,'','{B3DF0689-7A74-4ec7-B5FE-16184B7EED84}','1');
INSERT INTO t_stereotypes VALUES('precondition','constraint','A constraint that must hold before an element is invoked',0,'',NULL,'','{D3161CF8-A61B-4bd0-A97C-43F8DB68D7CA}','1');
INSERT INTO t_stereotypes VALUES('access','dependency','Public contents of target are accessible to namespace of source',0,'',NULL,'','{6CB20906-98EA-4571-8A54-349800D832FA}','1');
INSERT INTO t_stereotypes VALUES('bind','dependency','Source instantiates target template using given parameters',0,'',NULL,'','{F8339C87-569E-452f-A7CB-04BEE34D60E6}','1');
INSERT INTO t_stereotypes VALUES('call','dependency','Source invokes the target',0,'',NULL,'','{C206FD18-9EA2-4cac-8FB2-EA8CC0B78DDF}','1');
INSERT INTO t_stereotypes VALUES('derive','dependency','Source may be computed from target',0,'',NULL,'','{0E72428A-C82D-45ef-A30E-0ABEDCF44C8D}','1');
INSERT INTO t_stereotypes VALUES('friend','dependency','Source is given special visibility of target',0,'',NULL,'','{21E41B43-578A-4693-A40A-75DAD09E0533}','1');
INSERT INTO t_stereotypes VALUES('import','dependency','Public contents of target are imported into source namespace',0,'',NULL,'','{2F79337C-B0FF-49f6-BAF6-F131E58CC939}','1');
INSERT INTO t_stereotypes VALUES('instanceOf','dependency','The source object is an instance of the target',0,'',NULL,'','{C717775A-E535-4dbe-AC6E-F1FD3275439E}','1');
INSERT INTO t_stereotypes VALUES('instantiate','dependency','Operations on the source class create instances of the target class',0,'',NULL,'','{EBD02232-804C-404a-A375-00729E853810}','1');
INSERT INTO t_stereotypes VALUES('powertype','dependency','A classifier whose objects are all children of a given parent',0,'',NULL,'','{C8E795FA-7209-420e-9F11-E69F3C202F69}','1');
INSERT INTO t_stereotypes VALUES('refine','dependency','Source is at a finer degree of abstraction than source',0,'',NULL,'','{A5AE84F7-BE9D-4543-8B48-DEE80B6822AA}','1');
INSERT INTO t_stereotypes VALUES('send','dependency','The source sends the target an event',0,'',NULL,'','{E26BA0DF-0E74-493c-9175-FB6C07294526}','1');
INSERT INTO t_stereotypes VALUES('trace','dependency','The target is an historical ancestor of source',0,NULL,NULL,NULL,'{0B6FF471-1068-4d5b-8943-BAF44EEA1075}',NULL);
INSERT INTO t_stereotypes VALUES('use','dependency','The semantics of the source depend on the public part of the target',0,NULL,NULL,NULL,'{C491F9CC-2870-4b92-A41E-6CFC6444585A}',NULL);
INSERT INTO t_stereotypes VALUES('implementation','generalization','Child inherits implementation of parent but does not support its interfaces',0,'',NULL,'','{053F34B2-2D6D-4f7a-956B-495BD445714D}','1');
INSERT INTO t_stereotypes VALUES('button','GUIElement','A button GUI element',0,'',NULL,'','{06135D22-A097-416f-92FA-987D2584C6CC}','1');
INSERT INTO t_stereotypes VALUES('checkbox','GUIElement','A checkbox GUI element',0,'',NULL,'','{B9E22B1D-6A2C-428b-8AD5-A34A914FAD9E}','1');
INSERT INTO t_stereotypes VALUES('combobox','GUIElement','A combo box GUI element',0,'',NULL,'','{A3070D88-FE3E-4e95-81DA-FA4AF44808DA}','1');
INSERT INTO t_stereotypes VALUES('date','GUIElement','A GUI element for date entry',0,'',NULL,'','{7C0BE86D-F945-45c0-AC70-5FA665D05FDA}','1');
INSERT INTO t_stereotypes VALUES('dialog','GUIElement','A GUI screen',0,'',NULL,'','{AAD74514-3F08-41a5-85F5-0C95B61771BC}','1');
INSERT INTO t_stereotypes VALUES('dropdown','GUIElement','A GUI element that forces user selection',0,'',NULL,'','{FFD657A8-4A92-4adf-A03B-F3B31FC71B5C}','1');
INSERT INTO t_stereotypes VALUES('form','GUIElement','A GUI screen',0,'',NULL,'','{EE882821-0ED1-4f41-8CCA-A8FC788E2CFA}','1');
INSERT INTO t_stereotypes VALUES('hline','GUIElement','1',0,'',NULL,'','{C6F35891-C53B-400c-AF53-82CC366B546C}','1');
INSERT INTO t_stereotypes VALUES('list','GUIElement','A List of Information',0,'',NULL,'','{6A490A7A-D312-4461-9422-F4C460E3DB69}','1');
INSERT INTO t_stereotypes VALUES('listview','GUIElement','A stand list view control',0,'',NULL,'','{3B801B89-9F09-4af2-A49B-8C881F75E11C}','1');
INSERT INTO t_stereotypes VALUES('panel','GUIElement','A GUI element for grouping other controls',0,'',NULL,'','{DD474DE5-8D0A-4f13-8CAE-2DB8CF7415B4}','1');
INSERT INTO t_stereotypes VALUES('radio','GUIElement','A radio button GUI element',0,'',NULL,'','{DE3729AA-27E5-403a-8F60-0476E2E6B75E}','1');
INSERT INTO t_stereotypes VALUES('report','GUIElement','A List of Information with an expandable text field',0,'',NULL,'','{0A3C45E1-D955-4efc-A4A7-F43AC60E5C4A}','1');
INSERT INTO t_stereotypes VALUES('tab','GUIElement','A tab control GUI element',0,'',NULL,'','{7260C228-6021-4fbd-92E9-EFAB6FC4BA75}','1');
INSERT INTO t_stereotypes VALUES('textbox','GUIElement','A GUI element for user text entry',0,'',NULL,'','{FC3114BB-0DB5-4984-84DB-5E91B146C053}','1');
INSERT INTO t_stereotypes VALUES('time','GUIElement','A GUI element for time entry',0,'',NULL,'','{8E9A9CEF-1763-412f-8245-8B3825AB572D}','1');
INSERT INTO t_stereotypes VALUES('treelist','GUIElement','A List of Information with a tree structure',0,'',NULL,'','{E68399C3-DC96-4f4e-9C84-ACE8BD7B4B24}','1');
INSERT INTO t_stereotypes VALUES('vline','GUIElement','1',0,'',NULL,'','{4569978B-EEB0-4615-859E-82D4E70DE227}','1');
INSERT INTO t_stereotypes VALUES('global','link end','Corresponding object is visible because of enclosing scope',0,'',NULL,'','{EF83A756-4D9F-44ad-B2D5-16E4EF5D8299}','1');
INSERT INTO t_stereotypes VALUES('local','link end','The corresponding object is visible in local scope',0,'',NULL,'','{82B30B5C-3126-45c8-A22B-E28445A54270}','1');
INSERT INTO t_stereotypes VALUES('parameter','link end','The corresponding element is visible because it is a parameter',0,'',NULL,'','{41DFF9C0-EEDF-4db4-B8B7-37DDEC803E66}','1');
INSERT INTO t_stereotypes VALUES('self','link end','The corresponding object is visible because it is the dispatcher',0,'',NULL,'','{21CA3136-0BE2-491c-A3C1-3C40C2E25C33}','1');
INSERT INTO t_stereotypes VALUES('become','message','Target is same as source but later in time',0,'',NULL,'','{3D576863-30B2-47ac-A481-01CD87B797E0}','1');
INSERT INTO t_stereotypes VALUES('copy','message','Target is exact but independent copy of source',0,'',NULL,'','{C7554656-F096-4127-9A39-0893487F263C}','1');
INSERT INTO t_stereotypes VALUES('create','message','Target is created by event or message',0,'',NULL,'','{2C3E14ED-7F0B-40a7-8465-5272B32B30F2}','1');
INSERT INTO t_stereotypes VALUES('destroy','message','Target is destroyed by event or message',0,'',NULL,'','{F113A878-E2A0-49ef-B49F-C8BB3210BFDC}','1');
INSERT INTO t_stereotypes VALUES('analysis system','model','Contains analysis classes - entities, boundaries and control elements',0,'',NULL,'','{EC079A8E-A9C3-4ee1-94DB-756701CFA031}','1');
INSERT INTO t_stereotypes VALUES('design system','model','Contains design elements',0,'',NULL,'','{D9F601B5-E50B-48ee-8B46-1C4A92413543}','1');
INSERT INTO t_stereotypes VALUES('implementation system','model','Contains implementation subsystems and/or components and relationships',0,'',NULL,'','{1671B375-281D-4b3c-A3FC-F744DA19BB4C}','1');
INSERT INTO t_stereotypes VALUES('use case system','model','Specifies the services offered to the users',0,'',NULL,'','{7C80ED7F-5E54-4ee1-844A-6F96306EBE61}','1');
INSERT INTO t_stereotypes VALUES('cd-rom','node','A class that represents a CDRom drive',0,'',NULL,'','{2A8A66F4-EBEE-46ef-8BB2-6F4071A73E0A}','1');
INSERT INTO t_stereotypes VALUES('cdrom','node','A class that represents a CDRom drive',0,'',NULL,'','{4E289F96-F2E2-4498-B8E6-AC39CC4C6727}','1');
INSERT INTO t_stereotypes VALUES('computer','node','A class that represents a computer',0,'',NULL,'','{D5E2DA48-CD0A-4e56-98C2-A9CBB894161A}','1');
INSERT INTO t_stereotypes VALUES('disk array','node','A class that represents a disk array',0,'',NULL,'','{A4EE1053-3F8D-4178-A47B-4DCF92BA1A0C}','1');
INSERT INTO t_stereotypes VALUES('pc','node','A class that represents a personal computer',0,'',NULL,'','{68829EE3-1CA0-440d-AFF1-34E568D86BBF}','1');
INSERT INTO t_stereotypes VALUES('pc client','node','A class that represents a clients PC',0,'',NULL,'','{4555CDD9-1311-40d8-A3AC-68E26BE467F9}','1');
INSERT INTO t_stereotypes VALUES('pc server','node','A class that represents a PC server',0,'',NULL,'','{520514EB-7D6B-4a68-8DDC-C66F1C561BC1}','1');
INSERT INTO t_stereotypes VALUES('secure','node','A class that represents aet',0,'',NULL,'','{2ACD98BA-939D-4f08-AD57-94B77BCE0B3A}','1');
INSERT INTO t_stereotypes VALUES('server','node','A class that represents a server',0,'',NULL,'','{DE710949-EE73-4cc5-8B7B-720D13B1813E}','1');
INSERT INTO t_stereotypes VALUES('storage','node','A class that represents a storage device',0,'',NULL,'','{7726C9B9-68D1-46e8-81A0-8CFC545514AB}','1');
INSERT INTO t_stereotypes VALUES('unix server','node','A class that represents a Unix server',0,'',NULL,'','{AE67D6E4-27A5-4471-8CC9-E31F4F7ED80B}','1');
INSERT INTO t_stereotypes VALUES('user pc','node','A class that represents a users PC',0,'',NULL,'','{D0FDD66E-B23A-43f2-84D1-F96D817D94C9}','1');
INSERT INTO t_stereotypes VALUES('check','OpTable','A Check constraint to enforce domain integrity',0,'',NULL,'','{6A3F419E-A2B2-4d98-B324-26210C413C79}','1');
INSERT INTO t_stereotypes VALUES('FK','OpTable','A Foreign Key',0,'',NULL,'','{B4AE8B20-41B2-4a4b-BB21-18435CEF7D4E}','1');
INSERT INTO t_stereotypes VALUES('index','OpTable','An index of one or more columns',0,'',NULL,'','{91B0F130-0D48-44e8-A825-98DCF0E22689}','1');
INSERT INTO t_stereotypes VALUES('PK','OpTable','A Primary Key',0,'',NULL,'','{9AD32515-7A72-49dc-AF02-7B0168F8FC5E}','1');
INSERT INTO t_stereotypes VALUES('proc','OpTable','A stored procedure',0,'',NULL,'','{89CFBA0F-1E6D-4e3b-9A8A-7902B84B9B65}','1');
INSERT INTO t_stereotypes VALUES('trigger','OpTable','A trigger which executes automatically when an UPDATE, INSERT, or DELETE statement is issued',0,'',NULL,'','{757512B8-39A8-47e9-9EF7-E9F7C5756A52}','1');
INSERT INTO t_stereotypes VALUES('unique','OpTable','A Unique constraint to enforce the integrity of a database automatically',0,'',NULL,'','{F0611E50-EDDD-4176-B452-80C7B0423C4B}','1');
INSERT INTO t_stereotypes VALUES('facade','package','Package is a view of another concrete package',0,'',NULL,'','{5CCF4D15-82FC-4669-8AF6-F8AB22FA68DF}','1');
INSERT INTO t_stereotypes VALUES('framework','package','Package consists mainly of patterns',0,'',NULL,'','{D00FB7C4-0437-4fd5-9ECC-DB3DF0826DD9}','1');
INSERT INTO t_stereotypes VALUES('model','package','A semantically closed abstraction of a system',0,'',NULL,'','{D4340DE9-BE6E-44b1-BFF8-0377FE1D359A}','1');
INSERT INTO t_stereotypes VALUES('stub','package','A package serves as a proxy for the public contents of another package',0,'',NULL,'','{9EF86E3D-74E7-4553-942E-3CD8C344C583}','1');
INSERT INTO t_stereotypes VALUES('subsystem','package','A grouping of elements that constitute a specification of behavior offered by other contained elements',0,'',NULL,'','{A779F791-E39E-42ca-9418-41800586F5CB}','1');
INSERT INTO t_stereotypes VALUES('system','package','A package representing the entire system being modeled',0,'',NULL,'','{CB1B2F52-8FAD-43aa-A151-6215F7A26486}','1');
INSERT INTO t_stereotypes VALUES('communicate','uses','Communication between actor and use case',0,'',NULL,'','{9C3BB5B1-C6F2-4510-90A0-33AF2AE18F9E}','1');
INSERT INTO t_stereotypes VALUES('extend','uses','Target use case extends the source at a given extension point',0,'',NULL,'','{4FD9AEC1-D4EF-4bcf-930B-272E7E737A58}','1');
INSERT INTO t_stereotypes VALUES('include','uses','Source use case explicitly includes the behavior of target',0,'',NULL,'','{91214BEE-D24D-4103-BD83-167B4B5809E6}','1');
INSERT INTO t_stereotypes VALUES('MPMS Spec Metadata','Class',NULL,0,NULL,NULL,NULL,'{a81560c2-4888-7147-a2a7-90e3a8ec934d}',NULL);
INSERT INTO t_stereotypes VALUES('MPMS Model Dependency','Class',NULL,0,NULL,NULL,NULL,'{e84eb4c8-5415-e9e8-fcdd-096713c4d576}',NULL);
INSERT INTO t_stereotypes VALUES('MPMS Spec','Package',NULL,0,NULL,NULL,NULL,'{ca9963d3-753c-6215-6037-19b8d39a1232}',NULL);
INSERT INTO t_stereotypes VALUES('testcase','UseCase','testcase',0,NULL,NULL,NULL,'{AF1553DE-385F-4e4c-A623-809F65F23C71}',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingEvent','Event','AUTOSAR_TimingEvent',0,NULL,NULL,NULL,'{257391BF-C599-44cc-8987-F894064E4385}',NULL);
INSERT INTO t_stereotypes VALUES('MPMS Dependency','Class',NULL,0,NULL,NULL,NULL,'{98bced8a-4176-3865-4070-c9a60e1a9b1c}',NULL);
INSERT INTO t_stereotypes VALUES('MPMS Configuration','Package',NULL,0,NULL,NULL,NULL,'{5ffeebba-abc5-e0f4-3ea2-cd01e58c0147}',NULL);
INSERT INTO t_stereotypes VALUES('generated','Attribute','generated',0,NULL,NULL,NULL,'{42ED70E8-C43F-4b49-B607-809F4067A8DA}',NULL);
INSERT INTO t_stereotypes VALUES('Functional','Requirement','Functional',0,NULL,NULL,NULL,'{B2DB6DB7-04C1-4806-80FD-C33257AC5596}',NULL);
INSERT INTO t_stereotypes VALUES('EAUML::Image','Artifact','EAUML::Image',0,NULL,NULL,NULL,'{A9CAA2DF-F715-4409-952F-7407F10340BB}',NULL);
INSERT INTO t_stereotypes VALUES('enum','EnumerationLiteral','enum',0,NULL,NULL,NULL,'{F54454D2-F7E2-4e10-8635-937A28118F1E}',NULL);
INSERT INTO t_stereotypes VALUES('extend','usecaselink','extend',1,NULL,NULL,'<STYLE fill="-1" text="-1" border="-1" groupname="" type="metafile"/>','{7D5392F4-256C-489c-918A-6445434D614D}',NULL);
INSERT INTO t_stereotypes VALUES('base_AUTOSAR','Dependency','base_AUTOSAR',0,NULL,NULL,NULL,'{E2E9ECE6-A84D-4d0e-A0D2-BF78CBD6A5FD}',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwPinGroups','Dependency',NULL,0,NULL,NULL,NULL,'D158D26EC48A036CCE68CD341E4296F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DocumentationBlock','Class',NULL,0,NULL,NULL,NULL,'919C940CDA0D9FE4D9159D859B25D602',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EmphasisText','Class',NULL,0,NULL,NULL,NULL,'57C9C23E9F2574DB724A9873FD2ECAD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildActionInvocator','Class',NULL,0,NULL,NULL,NULL,'3BB3386EEFB566E420D83FC476D7DF94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939NmNode','Class',NULL,0,NULL,NULL,NULL,'9E3FC9679348924880972E4EEAB7601E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventManagerNeeds','Class',NULL,0,NULL,NULL,NULL,'DE7C677792CE9AF9DB6BEB7B45D7200E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwDataDefPropsConditional','Class',NULL,0,NULL,NULL,NULL,'310B3247FB6D5C7DD014AB921E5E26A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_notifierDataElement','Dependency',NULL,0,NULL,NULL,NULL,'FB6503EDD1FD852E71FB7601BDED606E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trueActionList','Dependency',NULL,0,NULL,NULL,NULL,'4E27C8EF31F9692E4ABECDC316ED7217',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getterCallSignal','Dependency',NULL,0,NULL,NULL,NULL,'E70908815E7B0B926985FB63322F56E4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStorageConditionPortMapping','Class',NULL,0,NULL,NULL,NULL,'B4F08591D0DC7A735C0719855A9CCA48',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestFileTransferClass','Dependency',NULL,0,NULL,NULL,NULL,'06997B765591C6EE7EADA9B199E18599',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ethernetRawDataStreamMapping','Dependency',NULL,0,NULL,NULL,NULL,'37A08F5003DE6FE6FA4DB92812385D6D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DynamicPart','Class',NULL,0,NULL,NULL,NULL,'9A4412E42047E2F1601F989E67BCEB39',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorCanIdRangeMapping','Class',NULL,0,NULL,NULL,NULL,'C4D3FFA36021A29F1FCE174211DBE2C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requester_contextComponent','Dependency',NULL,0,NULL,NULL,NULL,'919E3ABA172E6BF057B4969B9235CA75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestEmissionRelatedDtcClass','Dependency',NULL,0,NULL,NULL,NULL,'AD297E42D74DBBFEBB250AADF48CAF0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targets','Dependency',NULL,0,NULL,NULL,NULL,'BCBB75683642DFE5EDAB5BBBCFEB6420',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstModes','Dependency',NULL,0,NULL,NULL,NULL,'498EDAD152EE8C627ECA452CF63E2A7E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_memoryDestination','Dependency',NULL,0,NULL,NULL,NULL,'1F0D1C680749E386B260CCC4EC0A2EF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureComPropsSet','Class',NULL,0,NULL,NULL,NULL,'26441DC9B1016D356DE81C66C26A7A13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConstantSpecificationMapping','Class',NULL,0,NULL,NULL,NULL,'EAC311903FC0A1129D969AC6173D65AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestEmissionRelatedDTC','Class',NULL,0,NULL,NULL,NULL,'85762BFD37CB49834363369BA347EE91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlPncs','Dependency',NULL,0,NULL,NULL,NULL,'0A62DF7DF20AAD7058FB26EC795426AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_behavior','Dependency',NULL,0,NULL,NULL,NULL,'66E2937A3FAF57B60EBBE69A67BA1BBC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationGroupPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'73E4F0A33C3C82AD8B75E6D6B73DF072',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswVariableAccess','Class',NULL,0,NULL,NULL,NULL,'6F8046F37B0723EF7A88A679E8C21058',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CalibrationParameterValueSet','Class',NULL,0,NULL,NULL,NULL,'0B5AC64D975CD5ECE28CF85BECAC6D03',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_notifierSignalTriggering','Dependency',NULL,0,NULL,NULL,NULL,'22735EC3640242E47C457A988D3FD0E4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedFibexElements','Dependency',NULL,0,NULL,NULL,NULL,'2814CA522760E1456B1853CF9AE896F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticServiceTable','Dependency',NULL,0,NULL,NULL,NULL,'EC5708E781DAA2554C57F6CAEACAEE64',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ValueGroup','Class',NULL,0,NULL,NULL,NULL,'D58993E04BE58EB67A2A14879AB31C56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CommonSignalPath','Class',NULL,0,NULL,NULL,NULL,'AA84716CD8E6192A2130A7A3041D578E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimAliasEventGroup','Class',NULL,0,NULL,NULL,NULL,'F278EB10C910A47C5A929AFC7D825A8E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transformingSystemSignal','Dependency',NULL,0,NULL,NULL,NULL,'9B59CF51BA560F7E3ED5D314A4A7CEC6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LVerbatim','Class',NULL,0,NULL,NULL,NULL,'5147C6C093337FFEA9805AAF90EB5DF7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceInstances_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'86E79962CE5DE9FB6AA101D362E6CBB4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timingEvent','Dependency',NULL,0,NULL,NULL,NULL,'56A0AB7ECC978B139BA458D22FF951C1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Xref','Class',NULL,0,NULL,NULL,NULL,'D4FDB5D98EB8A0C9FD2B61F63E9BE21B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConcretePatternEventTriggering','Class',NULL,0,NULL,NULL,NULL,'AAA039970787B11C5F7263647DE20FA1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ErrorTracerNeeds','Class',NULL,0,NULL,NULL,NULL,'BFAC51ECE5A0EA5BC66AFD8EEA007CA2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataTransformationSet','Class',NULL,0,NULL,NULL,NULL,'AA5BDA60E062721FC51B4424A56C096D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GenericModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'C15C213271C52959486F66DFC5831A91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServerComSpec','Class',NULL,0,NULL,NULL,NULL,'9A3FDA7F8FC57A3D1705307A38580701',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PureLocalTimeBase','Class',NULL,0,NULL,NULL,NULL,'400AE02E6D9C196171DA31F0335C4BDB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedOperation_targetOperation','Dependency',NULL,0,NULL,NULL,NULL,'7BDE4BB4BB6642D0AEDF85360802DA01',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariableAccess','Class',NULL,0,NULL,NULL,NULL,'DA1E24874824E8379360B483AF44C7C6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeGroup','Dependency',NULL,0,NULL,NULL,NULL,'B64F5B019909F5962DF3B1838CFD8599',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rteEvents_targetRteEvent','Dependency',NULL,0,NULL,NULL,NULL,'ABD5E56569F34431695F52AC6B156BC1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsistencyNeeds','Class',NULL,0,NULL,NULL,NULL,'F1E540BBFAC33223F9815F42D1C2778B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_deployment','Dependency',NULL,0,NULL,NULL,NULL,'29C92216822710A8D7ECE8B6460B3837',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuScaleConstantContents','Class',NULL,0,NULL,NULL,NULL,'405AF9ABC3EE7D9FC68E0079996ABDC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_environmentalCondition','Dependency',NULL,0,NULL,NULL,NULL,'E3D023DDBFC5C7349E00A4484CD4E843',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'7D9488C564F3653BD27917F027530385',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswBehavior','Dependency',NULL,0,NULL,NULL,NULL,'6A80B7233648E7F73105731247A700C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FunctionGroupModeRequestPhmActionItem','Class',NULL,0,NULL,NULL,NULL,'AFA10AC8819094DC53E2C8E0C7575382',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operation_targetRequiredOperation','Dependency',NULL,0,NULL,NULL,NULL,'F60B37CB2AF4EDFC4AEFD53FEDC8E42A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_globalTimePduTriggering','Dependency',NULL,0,NULL,NULL,NULL,'B14A7DAF261F594B3FDEDEECCD943E42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ImplementationDataType','Class',NULL,0,NULL,NULL,NULL,'A7315CD0A62D08EB91EA32C28CCE321F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationDataType','Dependency',NULL,0,NULL,NULL,NULL,'1C1270DEFD8853017ED7C2632EB441E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_spns','Dependency',NULL,0,NULL,NULL,NULL,'604FD018CA0164E3857F61840AC71A43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintGenerator','Class',NULL,0,NULL,NULL,NULL,'668B58905719B0447D8D678B8FD215A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeCouplingPortProps','Class',NULL,0,NULL,NULL,NULL,'D623D433ADFF5A87D71F38E7C7ADCF0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implicitDataAccess_context','Dependency',NULL,0,NULL,NULL,NULL,'AB568583CD253181A649FA60D3C9039F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portInterface','Dependency',NULL,0,NULL,NULL,NULL,'3C388F894DEAE5EC7C93B4C9E44DCD16',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstElements','Dependency',NULL,0,NULL,NULL,NULL,'1D7D874FDE89BDAB2076B4D504B4C08D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswDistinguishedPartition','Class',NULL,0,NULL,NULL,NULL,'6877CFE5C1D66F91E19C46EB351045AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NonqueuedReceiverComSpec','Class',NULL,0,NULL,NULL,NULL,'37D7628F78B2883B925C85A03D56EE06',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgPrimitiveAttributeWithVariation','Class',NULL,0,NULL,NULL,NULL,'8F89104C39879C7EB9088699803E285F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticConnectionRefConditional','Class',NULL,0,NULL,NULL,NULL,'E489E595AF2EAB486E9A941DD3B51F99',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextOperation','Dependency',NULL,0,NULL,NULL,NULL,'29EDEE7769D1E3C2DBDF7545FA3D4EA1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McGroup','Class',NULL,0,NULL,NULL,NULL,'90B47EC6CCD9974093ECA5091E132D50',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuInstanceProps','Class',NULL,0,NULL,NULL,NULL,'8FF1B8CEB76FC6619CC53827C26842EF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdPidServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'35D1B6982BAC78F5BA9334BC575DB05A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Topic1','Class',NULL,0,NULL,NULL,NULL,'DA75CFF64B3DDBDC0E2A578F218BB761',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerArrayTypeMapping','Class',NULL,0,NULL,NULL,NULL,'049D32E484EBD141CCD470E0367025E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_securityLevels','Dependency',NULL,0,NULL,NULL,NULL,'86EF58C511B9C9A522AE338AB98EEF6B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwType','Dependency',NULL,0,NULL,NULL,NULL,'949637CB1B64497270D7CCF4859D0E37',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_securityAccessClass','Dependency',NULL,0,NULL,NULL,NULL,'9F1CE9472A8D8C5F1B969FBD150A3B17',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_constant','Dependency',NULL,0,NULL,NULL,NULL,'157276BF2A9108805A519CE59DDA2507',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeFrMaster','Class',NULL,0,NULL,NULL,NULL,'9E60F1E6E855D99434C85EE85EA15B35',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedISignalIPduGroups','Dependency',NULL,0,NULL,NULL,NULL,'459510D617896A2367CC734FA9BA0835',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucDestinationUriPolicy','Class',NULL,0,NULL,NULL,NULL,'4D178EB982C0B929F9F22FC22127BD13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modes_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'5BF7253EB69C0B9E6A3C70B1886BBD73',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototypeBlueprint','Dependency',NULL,0,NULL,NULL,NULL,'E7D330627159F503F5CB3D4FD0735642',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AclPermission','Class',NULL,0,NULL,NULL,NULL,'F70656CA2BE0F5E89185606CCB6E558B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuInstance','Dependency',NULL,0,NULL,NULL,NULL,'8467B9EA54455F84D7819C4C6FABAFA9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RecoveryViaApplicationActionToClientServerOperationMapping','Class',NULL,0,NULL,NULL,NULL,'DF04E778DE29D76C5FF12B66DEF5F711',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'6405938E289009F726A02B2DD63AF980',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RuleBasedValueCont','Class',NULL,0,NULL,NULL,NULL,'8C368BEEEBFDDBE5FDFC0C7974ACE73C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_customDocumentElement','Dependency',NULL,0,NULL,NULL,NULL,'E9E161E5748AB86FA6C69C72BC6F3DCD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswAsynchronousServerCallReturnsEvent','Class',NULL,0,NULL,NULL,NULL,'981EAA96347A47325FC8821F3368A9DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dtcProps','Dependency',NULL,0,NULL,NULL,NULL,'E95262296EA5CA9815C9F8B56E6497B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPinConnector','Class',NULL,0,NULL,NULL,NULL,'2082874850DEFE8AD512A18C138A857C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_field_targetField','Dependency',NULL,0,NULL,NULL,NULL,'CADC47B1F308A7474B325B9A6AD18BB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceMethod','Dependency',NULL,0,NULL,NULL,NULL,'8706B9F5B7D433C998EEBB76C8659541',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecu','Dependency',NULL,0,NULL,NULL,NULL,'32A1BAAC3C9D38E8BB10C30F565461F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMeasurementIdentifier','Class',NULL,0,NULL,NULL,NULL,'4AD9FF58AAC7154F8FB406872AF6F754',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlvDataIdDefinition','Class',NULL,0,NULL,NULL,NULL,'0E7955FF804CD792D6A10E70EAA3EFBA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PostBuildVariantCriterionValueSet','Class',NULL,0,NULL,NULL,NULL,'F05ABCC83501718AAFBB3803FFA0FD91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRunnableEntityGroup','Dependency',NULL,0,NULL,NULL,NULL,'F873108C969273BA7C946A6A8810867A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swRecordLayout','Dependency',NULL,0,NULL,NULL,NULL,'564F0D88C0A08A96F2B0D9FBF9B68CE7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationMapping','Class',NULL,0,NULL,NULL,NULL,'B21669C651C82E00E83FDA7268A09FE4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPSecRule','Class',NULL,0,NULL,NULL,NULL,'7C0CF7E1BD2AA6808EC9270E280D052E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinTpNode','Class',NULL,0,NULL,NULL,NULL,'D5821A416FA87E9A40D6122A60E15C13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucIntegerParamDef','Class',NULL,0,NULL,NULL,NULL,'D7CDE47B1CB0BC99A2A04831F2184A57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRteEvent','Dependency',NULL,0,NULL,NULL,NULL,'7FAD85171C2A25B4D9C653B644ED054C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTypes','Dependency',NULL,0,NULL,NULL,NULL,'11B6AB9235FDABD9CE8F5D07CD6EAAFF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElements_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'CDE4BFA915C1C2C1AC0ABED8451300ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwCalprmAxisSet','Class',NULL,0,NULL,NULL,NULL,'3A4E5299CCA6E9651D552A38141B76E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearConditionGroup','Class',NULL,0,NULL,NULL,NULL,'D33EE4A46EB3B55609C7245823023142',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataIdentifierSetRefConditional','Class',NULL,0,NULL,NULL,NULL,'0956086000F84964341B141A16F3013C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_cryptoServiceQueue','Dependency',NULL,0,NULL,NULL,NULL,'2BDF181403ED53BE03EF12D9DB7BA25F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPSecConfigProps','Class',NULL,0,NULL,NULL,NULL,'F2FA57A37A32626A4D939543436CA8DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DevelopmentError','Class',NULL,0,NULL,NULL,NULL,'B0C7243CD1E66E229B50BD9F65EC5C56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operationArgumentInstance_context','Dependency',NULL,0,NULL,NULL,NULL,'860A99386E999152A72F609D893E2B43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyRedundancyMOutOfN','Class',NULL,0,NULL,NULL,NULL,'F1FC3981454EF64FEECE1C359BFC0574',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swComponentPrototype_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'CB8623737CB9D68D39DABC0B08C7BC92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_responseError','Dependency',NULL,0,NULL,NULL,NULL,'ED878F05C5ACD849F8F286B1D6F683A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingConditionFormula','Class',NULL,0,NULL,NULL,NULL,'A1FE4B95A41FCE8E1AE8F6C661903F52',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StartupConfigSet','Class',NULL,0,NULL,NULL,NULL,'D45D8EEF08EE47DB523CE3E99997C550',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeature','Class',NULL,0,NULL,NULL,NULL,'C9A03EFB26F0209762B57B6D2B4418CB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsFieldDeployment','Class',NULL,0,NULL,NULL,NULL,'0DB27521A83BAA292AB3AB715C70D210',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_blueprint','Dependency',NULL,0,NULL,NULL,NULL,'8ACEB92A30E0AA6122C246F2D3155864',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Br','Class',NULL,0,NULL,NULL,NULL,'B609324BD6E85F266EFF0ABCFF0B8FDB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_successors','Dependency',NULL,0,NULL,NULL,NULL,'10B5754EBDAF4F59BF33283BE98B4DE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_disabledModes_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'47C28D1001C8835AA321650D0CF5D351',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceMethodMapping','Class',NULL,0,NULL,NULL,NULL,'98D34574551CF7555C6A0C98F6B15574',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Caption','Class',NULL,0,NULL,NULL,NULL,'E35A69AB20404BEA47867C8AB529D146',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterInstance_autosarParameter_port','Dependency',NULL,0,NULL,NULL,NULL,'52514DD50C359FC62409AAACB956297D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Executable','Class',NULL,0,NULL,NULL,NULL,'46924B444FFA1DD622062AD5CB483338',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchEventTriggeredActivity','Class',NULL,0,NULL,NULL,NULL,'92D115EF666807CEFE307A74EABD862D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McFunctionDataRefSet','Class',NULL,0,NULL,NULL,NULL,'BE8790E60E22EA29C85744D05F3BDB9B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestControlOfOnBoardDeviceClass','Class',NULL,0,NULL,NULL,NULL,'1C0AB924C063223B202C710884FDE407',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRootSwComposition','Dependency',NULL,0,NULL,NULL,NULL,'435576B40B79FDE73C94B131F77F86F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_derivedPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'9B7C01AFDB3B684ACEEF6C2E7A60ECF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IncludedModeDeclarationGroupSet','Class',NULL,0,NULL,NULL,NULL,'8DADB54A34FAE08B2EED882F4CFAFE39',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'3A652510E89BF0A962AD0B0F0E32DBDF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_moduleDescription','Dependency',NULL,0,NULL,NULL,NULL,'5BA2C38A0A4739CC805CFA8BCB35EE57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_disabledModes_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'037BAD52CFDCB173BD4A330C49DE3844',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_predecessorFifo','Dependency',NULL,0,NULL,NULL,NULL,'B32483A6DF5DD021E4CD7C5857E70574',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Field','Class',NULL,0,NULL,NULL,NULL,'CFAD40FEEF164DEB0687E439CD03A8BD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticDataIdentifier','Dependency',NULL,0,NULL,NULL,NULL,'A0C5A241DC7F56AB07914227D840405B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwSystemconstantValueSet','Class',NULL,0,NULL,NULL,NULL,'D2B097D30FBCB64E022FA0D08EDD2A98',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpPduPool','Class',NULL,0,NULL,NULL,NULL,'5BB8EB7E78229F5FBCF3943F4C7412D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedCluster','Class',NULL,0,NULL,NULL,NULL,'7509572591E173BDA86A3267D4693F66',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinEventTriggeredFrame','Class',NULL,0,NULL,NULL,NULL,'50487F4E71E774CB92F8D96EFDB8FA56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmCoordinator','Class',NULL,0,NULL,NULL,NULL,'51CAD98324ED675E7849FAA8AD6E8452',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureCommunicationFreshnessProps','Class',NULL,0,NULL,NULL,NULL,'F88C1921B2192BB8BC5A86C571CD5677',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComFieldGrant','Class',NULL,0,NULL,NULL,NULL,'79CAB7E3C32FC2239EBDB6CA073CE83F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceEecs','Dependency',NULL,0,NULL,NULL,NULL,'A130036670F74EE9F493DF773966AF2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AliveSupervision','Class',NULL,0,NULL,NULL,NULL,'C5EC620F680B9B15CC1560CD24029C1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestResourceDef','Class',NULL,0,NULL,NULL,NULL,'7F06B5C47F4F4BB7E00F06E4FFD2B2A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VfbTiming','Class',NULL,0,NULL,NULL,NULL,'D9BE25C938DE979A25EAB1754B858B38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyKeyValuePair','Class',NULL,0,NULL,NULL,NULL,'28408E3495D6B898BEB3DBE84FB276B5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MemorySection','Class',NULL,0,NULL,NULL,NULL,'904B84E687C67C9CB6D9D14B52B2D883',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subSoftwareClusters','Dependency',NULL,0,NULL,NULL,NULL,'E394323B1FC11F20DCAB1907FCCA3463',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceInstances','Dependency',NULL,0,NULL,NULL,NULL,'B090CF308256B26B1B2C4F643589E111',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticEnableCondition','Dependency',NULL,0,NULL,NULL,NULL,'6F02FE4A7FA4980965E94B4ED7DD4FD7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpNode','Class',NULL,0,NULL,NULL,NULL,'AB575AEA037DDF1ED02A3827422AA160',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthTpConnection','Class',NULL,0,NULL,NULL,NULL,'0A011CE2133F14F16EBF5C149E39E4AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetPriorityRegeneration','Class',NULL,0,NULL,NULL,NULL,'1848D11BC35FFAB1021B233A66005ACF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceElementSecureComConfig','Class',NULL,0,NULL,NULL,NULL,'53BAD781E5D982DE9BDA45DD86ED3D86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aclOperations','Dependency',NULL,0,NULL,NULL,NULL,'0F59E390E909AEFD921E8BD1C1286B78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeDomainRefConditional','Class',NULL,0,NULL,NULL,NULL,'BB3CB8BA593A4F44E27F95711A734168',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmLogicalExpression','Class',NULL,0,NULL,NULL,NULL,'3A72AE521046B342F1BCEA5A6129482C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalSupervisionNeeds','Class',NULL,0,NULL,NULL,NULL,'CA5A47708042B6C80816C597D3C25D9B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryProps','Class',NULL,0,NULL,NULL,NULL,'8A1829EE845F2786B31D332343730838',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerOperationMapping','Class',NULL,0,NULL,NULL,NULL,'796C0506CD9D2CAD47DED93431801ADA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdRatioServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'02232492182EB6194278462EFB959E7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerRefConditional','Class',NULL,0,NULL,NULL,NULL,'47D61CE4313A3FC661C49AF7D52CF283',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecOcJobMapping','Class',NULL,0,NULL,NULL,NULL,'A251274A970C6B243FC872ECDD7B88FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pncMappings','Dependency',NULL,0,NULL,NULL,NULL,'4D9394841BE199B1E80144018C377C8D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetCluster','Class',NULL,0,NULL,NULL,NULL,'B656FCA823E726B7DC94E988FDA32A11',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transmitPdus','Dependency',NULL,0,NULL,NULL,NULL,'B37A847C0F5A86072F6AED508EBB5767',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LifeCyclePeriod','Class',NULL,0,NULL,NULL,NULL,'5DF36CAD030AC86701595B1FBF9C72C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ReferenceBase','Class',NULL,0,NULL,NULL,NULL,'DF403232AFDD8BA7307AA9C5ABE9DE07',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'6BC9DE91219570AE74ED85C12746EBF2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataConstr','Dependency',NULL,0,NULL,NULL,NULL,'7D15DF32A1D6A66D0C1B6BF28E74E3EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RootSwComponentPrototype','Class',NULL,0,NULL,NULL,NULL,'A06D78BE16F3035B4856F146693B7E26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariationRestrictionWithSeverity','Class',NULL,0,NULL,NULL,NULL,'A58FBD0659E2CED988F44CDCF57B87A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Tgroup','Class',NULL,0,NULL,NULL,NULL,'AE897F6EB4460E12DCBD22D3DB09C2EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSynchronization','Class',NULL,0,NULL,NULL,NULL,'4AA680C78F0B794338D16354E09352DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationGroup','Class',NULL,0,NULL,NULL,NULL,'EEE145DAF28993B6099A7CC09657EFDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecucModuleConfigurationValues','Dependency',NULL,0,NULL,NULL,NULL,'E4CECFEC95E80F953A75627D6F7FF8BC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'6D78767A6F11A2344AEB4701D3F3045E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Modification','Class',NULL,0,NULL,NULL,NULL,'15E061229689F756D0B2A2A3CF613D54',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_globalTimePdu','Dependency',NULL,0,NULL,NULL,NULL,'C69405337DD70B0619DA75BEB9A3D67E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IndentSample','Class',NULL,0,NULL,NULL,NULL,'7268B61DFDFFF461F9A4BB0DD2E3C185',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McParameterElementGroup','Class',NULL,0,NULL,NULL,NULL,'56EDE9F6C7C5911A509147047CB3A78D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDoIPActivationLineInterface','Class',NULL,0,NULL,NULL,NULL,'74F19882EB1BD5E1024894EA0DBA5291',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mcDataInstances','Dependency',NULL,0,NULL,NULL,NULL,'2A16118C55ED7B08F3A7D08A3863D268',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_comControlClass','Dependency',NULL,0,NULL,NULL,NULL,'C26480826EC5B601C970F30FD880FFFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IncludedDataTypeSet','Class',NULL,0,NULL,NULL,NULL,'6BBA13EF961D13D24DE5D57127516C88',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PduTriggeringRefConditional','Class',NULL,0,NULL,NULL,NULL,'D205E51FD47F159904D39F3EF1816DF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_actualEvent','Dependency',NULL,0,NULL,NULL,NULL,'3B0605DE68EB64823BEBFBEE9283BB78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticControlNeeds','Class',NULL,0,NULL,NULL,NULL,'C559692FF80A55DC6FE316320D929DA7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_components_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'B40BEF28293DEB93C999E27151149150',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucUriReferenceDef','Class',NULL,0,NULL,NULL,NULL,'A3DB884EDD35F8E43D4C7DAF8FFDFCC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSecurityLevelPortMapping','Class',NULL,0,NULL,NULL,NULL,'A7732D157946B79E90B81A2573FF824B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceServiceInterfaces','Dependency',NULL,0,NULL,NULL,NULL,'FFCB464305482DD170BCDF40BE944511',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureCommunicationPropsSet','Class',NULL,0,NULL,NULL,NULL,'D2255BA563E53B55D56F12F47B23E69F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UnresolvedReferenceRestrictionWithSeverity','Class',NULL,0,NULL,NULL,NULL,'DF59871BD08E2C58907686A907415650',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureMapAssertion','Class',NULL,0,NULL,NULL,NULL,'1C73FB34562254FA2CAB2A53D19C6952',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdClientConfig','Dependency',NULL,0,NULL,NULL,NULL,'3068BA03744F4D714DC5760D76FBA386',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedParameter_autosarParameter_port','Dependency',NULL,0,NULL,NULL,NULL,'68EDD4DCF3F5FCFD044F2519E74CE571',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuPartition','Class',NULL,0,NULL,NULL,NULL,'A9267EB0AA58C1C702A010EDACEF6B54',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticControlEnableMaskBit','Class',NULL,0,NULL,NULL,NULL,'021D629AA963F6AD73410944A8A7C896',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InstantiationTimingEventProps','Class',NULL,0,NULL,NULL,NULL,'2ADA1A04EBC7932E9C4FAA114B31752D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswModuleEntity','Dependency',NULL,0,NULL,NULL,NULL,'703595C5F09ECEC2CF9C841CF0913CD3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivers_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'3BD2A90DB0050782EE19AC26B3A35AE0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Sdf','Class',NULL,0,NULL,NULL,NULL,'44BA52988AF69A5B525E5BD37F595ABD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextModeDeclarationGroupPrototype','Dependency',NULL,0,NULL,NULL,NULL,'7D6CF29BEB056361A80A4656613F7A9A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanCluster','Class',NULL,0,NULL,NULL,NULL,'E515B8BE17C0B2A5C1014A721773E39C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939SwMapping','Class',NULL,0,NULL,NULL,NULL,'50E2B5435DABDFBB9DB7F3006032B8A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modes_targetMode','Dependency',NULL,0,NULL,NULL,NULL,'5B118216A397E4FFF2E7A24A7DA6D00A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryTopic1','Class',NULL,0,NULL,NULL,NULL,'5ACF77E48792EAE77C25F489452C7091',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCommonProps','Class',NULL,0,NULL,NULL,NULL,'ABA9AE75250DD0477CFBA1E5F44D26FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subGroups','Dependency',NULL,0,NULL,NULL,NULL,'7B47812C33B46D3972AFDB3600200702',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipServiceInterfaceDeployment','Class',NULL,0,NULL,NULL,NULL,'D9E132DE7833A046A498E56142109A46',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DefaultValueElement','Class',NULL,0,NULL,NULL,NULL,'6784590A941BA66C746B401ECEFAC0DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToStorageConditionGroupMapping','Class',NULL,0,NULL,NULL,NULL,'3A3338AB61A910A42FA5BF33F927FA08',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinSlaveConfig','Class',NULL,0,NULL,NULL,NULL,'C84D8FB8F3AE334A807810295E58E9DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceElementMappings','Dependency',NULL,0,NULL,NULL,NULL,'0B04A7893E1C1BCE670A51EF258432ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_encryption','Dependency',NULL,0,NULL,NULL,NULL,'9FA4BCCEA46FEC1225CA7E9E97069BF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEndpointPost','Class',NULL,0,NULL,NULL,NULL,'3AEA1B9D2DA5AF8C41BA27797CE7B67C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenNvData_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'AB8A9908202414BDD8B5854858AC1F71',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElement_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'56F677D452D9E0D03B13DA5D98446DA7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinScheduleTable','Class',NULL,0,NULL,NULL,NULL,'3B1BDFE44C6ADF534B42ABC7CC8C021C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignalGroup','Dependency',NULL,0,NULL,NULL,NULL,'1F877141C4D52154EDDDE14B3C8CEEDF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeDomain','Class',NULL,0,NULL,NULL,NULL,'E42BCBF5EAFD27EFFBB24A335D7DBD3D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'B2EE398F656DB948579F0900BC12DD0D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerOperation_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'31AD5DC1ADC3809BFB5FF3C47C29AAE8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939TpNode','Class',NULL,0,NULL,NULL,NULL,'F86F067A2E48181463BA87BA11D17167',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayClusterConditional','Class',NULL,0,NULL,NULL,NULL,'FB0702E766758D1151651AD5B7BB59E6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanCommunicationController','Class',NULL,0,NULL,NULL,NULL,'9DEC7880FBF0BA9A8C1AECC3B47EFF85',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operations_targetOperation','Dependency',NULL,0,NULL,NULL,NULL,'70600FE7A31BD66E8A7F091153937C3F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadScalingDataByIdentifier','Class',NULL,0,NULL,NULL,NULL,'8C8F637048689FEBA26F692368E45C5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuExtractReference_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'928CBA3E482F6378748FED6FE272ED39',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_eventGroups','Dependency',NULL,0,NULL,NULL,NULL,'1E191BC761673798B54729D41ACD0DCE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_event','Dependency',NULL,0,NULL,NULL,NULL,'907F68947C548E5BC30A6478F79D420B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuResourceEstimation','Class',NULL,0,NULL,NULL,NULL,'D245EE88D96A2A8685F0EEA2F1144687',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_machine','Dependency',NULL,0,NULL,NULL,NULL,'10371137AEAD3693DF87F39FCD47F4F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SensorActuatorSwComponentType','Class',NULL,0,NULL,NULL,NULL,'E14292A0CBACA2C7E5D4B8C8BDE96085',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestServiceInterface','Class',NULL,0,NULL,NULL,NULL,'06350AA17F2AD56E86603BD0E013025D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsumedEventGroup','Class',NULL,0,NULL,NULL,NULL,'B31EB6CA6B3EF7D7C1220B3FB1BAFDCA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arParameter_autosarParameter_target','Dependency',NULL,0,NULL,NULL,NULL,'E5ABD36A819621B336B7A34EEA59D20F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoConIPduIdentifierRefConditional','Class',NULL,0,NULL,NULL,NULL,'C815EEDC9CF60C8E789355879C0C8EC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswEntryRelationship','Class',NULL,0,NULL,NULL,NULL,'35719289466F584FE649AE87E5572EB1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableEntities','Dependency',NULL,0,NULL,NULL,NULL,'09DDA599C7EE6FFCD5FBE18332A05D84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_value_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'732B0077132170602B71E8FFCD806B22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestRoutineResults','Class',NULL,0,NULL,NULL,NULL,'845940B32B9AB3E8E88A3F1F567ED279',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secureComPropsForTcps','Dependency',NULL,0,NULL,NULL,NULL,'D548513C135F8EEE999AEE3BD5132D48',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProvidedServiceInstanceRefConditional','Class',NULL,0,NULL,NULL,NULL,'D3E925E5F64C78E50F3E5589678C3AAA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTestIdentifier','Class',NULL,0,NULL,NULL,NULL,'88DD05C30197AEF4150A460A14DFF26E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tpChannel','Dependency',NULL,0,NULL,NULL,NULL,'34D7FE919D4C2793190A23E45692D08E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AgeConstraint','Class',NULL,0,NULL,NULL,NULL,'5ABEE57AED944112C0C4650D72CD14B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TraceableText','Class',NULL,0,NULL,NULL,NULL,'DFFD9D89EF166CC5839ECB409E3B3F98',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptServicePointPosts','Dependency',NULL,0,NULL,NULL,NULL,'69C6EF1E6A25EB29930BB2A49D16FBAF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_errorDomain','Dependency',NULL,0,NULL,NULL,NULL,'5A6998D706A60C58D80BB117477A6BF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ipv6Configuration','Class',NULL,0,NULL,NULL,NULL,'B1238DB3F304202FE7827038024F616A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_possibleApErrors','Dependency',NULL,0,NULL,NULL,NULL,'7DFCBD82ECA8C81CA2477BDCA7784191',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticParameterSupportInfo','Class',NULL,0,NULL,NULL,NULL,'3F1A4E7D12384E3CAA470CCBA84EC328',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_scope','Dependency',NULL,0,NULL,NULL,NULL,'56AA1C12F6C0A631EAA64510625555BF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_supervisedEntityCheckpointNeeds','Dependency',NULL,0,NULL,NULL,NULL,'D05B6B3F25160DD3964ED8AFEFFDC04C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototypeGroups_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'0E62E7030E461D12B307CC0C3F62B5C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvBlockNeeds','Class',NULL,0,NULL,NULL,NULL,'D5845CBCB55EB3B199036BEB02015E9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedTransformationDescription','Class',NULL,0,NULL,NULL,NULL,'30D47A639E285B4C50640884CCDFC5DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventISignal','Class',NULL,0,NULL,NULL,NULL,'8633EBEA910DE49DF70CD59A285043CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ImplementationDataTypeElement','Class',NULL,0,NULL,NULL,NULL,'D20578EED52D7052ADB67E56F66EFDEB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_typeBlueprints_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'5F3FB1BD2AA4664EBB86FEC358E64743',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEcuReset','Class',NULL,0,NULL,NULL,NULL,'7ACE7A5726BD7C4861D07245552E84D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_letIntervals','Dependency',NULL,0,NULL,NULL,NULL,'5B9EA4F5B38FBF3EE893606D935F13DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationDataType','Dependency',NULL,0,NULL,NULL,NULL,'78D73DC292018ABA8322652E1120724D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vendorSignature','Dependency',NULL,0,NULL,NULL,NULL,'085F9EA67BE6509114FB34FCC7268110',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTransferExitClass','Class',NULL,0,NULL,NULL,NULL,'1D45CF109169E8D079887091611E0E0B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucTextualParamValue','Class',NULL,0,NULL,NULL,NULL,'703D8EB24656AD9986F1B7CE7CAC1A2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestFileTransferNeeds','Class',NULL,0,NULL,NULL,NULL,'2DB59C4B81D5D13B980136CDC6AD2A70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DeadlineSupervision','Class',NULL,0,NULL,NULL,NULL,'EC520AA8E05CE816D4E597CCC26E665B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnableConditionPortMapping','Class',NULL,0,NULL,NULL,NULL,'9F20F26A863C88B960AC052A61255E35',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_methods','Dependency',NULL,0,NULL,NULL,NULL,'64D1777F155F62523D73E30F3937238F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedServiceInterfaceDeployment','Class',NULL,0,NULL,NULL,NULL,'E0F5F1D43BF1740D6E042D427B49D0FC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_interface','Dependency',NULL,0,NULL,NULL,NULL,'6BC0526EE31943E038DB4A90FD1E9E8E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedFieldDeployment','Class',NULL,0,NULL,NULL,NULL,'2233C13BE9B79F30E657B12A31E83E6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConstantSpecificationMappingSet','Class',NULL,0,NULL,NULL,NULL,'89F37D79E5773F939494F64A8B6442F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucMultiplicityConfigurationClass','Class',NULL,0,NULL,NULL,NULL,'850303F282E3CE9D1C5C8678139215A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VendorSpecificServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'FFB4F91F5AF36C01F41011FA7F7B35E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_persistencyFileArray','Dependency',NULL,0,NULL,NULL,NULL,'000FF3864F56084E0CE4AF68D605532C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildAction','Class',NULL,0,NULL,NULL,NULL,'4A1547B9AAC748DF7072FD12BC1A4F2C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_matchingCriterion','Dependency',NULL,0,NULL,NULL,NULL,'7C3CF0027F79A862B3D4783533CAFBA7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedParameter_autosarParameter_target','Dependency',NULL,0,NULL,NULL,NULL,'DDB9BC2A2D854F2784087C865481A4F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStopRoutine','Class',NULL,0,NULL,NULL,NULL,'9C240C17519C80B95E2DCC6BA0D3BE9E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'7A2104AF37FEF0853846627259BA28DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimAliasEventGroupMapping','Class',NULL,0,NULL,NULL,NULL,'2AE9D04D9D523ABB08697F9651A0A45D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_defaultLcState','Dependency',NULL,0,NULL,NULL,NULL,'9EDAF44594AC43A3C7D5D6B24A1C908D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinCluster','Class',NULL,0,NULL,NULL,NULL,'C79AFEF9B718272814282C30C9A9622E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltUserNeeds','Class',NULL,0,NULL,NULL,NULL,'16502FD09217B59E9D39C45B3CA37C63',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transitions','Dependency',NULL,0,NULL,NULL,NULL,'20D94C78ABE3A168FC84FF5FF8D9D14F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryResultTopic1','Class',NULL,0,NULL,NULL,NULL,'43C3339879FB0C738BF732C9F5CDCCE0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsEventDeployment','Class',NULL,0,NULL,NULL,NULL,'4E90B4784F82C76B88476E51B2D14DB5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iPduPorts','Dependency',NULL,0,NULL,NULL,NULL,'D927023AE349CB95DDF236B1AD2858B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRootComposition','Dependency',NULL,0,NULL,NULL,NULL,'7427B480CE00D30EE31BE7EDA60E840D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpTp','Class',NULL,0,NULL,NULL,NULL,'D4D7588D151227BF7AAF484F5558D90D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingElement','Class',NULL,0,NULL,NULL,NULL,'7D96C64C034D16E5EB4F2432DB061D97',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeJ1939','Class',NULL,0,NULL,NULL,NULL,'428E2599EB84FA795BE125BBF24B4B73',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'2020D54A31953B23A9F880D5DD0F30A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthTSynSubTlvConfig','Class',NULL,0,NULL,NULL,NULL,'0243D07DBF08CAAEB09E509A65023E96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucAddInfoParamDef','Class',NULL,0,NULL,NULL,NULL,'61B8BA50B5BA90041C4691DEC8B3E2EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_troubleCodeObd','Dependency',NULL,0,NULL,NULL,NULL,'9F89F6C14542F57B5FD3EB0D58E6CC55',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_enableConditionGroup','Dependency',NULL,0,NULL,NULL,NULL,'6DDF3EBDF365D715A8630E359B4F9A13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InterpolationRoutineMapping','Class',NULL,0,NULL,NULL,NULL,'4EFEA53082E870D661F781F266FD900D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlProvidedEventGroups','Dependency',NULL,0,NULL,NULL,NULL,'48AE7B17ACA9D507519A85F637241700',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeSwitchAckRequest','Class',NULL,0,NULL,NULL,NULL,'50DCC8E4960998474DE25C8C75DB5723',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McDataAccessDetails','Class',NULL,0,NULL,NULL,NULL,'20AAC74E566144F21162065654A9A0AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredFibexElements','Dependency',NULL,0,NULL,NULL,NULL,'D2133C0BD0E00CE521F34CE935BE5402',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucMultilineStringParamDef','Class',NULL,0,NULL,NULL,NULL,'4BE010304932E39DB89435EC7EA5CE12',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderReceiverInterface','Class',NULL,0,NULL,NULL,NULL,'5F1FDC230893A3B06B1BC96EFA68E4F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayFrameTriggering','Class',NULL,0,NULL,NULL,NULL,'9F3AFE061D7685289D05F5A96409C92E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Row','Class',NULL,0,NULL,NULL,NULL,'8E0673D2723630EDEFD291BE221851F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MeasuredHeapUsage','Class',NULL,0,NULL,NULL,NULL,'73D5046160648D71195737E428AA88B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientIdDefinition','Class',NULL,0,NULL,NULL,NULL,'F1561D520772DB503E3C6C17F27110BE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSecurityLevel','Class',NULL,0,NULL,NULL,NULL,'FF4DDF47F7CFB1C70EAB6DDBC26437A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextModeDeclarationGroup','Dependency',NULL,0,NULL,NULL,NULL,'751F6AE4CADDC700389FB8C8176A9271',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nmNodes','Dependency',NULL,0,NULL,NULL,NULL,'26E37ADEA57C102D070691DF13597B72',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sender_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'2B4D96D135404162A94DB0C75670FBBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sessionControlClass','Dependency',NULL,0,NULL,NULL,NULL,'72418C2D1BEAAA8624B86F9FE14726E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrmCharNumericalContents','Class',NULL,0,NULL,NULL,NULL,'3647CB88110BE48C13B90DCC9AB796EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventFrameEthernet','Class',NULL,0,NULL,NULL,NULL,'6104D2421774EF4E732375F4FED5945D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureCommunicationProps','Class',NULL,0,NULL,NULL,NULL,'744658C9D7BDBFC9BC4708907AD134C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vlan','Dependency',NULL,0,NULL,NULL,NULL,'48EDE830660475A815ACFB5C1446D8F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timeSyncPortPrototype_context','Dependency',NULL,0,NULL,NULL,NULL,'920300DC9263DDE0EF8676C7CAE5331E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_constantValueMappings','Dependency',NULL,0,NULL,NULL,NULL,'A38800412BD32B2C85034869C8D21A62',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_communicationCluster','Dependency',NULL,0,NULL,NULL,NULL,'2FF0AA9B729ADDAD6CB1787A7C34085E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_QueuedReceiverComSpec','Class',NULL,0,NULL,NULL,NULL,'660698F3C42249A3B0473543A9D6E7EB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterInstance_parameter_context','Dependency',NULL,0,NULL,NULL,NULL,'A06F72345082B016A5B8566D97EC7C67',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DocumentationContext','Class',NULL,0,NULL,NULL,NULL,'8004604F533AD6C0E1C2DDE79120AAB5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvArgument','Dependency',NULL,0,NULL,NULL,NULL,'96F10A73077D1B4967DA170C661D754A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_instanceInMemory_target','Dependency',NULL,0,NULL,NULL,NULL,'98FBAAC78D69C802F63B2E98EA3E9C42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEndpointGet','Class',NULL,0,NULL,NULL,NULL,'C6F0EE1CF25035AFB434A41CEE1043DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_field','Dependency',NULL,0,NULL,NULL,NULL,'1F84FEAA4F401E185554BEAD647B163A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataReceivedEvent','Class',NULL,0,NULL,NULL,NULL,'5D775B10C01A1833F6934E549C7C6F16',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'008E349716C35C8F4D26E184763C7F3E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939ControllerApplicationToJ1939NmNodeMapping','Class',NULL,0,NULL,NULL,NULL,'8396BD309C66571438C722F94530848F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModuleDescription','Class',NULL,0,NULL,NULL,NULL,'532A98A5BF5AF0D6B9DF7568BD31515B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ucmModuleInstantiation','Dependency',NULL,0,NULL,NULL,NULL,'5AFA6A4366F295894F62FA7251406402',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InfrastructureServices','Class',NULL,0,NULL,NULL,NULL,'4A42FC8E79CC92B08F43A425C33438CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_frameTriggering','Dependency',NULL,0,NULL,NULL,NULL,'CD54615E04480B6FBC779F2E02228600',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_component_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'5BC77A3602648574C645390320BBC030',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceInterfaceDeployment','Dependency',NULL,0,NULL,NULL,NULL,'1CFA52E83BAB0FBF0994EC684895499F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswDataReceivedEvent','Class',NULL,0,NULL,NULL,NULL,'540EDDD1B5E0757D617D0969875E35C1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsProvidedServiceInstance','Class',NULL,0,NULL,NULL,NULL,'2FC572899183ED02B3C36C8F34287872',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetNetworkConfiguration','Class',NULL,0,NULL,NULL,NULL,'6A6337B424D3543E08437A7D3CA3F079',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_OsModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'C76DC91243B1BEBC00F18A9F2B6E36B0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EmptySignalMapping','Class',NULL,0,NULL,NULL,NULL,'A0F75D15F2772C8F03B906F42C322036',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FibexElementRefConditional','Class',NULL,0,NULL,NULL,NULL,'08AA66ADA4F2E2FA4E86B07923D855D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEcuProps','Class',NULL,0,NULL,NULL,NULL,'43DB94178013601FCE77146BF89AC612',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticStorageCondition','Dependency',NULL,0,NULL,NULL,NULL,'5F15B5897E5412DFC467714A8A4E1770',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventTTCanCycleStart','Class',NULL,0,NULL,NULL,NULL,'8BC78368ACF398ED78B9557C76FF64DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_root','Dependency',NULL,0,NULL,NULL,NULL,'EBA2BBF8A889212B6C9B25DB0AB527D2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Sd','Class',NULL,0,NULL,NULL,NULL,'7C0ACC0DFE044128A38ECF8833B73098',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_provider_contextComponent','Dependency',NULL,0,NULL,NULL,NULL,'00066DE8EA52F3D1A1FB1EF789AF4BF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_verifies_context','Dependency',NULL,0,NULL,NULL,NULL,'D57015C5DF0BE5C907D1ECB9788F8FD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'30E3D85574846298BC93712544348B9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BackgroundEvent','Class',NULL,0,NULL,NULL,NULL,'F250078E9703E5D3BF1D1CDDF25208F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareClusterDoipDiagnosticAddress','Class',NULL,0,NULL,NULL,NULL,'C1093736301BFCCE235A19B2461A3124',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSyncCorrection','Class',NULL,0,NULL,NULL,NULL,'41F849B1A19A51AC897023656898EC5B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuConstNumericContent','Class',NULL,0,NULL,NULL,NULL,'B4C3382BD8B62A738E3F0E57E088AD1E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EnumerationMappingTable','Class',NULL,0,NULL,NULL,NULL,'F1B846791DC4B1107C222D1A0ACA3D81',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetFrame','Dependency',NULL,0,NULL,NULL,NULL,'0B3891A299FDA512F01FDB60B3D21AF2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_logicalExpressionArguments','Dependency',NULL,0,NULL,NULL,NULL,'F6F4FFA0B3BD8906A8F4E945CD177B75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedApDataElement_contextRootComponent','Dependency',NULL,0,NULL,NULL,NULL,'33AD3BDBC0DBB654A617DFCA03738E45',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HttpAcceptEncoding','Class',NULL,0,NULL,NULL,NULL,'D4511B2BB7538D50ECA5E6E8DF0B8CDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recoveryAction_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'87FB943638CA8A2E418DFAD6ACEB5349',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintMapping','Class',NULL,0,NULL,NULL,NULL,'26331C90B9678C6F074970B4E8DA91C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildActionEnvironment','Class',NULL,0,NULL,NULL,NULL,'18DD48A441136B2D91D3A8CBA351C56F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderRecArrayElementMapping','Class',NULL,0,NULL,NULL,NULL,'7DAE9E5F13D737CE5C681901344A0ED6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_doipChannelCollection','Dependency',NULL,0,NULL,NULL,NULL,'ADCFAA1F6202AF6242D1D8468B79C704',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSecurityLevelInterface','Class',NULL,0,NULL,NULL,NULL,'8B6CA9C8FD47AAE658C95F7346645182',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_masteredTrigger','Dependency',NULL,0,NULL,NULL,NULL,'67C25FA6A277CA5FB212EC0C5BDF08DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataIdentifierInterface','Class',NULL,0,NULL,NULL,NULL,'F1ED2B484E5256E22B59EC2E61499FFD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sendingNodes','Dependency',NULL,0,NULL,NULL,NULL,'3C64F2D3B4A38B56FFABFF8C8B8A46AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EvaluatedVariantSet','Class',NULL,0,NULL,NULL,NULL,'EF7FC0C327A3A94A2356AE8FEBD6C1E6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEcuInstanceProps','Class',NULL,0,NULL,NULL,NULL,'C45BBE0CC958A2EB577191D6A73B356E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Annotation','Class',NULL,0,NULL,NULL,NULL,'8BA2C7C1AF0592DA2541F0E7510B191B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortGroup','Class',NULL,0,NULL,NULL,NULL,'48C8CCFE19924BD3D61FD05FC44C8090',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcModeSwitchEvent','Class',NULL,0,NULL,NULL,NULL,'2506FAF481CE69618AD05B96DB7F6886',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstPhysicalDimension','Dependency',NULL,0,NULL,NULL,NULL,'96DF2B3B756B7EB1A26C942ED1D61FB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_globalTimeDomain','Dependency',NULL,0,NULL,NULL,NULL,'4B3C43176215D091EC5E93EEF29B009E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlConsumedEventGroups','Dependency',NULL,0,NULL,NULL,NULL,'D9488D77F7C533CAE296E296971E4AF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_phmCheckpoint_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'818D2451022D27E8B02E9C248B2D7616',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventRefConditional','Class',NULL,0,NULL,NULL,NULL,'D7679661BEC5B39E31AB213C14F6B656',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsServiceInstanceToMachineMapping','Class',NULL,0,NULL,NULL,NULL,'452F2340338194717F9374D1BF7CDE7D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventNeeds','Class',NULL,0,NULL,NULL,NULL,'1B4E1A8FBA79512C7EA419EB9551C236',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestIntegerPropertyDef','Class',NULL,0,NULL,NULL,NULL,'220E59592FDC3587B8F9C0F96F21E697',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InvertCondition','Class',NULL,0,NULL,NULL,NULL,'76270510BF49EDF83CC51162B01F0A2C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceEvent','Dependency',NULL,0,NULL,NULL,NULL,'B6AC2FFE9A503A8FE33C4E4D52BED5DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AggregationCondition','Class',NULL,0,NULL,NULL,NULL,'512B2EDA75B762D6D4C6C13F16851F7E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinFrameTriggering','Class',NULL,0,NULL,NULL,NULL,'019E48DDDFD47ECDB8CBBEA6DDEB16E7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationEndpoint','Class',NULL,0,NULL,NULL,NULL,'E2220599772EB41BB6C18C37B1D92D3C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransformationTechnology','Class',NULL,0,NULL,NULL,NULL,'7B974C3D2C25F0C57D3D889C621F394F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpNmNetworkConfiguration','Class',NULL,0,NULL,NULL,NULL,'4F41AC24943BB254C2C9EA86641D5621',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nvRamBlockElement_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'5B72CB5CF89598974EDAD6BF9EB73ABC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GenericEthernetFrame','Class',NULL,0,NULL,NULL,NULL,'011019E2579230DEB8BCA8920FB73B95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_E2EProfileConfiguration','Class',NULL,0,NULL,NULL,NULL,'ADC09B1F1410F61CA5977FBE62171791',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucParameterDerivationFormula','Class',NULL,0,NULL,NULL,NULL,'3DD4E0EDF74AB6BFC342F685BB70D43E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventPortMapping','Class',NULL,0,NULL,NULL,NULL,'EE7179A61D25A1995041D6FD38069FDB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredPortPrototype_target','Dependency',NULL,0,NULL,NULL,NULL,'591BAE08A83D91AEB174BEA05608A7B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HardwareConfiguration','Class',NULL,0,NULL,NULL,NULL,'04E8078BA78324F4A828D71BED10F34A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpPowerModeStatusNeeds','Class',NULL,0,NULL,NULL,NULL,'DBC3F236BB555EDBF5C11EF4DBE6834E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmConfig','Class',NULL,0,NULL,NULL,NULL,'3AC7351B22F9A22168B4BE3FDA4B6FDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRootSwComponentPrototype','Dependency',NULL,0,NULL,NULL,NULL,'19681EA61C75144D25F6D295742F1471',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_systemSignal','Dependency',NULL,0,NULL,NULL,NULL,'2E915A38E54E1BD3F64B23B75DC80B5E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TraceableTable','Class',NULL,0,NULL,NULL,NULL,'4B2B2D2EE0F2BCC06DA4569FF95882E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939Spn','Class',NULL,0,NULL,NULL,NULL,'80358FF4640099ABE4E1FBF0D9CEB5C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventFrame','Class',NULL,0,NULL,NULL,NULL,'FB0EA8CDB5F897DA33264D2B3ED1DE0B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependency_rootContext','Dependency',NULL,0,NULL,NULL,NULL,'5EC79FDAF57AD2876FB7D9863917815E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CalibrationParameterValue','Class',NULL,0,NULL,NULL,NULL,'F927F427BCE0EBE4066C10D0D60D6009',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeErrorBehavior','Class',NULL,0,NULL,NULL,NULL,'F1DA7A956713B7F724724565A0BFEDA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucContainerValue','Class',NULL,0,NULL,NULL,NULL,'51C73DD97434902FA64931D96CAED508',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElement_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'8D75C2E147CFB1968D2E389E6F7DBDC8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeInterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'D479E3D05FE611A4EE6FE7A0BBC0531A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDataByPeriodicID','Class',NULL,0,NULL,NULL,NULL,'11BA9A72E9FE5BF5B5E65C39B3F6AC26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadScalingDataByIdentifierClass','Class',NULL,0,NULL,NULL,NULL,'F64DD425A6A945A17B6B87E545A16E44',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationPrimitiveDataType','Class',NULL,0,NULL,NULL,NULL,'16A0005FF50CF0E5180905F70AD443B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoleBasedDataAssignment','Class',NULL,0,NULL,NULL,NULL,'2D9BEBFC0E86FE55F214058D5DF17F0F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_verifies_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'6BA26B8895B58440C4DD9967BE6F7CAE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RuntimeError','Class',NULL,0,NULL,NULL,NULL,'367C358E31AD19283A4EA7A3FA79EF77',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_slaveEvent','Dependency',NULL,0,NULL,NULL,NULL,'8C4A542DD5397C66069E28859A7E6A1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableAccess','Dependency',NULL,0,NULL,NULL,NULL,'709696F135557BA8FEE54DFD51F3F8E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EnterExitTimeout','Class',NULL,0,NULL,NULL,NULL,'9AC1A6A777D439F601EEE5489C316139',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_targetDataProtoype','Dependency',NULL,0,NULL,NULL,NULL,'D822A3EE928A18D897BECB493C83689D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Table','Class',NULL,0,NULL,NULL,NULL,'BB10896F279831DD777C9A56FE222162',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivers_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'BDEC23BD458FC7AD9BFCEE0107021165',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clusteredComponents_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'DE818BE3A241519A8F5EDE516126E649',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SynchronousServerCallPoint','Class',NULL,0,NULL,NULL,NULL,'8254ABED2E319200DE3D5125F535E0E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_consumedEventGroups','Dependency',NULL,0,NULL,NULL,NULL,'52D8C4A1E4AE0158DC2F706ED49BEB43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComponentClustering','Class',NULL,0,NULL,NULL,NULL,'B67228CC95D2E9DE22335E6D5858A60F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_softwareMemorySection','Dependency',NULL,0,NULL,NULL,NULL,'7A6B5660866BC561E2ED251B70ADFFC2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'2C7373E7A2CFC7AF904738D1ADA24A7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComponentSeparation','Class',NULL,0,NULL,NULL,NULL,'E0F32F258AA464C7DA2DAC61968DEBA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clearConditionGroup','Dependency',NULL,0,NULL,NULL,NULL,'89DEA89A3DE461AC3FC667C9590E0995',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwarePackageStep','Class',NULL,0,NULL,NULL,NULL,'8756F6B9FD1BCF90B58958C426FD0724',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_enableCondition','Dependency',NULL,0,NULL,NULL,NULL,'D8AA22379B1AACC5A44C43BB42E75099',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessDesignToMachineDesignMappingSet','Class',NULL,0,NULL,NULL,NULL,'A34699C8643719B1E02646B680A2D897',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ChapterOrMsrQuery','Class',NULL,0,NULL,NULL,NULL,'44C697E69F057958687638FD958F6EA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultiLanguageParagraph','Class',NULL,0,NULL,NULL,NULL,'2012716E59BFCD685ABFB43DB497629E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeObd','Class',NULL,0,NULL,NULL,NULL,'D927E1AF91FCF7CB27D9536DDB95F095',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortAPIOption','Class',NULL,0,NULL,NULL,NULL,'9DB2F95DCF3C699514801C77DF63DB44',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TopicOrMsrQuery','Class',NULL,0,NULL,NULL,NULL,'9E76407F5E4A8B20F1941A6FDAA53FA1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsRequiredServiceInstance','Class',NULL,0,NULL,NULL,NULL,'D7833955910D5D851DB6A5234805EBD8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAddrMethod','Class',NULL,0,NULL,NULL,NULL,'B11F69906FFA1C10F0D389F385507895',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flowControlPdu','Dependency',NULL,0,NULL,NULL,NULL,'A3C30B8F18B4728823FA527C2D3980B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswModuleDescription','Dependency',NULL,0,NULL,NULL,NULL,'6FE39E09DFD4DADCB997CD2499E9D3AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerOperationBlueprintMapping','Class',NULL,0,NULL,NULL,NULL,'2B9236C35A8010804E243B24C14A5ADA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcToEcuMappingConstraint','Class',NULL,0,NULL,NULL,NULL,'3DF43FE830444852FAC62920BFC94DCF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerPortAnnotation','Class',NULL,0,NULL,NULL,NULL,'A1DB981A7ADA2A06D3E023169FCC5FEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwElements','Dependency',NULL,0,NULL,NULL,NULL,'0B6DD22701F21C3179714E0D70AEFE96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExecutionTimeConstraint','Class',NULL,0,NULL,NULL,NULL,'E62F0E88992CB9100DA6D8E80E72E461',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FireAndForgetMapping','Class',NULL,0,NULL,NULL,NULL,'7DE46A76C78F9680CD88DF08813802E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationRecordElement','Class',NULL,0,NULL,NULL,NULL,'200676CDD118719EAB23877BF6029F18',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwValues','Class',NULL,0,NULL,NULL,NULL,'CEC505FA89329164FE1147CF6CB2C570',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recoveryAction_context','Dependency',NULL,0,NULL,NULL,NULL,'407767C2E365205125FC3D6C34310FFE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StructuredReq','Class',NULL,0,NULL,NULL,NULL,'B0741191BEC37958A2B90293DBFD55BE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SOMEIPTransformationISignalProps','Class',NULL,0,NULL,NULL,NULL,'21CE83EFFD873FF16C76CF6FE3728B30',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LifeCycleState','Class',NULL,0,NULL,NULL,NULL,'75D43BC0114DC61FA5CD5445A4BE5A7C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedApDataElement_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'068F21305EB9ADFB646B6080D05D1E99',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswMgrNeeds','Class',NULL,0,NULL,NULL,NULL,'CECF6A3FCAC8A7458D349832B12AFB86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transformer','Dependency',NULL,0,NULL,NULL,NULL,'4964567F530293972247E41E9FBAD991',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessDesignToMachineDesignMapping','Class',NULL,0,NULL,NULL,NULL,'8C76BAEA1FBED06E8335CA531837DB64',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'3E1ACFC50B4A2716C7048BF4CB97162E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEcuResetClass','Class',NULL,0,NULL,NULL,NULL,'4E110358A1FDE6DD87C89D408EBCE83A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_perInstanceMemory','Dependency',NULL,0,NULL,NULL,NULL,'12B2D393C0C88D5E12A581D39038F136',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939NmEcu','Class',NULL,0,NULL,NULL,NULL,'2F59F62468840390CAF1043750A2C27C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_collection','Dependency',NULL,0,NULL,NULL,NULL,'8E83A63490C423CA276481862B7921D9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pduTriggering','Dependency',NULL,0,NULL,NULL,NULL,'C5E49F2733EB1726CFA47A79F836A8C6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticWriteDataByIdentifierClass','Class',NULL,0,NULL,NULL,NULL,'E6C57B771E59175B2EC3B16C7F4607E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataFilter','Class',NULL,0,NULL,NULL,NULL,'411D04FD654378C99B9EE79D98593C72',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ARPackage','Package',NULL,0,NULL,NULL,NULL,'B200BA16B085725C49031D6C2FF8F819',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SupervisionCheckpoint','Class',NULL,0,NULL,NULL,NULL,'78530E554E4DA122FC0B3EC1AF3C6952',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCommunicationManagerNeeds','Class',NULL,0,NULL,NULL,NULL,'799DF2913DE2A5BFFD72AC69524714AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nvRamBlockElement_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'58181DCF3F10311BCD0FFDFDFAB7B21F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswExclusiveAreaPolicy','Class',NULL,0,NULL,NULL,NULL,'8B5CB91A3B334000AFE3A49A370C3076',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeRefConditional','Class',NULL,0,NULL,NULL,NULL,'D3DEEDC08D47F1BBCEF60BB87D74E685',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticConnection','Dependency',NULL,0,NULL,NULL,NULL,'3E2ADD2721D8F8704C6402A35C3ACB95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataIdentifierGenericInterface','Class',NULL,0,NULL,NULL,NULL,'610577596B43935F0EB42ABCCFDF6E1E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwVariableRefProxy','Class',NULL,0,NULL,NULL,NULL,'CADFC18A6B8AD20DCF2213010290091D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vLans','Dependency',NULL,0,NULL,NULL,NULL,'A80E2C152F7778202F14366921297DF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeWithApplicationDataTypeInSystemRef','Class',NULL,0,NULL,NULL,NULL,'E04CFBC0A97A90638671606225188057',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcTrigger_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'BC114E1E9563ED49579781E2B824F4CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_derivedFromBlueprints','Dependency',NULL,0,NULL,NULL,NULL,'1A064F0594F62764E05E14F9DF812994',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timeSyncServer','Dependency',NULL,0,NULL,NULL,NULL,'0DBD3EC48A43AE2303D1104005586D4C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSupportInfoByte','Class',NULL,0,NULL,NULL,NULL,'15BBE83B5522CE838B8565A6DF9D25F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939FreezeFrame','Class',NULL,0,NULL,NULL,NULL,'4861E953DC9998CD1B1AFBC0F2334B7C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticExtendedDataRecord','Class',NULL,0,NULL,NULL,NULL,'B9644C83E754901537C55B7B5A909309',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticPeriodicRate','Class',NULL,0,NULL,NULL,NULL,'B41378DC3F3A0132F192A18BA3BAE10F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'B82A778CDE25C8F96AA1FF7031EA66F8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeGateway','Class',NULL,0,NULL,NULL,NULL,'65C42FE6E88871B619639686360AF414',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceDeployment','Dependency',NULL,0,NULL,NULL,NULL,'242066AF4B6FE7A5229B79400C623FD6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerApplicationErrorMapping','Class',NULL,0,NULL,NULL,NULL,'55372974021EFF56A9FE27225E96DB3B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_infoType','Dependency',NULL,0,NULL,NULL,NULL,'E3DC8D1254C983BFFA65300B42475E89',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McDataInstance','Class',NULL,0,NULL,NULL,NULL,'E1256837E609F6B06984297F1D39FCF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestSystemTriggeredEvent','Class',NULL,0,NULL,NULL,NULL,'E5A01295F5A5A92DB09D1E89BBC38D63',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FieldSenderComSpec','Class',NULL,0,NULL,NULL,NULL,'55071722841A8F18C6C0381F338954E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DocRevision','Class',NULL,0,NULL,NULL,NULL,'738E66344D1AB39B81F29CD29DDA93F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedPim','Dependency',NULL,0,NULL,NULL,NULL,'E3738FD52E73A08D7BD2639DEE47DF25',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingEvent','Class',NULL,0,NULL,NULL,NULL,'4D932ECCD000A721FEA6B15443ED1F49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedParameterElement_localParameter','Dependency',NULL,0,NULL,NULL,NULL,'C9C911AA3C98312D76FFFDEFECB8AA57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientIdDefinitionSets','Dependency',NULL,0,NULL,NULL,NULL,'F0F4011F1292DC5BDEC44AA9F85F4C93',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UnitGroup','Class',NULL,0,NULL,NULL,NULL,'40370944A924615F523AE6A24FF43764',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataConstrRule','Class',NULL,0,NULL,NULL,NULL,'2593B37FB87428637D793C57FBAA78D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_host','Dependency',NULL,0,NULL,NULL,NULL,'4DE226FD295731481B5092616A71FFC6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataElementInterface','Class',NULL,0,NULL,NULL,NULL,'B9380B7A6EF8ADB750599118A97E450C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMasterToSlaveEventMapping','Class',NULL,0,NULL,NULL,NULL,'499756B973D479E9E4A9B5B51DB5BD0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswImplementation','Class',NULL,0,NULL,NULL,NULL,'15A112D212D2B7D3F8092D9B5E7DDF04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModuleTiming','Class',NULL,0,NULL,NULL,NULL,'7E46299901E671E539F2990468325DC9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RelativeTolerance','Class',NULL,0,NULL,NULL,NULL,'92954B4246EDA43A1A6449B10CE90A4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_derivedPortInterface','Dependency',NULL,0,NULL,NULL,NULL,'4683BBAEF37D76BE27E0F942F9E9C56F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInternalTriggeringPoint','Class',NULL,0,NULL,NULL,NULL,'15329525A76B3BBD580392DF70CB2AD2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfacePedigree','Class',NULL,0,NULL,NULL,NULL,'A8911BD2238F2F836F12EE8E25CAE292',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwElement','Dependency',NULL,0,NULL,NULL,NULL,'1031722B77F7F4B033B9D9C315BE2A5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vendorSpecificModuleDefs','Dependency',NULL,0,NULL,NULL,NULL,'18EAE43911DBC666FA3E2F10A55F6DDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_value','Dependency',NULL,0,NULL,NULL,NULL,'BEBA84F4F0DEB6CD358CC88C991CFE11',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McFunction','Class',NULL,0,NULL,NULL,NULL,'35AF347ADCD4F8995E8D80E0735003A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhysicalChannelRefConditional','Class',NULL,0,NULL,NULL,NULL,'33751C19615008999DA62FA0AFD97208',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayCluster','Class',NULL,0,NULL,NULL,NULL,'A72A26579DE44871921D8767987D4142',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nmIfEcu','Dependency',NULL,0,NULL,NULL,NULL,'2386467981C21602CD681A6DD7AD4276',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ioControlClass','Dependency',NULL,0,NULL,NULL,NULL,'7F6775F09D17935A25FAA5FA9BCF1B94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipMethodDeployment','Class',NULL,0,NULL,NULL,NULL,'AB83BC69482700E3883D47215F11FBE7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltConfig','Class',NULL,0,NULL,NULL,NULL,'53F0AD6170082A7553E59610E527F174',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationPartitionToEcuPartitionMapping','Class',NULL,0,NULL,NULL,NULL,'9FB1EF37565755A9753001D39B136D66',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucQueryExpression','Class',NULL,0,NULL,NULL,NULL,'2CD79C7164A86F0973F0AFE1DF0F3F76',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_customSdgDefs','Dependency',NULL,0,NULL,NULL,NULL,'3EBDD72915C782BE1BB380B855CF200C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'133BF2A6629F9162CDB9BB98FE10562B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_partition','Dependency',NULL,0,NULL,NULL,NULL,'E11A6C2481DFB33C4ABFBE738A21C5E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnableConditionGroup','Class',NULL,0,NULL,NULL,NULL,'861275202D1E35A3A82FF1E1B39C26FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_intendedTargetMachine','Dependency',NULL,0,NULL,NULL,NULL,'DA7E6D25C07889196F59BDD73C4A9EA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketConnectionIpduIdentifier','Class',NULL,0,NULL,NULL,NULL,'BE4965AFDFDA636B9800711CF0A38100',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildActionManifest','Class',NULL,0,NULL,NULL,NULL,'8BC1633938AA291C47EFA95EDD9BA59D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessPhmActionItem','Class',NULL,0,NULL,NULL,NULL,'83AF4E62D3E3D38C56BFBA59ED8D6894',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcBswRunnableMapping','Class',NULL,0,NULL,NULL,NULL,'E8C874552173542197954CEE6E0B7CAC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LParagraph','Class',NULL,0,NULL,NULL,NULL,'2B4CC770D1E079FB36A286EC097C5836',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswServiceDependencyIdent','Class',NULL,0,NULL,NULL,NULL,'A505ED124991491D1DD8EE8EA50912FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenNvData_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'2C5E72515BA16176EAFDFC2EF18762F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorChannelMappingUserDefined','Class',NULL,0,NULL,NULL,NULL,'8986E2F2BE99449D21F9FC4EBBF89708',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_someipSdClientEventGroupTimingConfig','Dependency',NULL,0,NULL,NULL,NULL,'3281D8204E55FE6F2258369E2C7608AE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recommendedConfigurations','Dependency',NULL,0,NULL,NULL,NULL,'64331B236B2FFDD0813FC57473D4B2F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ArParameterInImplementationDataInstanceRef','Class',NULL,0,NULL,NULL,NULL,'37242AA8F50C93EEFA32EA0B59871029',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Std','Class',NULL,0,NULL,NULL,NULL,'3291E1E28C574F01ABD7888B178CE362',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_checkpointTransition','Dependency',NULL,0,NULL,NULL,NULL,'3331A27C51B6D436CC51D0305FE4C3E7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pncGroups','Dependency',NULL,0,NULL,NULL,NULL,'3DB69BA4E0DFD6A945BF4ABFA6514B00',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ResourceGroup','Class',NULL,0,NULL,NULL,NULL,'8DBE325920210EDDA8F5369A69087AC3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modes_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'906CBF516DFD855A247A43283B8DE057',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenNvData_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'A746A40ECD422DD7E527086167F363DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearResetEmissionRelatedInfo','Class',NULL,0,NULL,NULL,NULL,'7899AF7DD98431E723B4AE5BA4E146FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndProtection','Class',NULL,0,NULL,NULL,NULL,'48959F883CA7EAD94B759DFB12175CF5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AclOperation','Class',NULL,0,NULL,NULL,NULL,'01B329C1A9CE7B37D7E862E89CA330AE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestStringPropertyDef','Class',NULL,0,NULL,NULL,NULL,'4F28545C724EB2ACBF15806703DE1416',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterInterface','Class',NULL,0,NULL,NULL,NULL,'B0AF8C9223445C924E392040877C3503',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'6939D69170652A97AE8946E83C1643E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpRoutingActivationAuthenticationNeeds','Class',NULL,0,NULL,NULL,NULL,'56B52B890BCEF2561CDDB64F28D16969',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HealthChannelSupervision','Class',NULL,0,NULL,NULL,NULL,'8CB14E97F8052D59503015C3426BFD45',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_objectDefintions','Dependency',NULL,0,NULL,NULL,NULL,'2A748B4BF84368E6935729ECF52CAF95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedDataElement_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'1E896A62E5C226BD9B35BA11E2CAAE71',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoleBasedPortAssignment','Class',NULL,0,NULL,NULL,NULL,'31F54509C2A9DF3C4C9921164FD6DAA1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CycleRepetition','Class',NULL,0,NULL,NULL,NULL,'4E26AFD2D9545517710E369396C602EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetImplementationDataTypeElement','Dependency',NULL,0,NULL,NULL,NULL,'DE2A8755E584C6867D4493FB264B97D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_translationTarget_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'BD81A8B57E140F411899119152CE29ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticOperationCycleInterface','Class',NULL,0,NULL,NULL,NULL,'7644CC5508F3756C535749606159348B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedParameter_localParameter','Dependency',NULL,0,NULL,NULL,NULL,'B15B01C8873128DBF28A3258051AE6DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredServiceInstance','Dependency',NULL,0,NULL,NULL,NULL,'C49577D071207EBA6E6C62A1C1CFC6DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EOCExecutableEntityRefGroup','Class',NULL,0,NULL,NULL,NULL,'9D4E13DE1001EEEAABD32E7652412BA0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationGroupPrototypeRefConditional','Class',NULL,0,NULL,NULL,NULL,'48A275BE77DF6617F8A27718EDFC0AA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterDataPrototype','Class',NULL,0,NULL,NULL,NULL,'4B5030B0C61F0AA128C8788A7257F847',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucModuleConfigurationValues','Class',NULL,0,NULL,NULL,NULL,'61654D37ED6F858503E3D0BFD2922F14',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_startOnEvent','Dependency',NULL,0,NULL,NULL,NULL,'A1C616AF86C63F2564BA8A5BA65174A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToTroubleCodeUdsMapping','Class',NULL,0,NULL,NULL,NULL,'6398057ED40B84B0A520977D41799CB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessToMachineMappingSet','Class',NULL,0,NULL,NULL,NULL,'F5FEDB109AA2F40FECDF050117916113',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDrivenTransmissionModeCondition','Class',NULL,0,NULL,NULL,NULL,'9CEC615BC1B8B1525F950E76950C5016',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIoControlNeeds','Class',NULL,0,NULL,NULL,NULL,'74D5E29D2DAD51585B357FBEFD50BC82',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_featureModels','Dependency',NULL,0,NULL,NULL,NULL,'E656D6D06894FE678DC073208C83819F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventSwcInternalBehaviorReference','Class',NULL,0,NULL,NULL,NULL,'47436ED5338C3290CF175AA93087D5E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTestResult','Class',NULL,0,NULL,NULL,NULL,'9F90E7107CD4E2A26BD2CD374323AF02',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_unicastNetworkEndpoint','Dependency',NULL,0,NULL,NULL,NULL,'56AC2977E544EF849B03A5445A3EC226',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iPduIdentifierTcps','Dependency',NULL,0,NULL,NULL,NULL,'ED38EF3A7BA5A25759BD1918DC1C1AD0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_status_contextRootSwComponentPrototype','Dependency',NULL,0,NULL,NULL,NULL,'FDF5F3D9CD88838D666C1942B90AE16F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswQueuedDataReceptionPolicy','Class',NULL,0,NULL,NULL,NULL,'B44C95D822A24203D767EAB1558EA464',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivers_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'CBFEC8F3CAE73FC82554A47E30C62E56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ImplementationDataTypeElementInSystemRef','Class',NULL,0,NULL,NULL,NULL,'445EDC656D8771C5F443D2F794781EA7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CustomCppImplementationDataType','Class',NULL,0,NULL,NULL,NULL,'1162ECADABB2D0B8CDEDCFED777E275F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_evaluatedElements','Dependency',NULL,0,NULL,NULL,NULL,'368C1457F920657BE8E55A0CB3A10E9C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_startActions','Dependency',NULL,0,NULL,NULL,NULL,'151213B4F8AAF4D6B8F4C56ECC1A5C83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPduTiming','Class',NULL,0,NULL,NULL,NULL,'AF4C2D7F6E31E1385F15B87EEE2387E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_linTpNSdu','Dependency',NULL,0,NULL,NULL,NULL,'ACAE4713D78C2136D7532AD8305FDAAF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_WatchdogPhmActionItem','Class',NULL,0,NULL,NULL,NULL,'31E259FF0FB6733900095F0ACC63A7D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Sdg','Class',NULL,0,NULL,NULL,NULL,'CD8B754C969F8B43320E266344D7C517',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwCalprmAxis','Class',NULL,0,NULL,NULL,NULL,'04F695C21CCEE8B66A787B94E88AADB5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswOperationInvokedEvent','Class',NULL,0,NULL,NULL,NULL,'8B1781A7F8597C09E2E9408E72989337',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DeterministicClientResource','Class',NULL,0,NULL,NULL,NULL,'70332F7EDD93EF4879A9DEA07B9CA90C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucValueConfigurationClass','Class',NULL,0,NULL,NULL,NULL,'79C665AF735AF557F9CBD53D0C076132',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modules','Dependency',NULL,0,NULL,NULL,NULL,'BC9BC3B1D535ABB717FBE5B65C85C795',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderAnnotation','Class',NULL,0,NULL,NULL,NULL,'D8AA0A544D08F22EE1576C5C58CBC68B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayArTpConnection','Class',NULL,0,NULL,NULL,NULL,'5AD793CBCC8C43092B1EBBB9E74E84D2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortRatePolicy','Class',NULL,0,NULL,NULL,NULL,'D23FD683878C2B6746CADDDB1EF07695',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'01570966680F1C8B7A0893557949A7FC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMemoryDestinationUserDefined','Class',NULL,0,NULL,NULL,NULL,'899A71F765CB7268A2E11E1B1B93EAEE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CommunicationConnectorRefConditional','Class',NULL,0,NULL,NULL,NULL,'CBC0CC2D5F69C06ECCDB39AF3B79EF24',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939DcmIPdu','Class',NULL,0,NULL,NULL,NULL,'53D037968AF628962FB8BC8D7C8F155D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstElementInstances_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'9AFE20FF7347437BA1C71C748F25A459',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_securityLevel','Dependency',NULL,0,NULL,NULL,NULL,'095D19199F3E12CFE45497833C56F1AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_finalCheckpoints','Dependency',NULL,0,NULL,NULL,NULL,'DDCC3C890976F01725096F34471C2020',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcServiceDependency','Class',NULL,0,NULL,NULL,NULL,'18943A8EB7F6B5310A2E6AB221DDBDE3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_networkTimeSlave','Dependency',NULL,0,NULL,NULL,NULL,'1419F31011AA7C8342D6B2040D8DAB9E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcToSwcOperationArguments','Class',NULL,0,NULL,NULL,NULL,'E1E3AB52AD04CF82A71EF49BB2C0DD9F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvironmentalCondition','Class',NULL,0,NULL,NULL,NULL,'68EA377F38928CB82D1B431FEE104E04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProvidedUserDefinedServiceInstance','Class',NULL,0,NULL,NULL,NULL,'DBF350EF1FB7DDB6440AFB210523ACCC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthGlobalTimeDomainProps','Class',NULL,0,NULL,NULL,NULL,'1CC345BCA4BAA314649012AAB99D9641',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'AEB955AB18FB079C0CA7712A859C708C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationRecordElement','Dependency',NULL,0,NULL,NULL,NULL,'02F4A1B7FD8EA0B743E8727E5B23F2FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsistencyNeedsBlueprintSet','Class',NULL,0,NULL,NULL,NULL,'EC0122C7C49A0ADBB4995892D9243326',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuTiming','Class',NULL,0,NULL,NULL,NULL,'DF9CA41AF18B305A53FFF227A9F77A81',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedImplementationDataType','Dependency',NULL,0,NULL,NULL,NULL,'E3CBC19E37CF5AE991E08F39F1123E0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_End2EndEventProtectionProps','Class',NULL,0,NULL,NULL,NULL,'A17A9AFD154306CE51DB266F78D0C80F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implicitDataAccess_target','Dependency',NULL,0,NULL,NULL,NULL,'2FA3A0ED9A3EBBD8C974D7A40B5F9E6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptExecutionContext','Class',NULL,0,NULL,NULL,NULL,'957A45117B79DAAB1ED10D19145508AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsCryptoCipherSuite','Class',NULL,0,NULL,NULL,NULL,'FCCFD7893EC84200B38AC21E5001B734',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticComControlSubNodeChannel','Class',NULL,0,NULL,NULL,NULL,'28556009167441C181BB02784FDFEE7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readScalingDataClass','Dependency',NULL,0,NULL,NULL,NULL,'73B7827B878C573B50F5906FC4666218',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_preSharedKey','Dependency',NULL,0,NULL,NULL,NULL,'7E5B0630F0A722561B4B2530A4949525',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstPort','Dependency',NULL,0,NULL,NULL,NULL,'A8332F2DE3F36C9F366B834DD16C26B0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DependencyOnArtifact','Class',NULL,0,NULL,NULL,NULL,'4EE58ADC27B5BDBD2ADD632ABA483E5A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuPartition','Dependency',NULL,0,NULL,NULL,NULL,'9F3BE9734C021EDD5B24CD53FDBAFBA9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestOnBoardMonitoringTestResults','Class',NULL,0,NULL,NULL,NULL,'632F5DB118C64E746FDEFFA46ECFFBCB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipTpChannel','Class',NULL,0,NULL,NULL,NULL,'CF28978E8BB381A57995E5C6DAE67F4A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuScales','Class',NULL,0,NULL,NULL,NULL,'4FBA46DBDBA9D37A8D3F34BB0F004754',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyFile','Class',NULL,0,NULL,NULL,NULL,'246D8B2AF47ABD202ED07932293E871D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestEmissionRelatedDTCPermanentStatus','Class',NULL,0,NULL,NULL,NULL,'553829AFAB564FEED78E90426F64CDFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintPolicyNotModifiable','Class',NULL,0,NULL,NULL,NULL,'50859F70450982D78BF6B73F8A4A3960',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanCommunicationControllerConditional','Class',NULL,0,NULL,NULL,NULL,'0EEA3D3F6E16E3BCEFEA2E16453E4CB4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingDescriptionEventChain','Class',NULL,0,NULL,NULL,NULL,'222B40969EE2F87A8BFFDD611134C032',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedClusterConditional','Class',NULL,0,NULL,NULL,NULL,'7DB1363E252AA055FC574D046BF3A0B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subSdg','Dependency',NULL,0,NULL,NULL,NULL,'85E30E28566E3BD77D6634091E6C501D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticGenericUdsNeeds','Class',NULL,0,NULL,NULL,NULL,'9406406D0779A0EE73C709FD91CD3AF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswDebugInfo','Class',NULL,0,NULL,NULL,NULL,'DE9AB76E9417FCC2CE913A3179F5BCA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApSomeipTransformationProps','Class',NULL,0,NULL,NULL,NULL,'D9A4EB9B9C47EA89FE15130E67DAB3A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VehicleRolloutStep','Class',NULL,0,NULL,NULL,NULL,'3BA69F79CA9057094313F14FA9108EAC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_directTpSdu','Dependency',NULL,0,NULL,NULL,NULL,'029B052367D18F212EDA8E1B26FBCAE0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_relatedTraceItem','Dependency',NULL,0,NULL,NULL,NULL,'8B42841AF072F96024AEC7C6789C8477',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AliasNameAssignment','Class',NULL,0,NULL,NULL,NULL,'4B030129BF8E429617FAB91D901F583F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortPrototypeBlueprintMapping','Class',NULL,0,NULL,NULL,NULL,'D6B858F1790DD42A930C755839AC7333',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'8ADC8E9CCBAC04C8EBA6EB109F8358D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RawDataStreamMethodDeployment','Class',NULL,0,NULL,NULL,NULL,'39542BCED999A15A58BD75687BCDF368',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedLifeCycleStateDefinitionGroup','Dependency',NULL,0,NULL,NULL,NULL,'671431E05B9DAFE12B1853885C36F114',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswTriggerDirectImplementation','Class',NULL,0,NULL,NULL,NULL,'BFE3E4385B1F2FDDB79D6E554B59B45A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nmNode','Dependency',NULL,0,NULL,NULL,NULL,'450BBF971BF0EB693AD6C5C4FDAAB38F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompositeNetworkRepresentation','Class',NULL,0,NULL,NULL,NULL,'9C19541E1D5C61491CA62B9FC5A083AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticInfoType','Class',NULL,0,NULL,NULL,NULL,'671BA6DCEE60E615850941FAABE56762',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRPort','Dependency',NULL,0,NULL,NULL,NULL,'90361E67A18CB84C58C28285F43CBB56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComEventGrant','Class',NULL,0,NULL,NULL,NULL,'4B578214CAC1D3B8F74BFB57DD718C49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_collectedInstances_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'BB54EE8622822148B852B85A77DE07D3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInstanceCollectionSet','Class',NULL,0,NULL,NULL,NULL,'EC338A18DDE39C4FF01422BC2CE1593A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticAccessPermission','Class',NULL,0,NULL,NULL,NULL,'534E9D7F8C9B8CE0A8A727B934F47D1F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CommunicationBufferLocking','Class',NULL,0,NULL,NULL,NULL,'D7BB0F3A3D0A379DB4DF2C98EB6E99E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_prefix','Dependency',NULL,0,NULL,NULL,NULL,'897F3E613159293D3221EB905292AEAF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_frCluster','Dependency',NULL,0,NULL,NULL,NULL,'1B4C2A9D68BF94013091FED5B2913855',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeCanSlave','Class',NULL,0,NULL,NULL,NULL,'C7CCDD581E827EB745BC81FD10731188',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MlFigure','Class',NULL,0,NULL,NULL,NULL,'433738BB861CC1D7863F28425ECC6DE8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEndpointArgument','Class',NULL,0,NULL,NULL,NULL,'0D508479E794668532EEB5198C81BEEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Tt','Class',NULL,0,NULL,NULL,NULL,'71EDF0A7AC0F750E65BD4E4D777FC848',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_exclusiveAreaNestingOrders','Dependency',NULL,0,NULL,NULL,NULL,'A6823BEDA9D74B2760CFE5E449D68811',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgReference','Class',NULL,0,NULL,NULL,NULL,'DE86C7F668735C878348631EC8C00E7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operation_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'3204CBDF9AC894376216A8CDFF41C763',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucChoiceReferenceDef','Class',NULL,0,NULL,NULL,NULL,'1EEFF0C4EFF2EFC113CE980D4BB8F8BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IoHwAbstractionServerAnnotation','Class',NULL,0,NULL,NULL,NULL,'E82D0556999F2E1D52130A956BDB538F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototype','Dependency',NULL,0,NULL,NULL,NULL,'8A9C94E34B9325B211155690CEB57C5D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationDataTypeElement_context','Dependency',NULL,0,NULL,NULL,NULL,'B515C519CC4E6B4814B2D5E3BB5979DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswAsynchronousServerCallPoint','Class',NULL,0,NULL,NULL,NULL,'B86E3319424934E56A9A0B1CE2B7B33E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanNmCluster','Class',NULL,0,NULL,NULL,NULL,'6F5300707F759DA122003170A98067DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_disabledInModes_targetMode','Dependency',NULL,0,NULL,NULL,NULL,'71C626C5CC3AC84F7EC796322A13FA84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSynchronizationSlaveInterface','Class',NULL,0,NULL,NULL,NULL,'E0DA425390EB2C087B7F2B68BDE734CA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucValueCollection','Class',NULL,0,NULL,NULL,NULL,'735419551C4C8764EBB8D968AE1BCEC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalBasedFieldToISignalTriggeringMapping','Class',NULL,0,NULL,NULL,NULL,'3C96CBA7A73CEAEAC3135011E0F17AE4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCommonPropsConditional','Class',NULL,0,NULL,NULL,NULL,'417DBBB8CBD2DCE9301734C662AACCF5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_processDesign','Dependency',NULL,0,NULL,NULL,NULL,'9E583DA93D5F324BA9A9DCC2CCBB32C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinSporadicFrame','Class',NULL,0,NULL,NULL,NULL,'D181BF2BF6700D69ABEE6408E7AF5B66',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BulkNvDataDescriptor','Class',NULL,0,NULL,NULL,NULL,'CBDDA267DD002F78761F49F7CF641711',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsumedProvidedServiceInstanceGroup','Class',NULL,0,NULL,NULL,NULL,'8DA0CC30A0E37252D4182E974163F35C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_allowedIPv6ExtHeaders','Dependency',NULL,0,NULL,NULL,NULL,'4754BFAA32DE52E90C580F1EBFD58E06',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeUdsToClearConditionGroupMapping','Class',NULL,0,NULL,NULL,NULL,'AA81740FCDEE98827497D816FA02F958',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModuleDescriptionRefConditional','Class',NULL,0,NULL,NULL,NULL,'0634F26021DB969EBC46A149B347A375',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceInstance','Dependency',NULL,0,NULL,NULL,NULL,'AA31D86C4F4DB21ED10D9809290CF9C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswServiceDependency','Class',NULL,0,NULL,NULL,NULL,'8BA1D0F22C6779B95E0821355C7C17A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nPdus','Dependency',NULL,0,NULL,NULL,NULL,'8CE5E260F091F9B5060096E2566058BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestUploadClass','Class',NULL,0,NULL,NULL,NULL,'5989F951D19FA7F6744B89B5E77C8B61',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsRpcServiceDeployment','Class',NULL,0,NULL,NULL,NULL,'6EA02772CD650AEC9C85D8F2DC883E1A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwRecordLayoutV','Class',NULL,0,NULL,NULL,NULL,'60002D8958517E75881B8E0FF4D968A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgTailoring','Class',NULL,0,NULL,NULL,NULL,'E85D64103D6A09D5566B540CBCFEA933',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InitEvent','Class',NULL,0,NULL,NULL,NULL,'25639530AAA41E37BCA7132A6B1AAEE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptArHook_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'E7B56AC9FE5E97520066E98F9BE2E066',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessToMachineMapping','Class',NULL,0,NULL,NULL,NULL,'766521B45A77ACF837D7E3CB85117D25',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDynamicallyDefineDataIdentifierClass','Class',NULL,0,NULL,NULL,NULL,'0CE9D61BBB418636C498BA33FAF62D04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_initialCheckpoints','Dependency',NULL,0,NULL,NULL,NULL,'B7E418134900751E2EEDDE1925A7C292',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpEntity','Class',NULL,0,NULL,NULL,NULL,'494DF04601E22DF750E7E833D7A5CD0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FrameMapping','Class',NULL,0,NULL,NULL,NULL,'9A6933BDEAF9EF1C0EE1C8113F4E539D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataTransformation','Class',NULL,0,NULL,NULL,NULL,'C9DCE600E17FC324FBF43890318FAA39',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvBlockDataMapping','Class',NULL,0,NULL,NULL,NULL,'5E266B838ED94308A4F23F61AF1DF390',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConstantSpecification','Class',NULL,0,NULL,NULL,NULL,'C66D3644D6FF75F1B42730B11BF8BA6B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_indicator','Dependency',NULL,0,NULL,NULL,NULL,'D250A3A52F4909809F84B91D9742D36F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureSelection','Class',NULL,0,NULL,NULL,NULL,'88464EC1899565E68E0FBB5EA12C2F10',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_macMulticastAddress','Dependency',NULL,0,NULL,NULL,NULL,'CFE15ECF0F78048254F0D56FDAAF55BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataPrototypeInSr','Dependency',NULL,0,NULL,NULL,NULL,'DA839D76DC6BBCB9A4ECF5F2E93901CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InterpolationRoutineMappingSet','Class',NULL,0,NULL,NULL,NULL,'77AC063E4D9CE3FB1B185E706D64DFA1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvSubElement','Dependency',NULL,0,NULL,NULL,NULL,'BC3F358CC6C73CEF00D1BA69D7DDD4BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_returnSignal','Dependency',NULL,0,NULL,NULL,NULL,'8B55304AAB6CF64251F7841B8B604D2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareActivationDependencyFormula','Class',NULL,0,NULL,NULL,NULL,'B478ECD2193C8E00D0FF899E8AFB8E45',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InterfaceMappingSet','Class',NULL,0,NULL,NULL,NULL,'7EB4C37DA4FC7FABAEB842B6139FF6E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_startupConfig','Dependency',NULL,0,NULL,NULL,NULL,'7BF4DB1A94CBF69D072D311C79AE0E1E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EOCExecutableEntityRef','Class',NULL,0,NULL,NULL,NULL,'FF3FF5C196AF5206F0D3FE8139457451',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpRoutingActivationConfirmationNeeds','Class',NULL,0,NULL,NULL,NULL,'B4213BDAFCAB92C8B8BC1751D30F6CED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredClientServerEntry','Dependency',NULL,0,NULL,NULL,NULL,'435C9F06F9619AFCB98D9929F384F403',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSoftwareClusterProps','Class',NULL,0,NULL,NULL,NULL,'2F7AA49AC4889D7067BA72848436AD78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsEventQosProps','Class',NULL,0,NULL,NULL,NULL,'8213D9407208BD66A09E41F8134B877D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalTriggeringRefConditional','Class',NULL,0,NULL,NULL,NULL,'7702CE4BBE282D0DBDDEE2C164619F35',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerOperation','Class',NULL,0,NULL,NULL,NULL,'1B924755425D5C3026EF38C9AB30D568',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_assignedLinSlaveConfig','Dependency',NULL,0,NULL,NULL,NULL,'367785C45322A9DD3BDFBBD463BD3CB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryChapter','Class',NULL,0,NULL,NULL,NULL,'5847E57DA2752C66458E7B5723838D07',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpConnectionControl','Class',NULL,0,NULL,NULL,NULL,'A3F6D4441A65B5E220CBF5AF3D672EFE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortPrototypeBlueprintInitValue','Class',NULL,0,NULL,NULL,NULL,'2E0E81F3624965671C04A6F88F4D0854',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceProxySwComponentType','Class',NULL,0,NULL,NULL,NULL,'1EB5952DB9E2D93D9A48444CDD03061E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_includedVariants','Dependency',NULL,0,NULL,NULL,NULL,'E3CA8AEC6CA4C7A98B2C9B1955E5EE1B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayAbsolutelyScheduledTiming','Class',NULL,0,NULL,NULL,NULL,'AB8919C0759F0F303C79C5F6F67B9E2D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalTriggering','Class',NULL,0,NULL,NULL,NULL,'252E9FD9B010CC761C36C526FBD27152',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_inputVariableType','Dependency',NULL,0,NULL,NULL,NULL,'BA7BBEB28130CE5EE24AFEED4D65DFFF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestDownload','Class',NULL,0,NULL,NULL,NULL,'F017DA0D4B8E091CACD04D1313051214',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Process','Class',NULL,0,NULL,NULL,NULL,'D86571AF159BF8287902400F657D74A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterInstance_autosarParameter_target','Dependency',NULL,0,NULL,NULL,NULL,'78B3F6ACDA3BBB18CAD5D33C4F99F218',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalMapping','Class',NULL,0,NULL,NULL,NULL,'A8C2867907FD2EFF52373DDF686E975A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableProvidedPort_context','Dependency',NULL,0,NULL,NULL,NULL,'175B9F91DE2971BD365C91EFEF8EFC40',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerOperation_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'B7CCCC9B0DC9B5D58F6D3FE5C0D66D42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_authenticationProps','Dependency',NULL,0,NULL,NULL,NULL,'C0D137B30D99ED9CD02543B6B7BB431C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationCompositeElement_target','Dependency',NULL,0,NULL,NULL,NULL,'CC94C0F934826C8A5536868BABCEA330',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setter','Dependency',NULL,0,NULL,NULL,NULL,'B2D4610E9152E8370BF0E760811426DF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RootSwCompositionPrototype','Class',NULL,0,NULL,NULL,NULL,'4812D26941F8A4779AA5250AA5EC4D34',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipRequiredEventGroup','Class',NULL,0,NULL,NULL,NULL,'DF8B120141F2AEFDDE9AD66DB36793B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticTestResults','Dependency',NULL,0,NULL,NULL,NULL,'2B206A535735BBAFA2E9F0622C1B0A79',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationType','Dependency',NULL,0,NULL,NULL,NULL,'993BA83B51257E599955F36F05BCEB8D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_components_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'01C10A510A5BAFED021184358B5BBF23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPinGroupContent','Class',NULL,0,NULL,NULL,NULL,'38BD76324412D6B4FACBC2CDFBAEAFA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayFifoConfiguration','Class',NULL,0,NULL,NULL,NULL,'9D03484E0767A0E9E5A6ECB46372CCCC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComplexDeviceDriverSwComponentType','Class',NULL,0,NULL,NULL,NULL,'C38DC1E54481C7C463C2A2F817B40EB5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AbstractClassTailoring','Class',NULL,0,NULL,NULL,NULL,'CC6212C04DDD551DD06277265EFC07C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeInServiceInterfaceRef','Class',NULL,0,NULL,NULL,NULL,'BD86AFC3CB2E488F1B61C67638D2A342',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SingleLanguageLongName','Class',NULL,0,NULL,NULL,NULL,'5EC23882AF3ACC3DA16F577AC48E1112',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationArrayElement','Dependency',NULL,0,NULL,NULL,NULL,'2F13A2BDA13D22BF148F99A443C0AA10',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RawDataStreamDeployment','Class',NULL,0,NULL,NULL,NULL,'B56C16479576088203452112280A3912',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeSenderPolicy','Class',NULL,0,NULL,NULL,NULL,'7AE14051FDBFD80E886DB68C0CE59FAF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeInPortInterfaceRef','Class',NULL,0,NULL,NULL,NULL,'B29843FAA381D06372F426B7C7A8CADA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_keyExchanges','Dependency',NULL,0,NULL,NULL,NULL,'38ECD5F06BC936B6F21ACE1B8102DBA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExternalTriggerOccurredEvent','Class',NULL,0,NULL,NULL,NULL,'E3C406B123E916539B73D8185353C6BC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_upstreamReference_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'9756173BACA8EA9894F963B4E6208F9F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransientFault','Class',NULL,0,NULL,NULL,NULL,'EE66B9E336AA3F39D9BE96346B4C6750',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsJobMapping','Class',NULL,0,NULL,NULL,NULL,'1EB7D678CB083E8871EF84709D4855DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdMonitorServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'4DC9B58010EB503B46F931D229EA1C02',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsCryptoServiceMapping','Class',NULL,0,NULL,NULL,NULL,'3043A9E1E8BA1608E436F66B9D5AA60F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SubElementMapping','Class',NULL,0,NULL,NULL,NULL,'2833535723FF3DF65A0A0C6026D4CC6A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFunctionIdentifierInhibit','Class',NULL,0,NULL,NULL,NULL,'933A6BA2755AE53CB5500C1763D4E3B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PdurIPduGroup','Class',NULL,0,NULL,NULL,NULL,'FC256143D6008BEDA0D8190554176D78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AccessCountSet','Class',NULL,0,NULL,NULL,NULL,'F41DBC6D649A794BCA999C1273B39EA0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIoControlClass','Class',NULL,0,NULL,NULL,NULL,'B6BEF4B8356AC087FF7D8B21CE0EF2AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestControlOfOnBoardDevice','Class',NULL,0,NULL,NULL,NULL,'E99E33007FACFE51D828F119982AD96F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mode_targetMode','Dependency',NULL,0,NULL,NULL,NULL,'F09582C106B7DA984C095F71B557299B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRunnableEntity','Dependency',NULL,0,NULL,NULL,NULL,'2ED239BD5E6419265602A411941A360F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Code','Class',NULL,0,NULL,NULL,NULL,'F084291A645A9478CBD2F23E4066AC9C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DelegatedPortAnnotation','Class',NULL,0,NULL,NULL,NULL,'5DE3FCEB8CB0F7A34BA123BF470688FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HardwareTestNeeds','Class',NULL,0,NULL,NULL,NULL,'E8B17D1B8B7C1658A12D66F608F6992C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSynchronizationPureLocalInterface','Class',NULL,0,NULL,NULL,NULL,'F0C1B1EFB766C4AFCDE366CEA8BB9272',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DocumentElementScope','Class',NULL,0,NULL,NULL,NULL,'4974EC482F4091EDE82A1E98F731042F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdClientEventGroupTimingConfig','Dependency',NULL,0,NULL,NULL,NULL,'84C2FE5CED3A4BA1C0AB21B25DAE6511',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setterCall','Dependency',NULL,0,NULL,NULL,NULL,'F8CF6F21B7A0D9768CB366577A62DF44',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingCondition','Class',NULL,0,NULL,NULL,NULL,'E846BF8ECDCC05D3C626D73A11FC027F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwAttributeDef','Dependency',NULL,0,NULL,NULL,NULL,'4A1C44ED32FEB801A712D459BD82BA53',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTypeForSerializations','Dependency',NULL,0,NULL,NULL,NULL,'90E74F05E26D2AF60B2B3B24A3DF008B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyDataRequiredComSpec','Class',NULL,0,NULL,NULL,NULL,'258794D42484D893DD24F03458113C10',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_e2eProfileConfiguration','Dependency',NULL,0,NULL,NULL,NULL,'8D7109C1BB0C0036C4CE86AEDCE351AE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProvidedSomeipServiceInstance','Class',NULL,0,NULL,NULL,NULL,'8682975CB671E35BF08D56DF0E486A57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operation_targetProvidedOperation','Dependency',NULL,0,NULL,NULL,NULL,'02AEB3E7DC78AEF849D91816437B27D9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'C93A755710FB7D3CEC888D1F2356C1F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedDataElement_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'0FF6217650599F9BDFF7CC62BD7D557B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptComponent','Class',NULL,0,NULL,NULL,NULL,'0D7562D3DE8AA5B6AF7928AB0E938C2E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UcmModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'6C5F6F66C9A4396042B8FCD211A6DD21',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortShaper','Class',NULL,0,NULL,NULL,NULL,'54FE5A95E74A3BA8606EA60CC866775E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlatInstanceDescriptor','Class',NULL,0,NULL,NULL,NULL,'15D3163ABCAD4375D6EE34F3025CF50C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependency_target','Dependency',NULL,0,NULL,NULL,NULL,'7C44517162C11A6A9D9A7A69B1097826',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucStringParamDefConditional','Class',NULL,0,NULL,NULL,NULL,'D65C7BEC6DBF7E0A94ADC75A2FF6CF9E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticSessions','Dependency',NULL,0,NULL,NULL,NULL,'995C268A402D347CD4A11E2B4D783AB5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessorCore','Class',NULL,0,NULL,NULL,NULL,'BA53ECFDF49AE308826FAC8780EA51FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InvalidationPolicy','Class',NULL,0,NULL,NULL,NULL,'B5C1C42DECBCFCFAA503E7937462F44B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataTransfer','Class',NULL,0,NULL,NULL,NULL,'52B5A6CFD278DBD5E9E775325D59C080',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgContents','Class',NULL,0,NULL,NULL,NULL,'A827E31D3C2E9D6EEAF2E8D60FEAD359',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_managedPhysicalChannels','Dependency',NULL,0,NULL,NULL,NULL,'5C1D72354E449B72D994512C2462BA11',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_objects','Dependency',NULL,0,NULL,NULL,NULL,'36A4A38F443AE2512B546B89A0940001',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_components_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'DEAF0B47E2735163835D255EF5B21815',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestOnBoardMonitoringTestResultsClass','Class',NULL,0,NULL,NULL,NULL,'81E930AAA321F47B3EF9E1CC9E71576A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SerializationTechnology','Class',NULL,0,NULL,NULL,NULL,'AFE44E28F582DCF5C6522FB70460ABB2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PPortPrototype','Class',NULL,0,NULL,NULL,NULL,'EEB63FB31393E8F4AF84BE06EA506C87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'4E1E1EC72A0DD5E4B49D918285F20944',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondElementInstances_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'94D46ADE43FD191E4CC58EB0F6B9FBA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_field_contextSwComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'4FC88EF9106BB1698837EDF4E87ECA5B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_referenceValue','Dependency',NULL,0,NULL,NULL,NULL,'CD26C89C89CC41F3D39D9437D94A2490',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_methodReturn','Dependency',NULL,0,NULL,NULL,NULL,'66CBA6C6838AF0448B5972494AD3875A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintPolicyList','Class',NULL,0,NULL,NULL,NULL,'F77047022EEE68ACC45F02D5EFFDD4A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticOperationCyclePortMapping','Class',NULL,0,NULL,NULL,NULL,'CF78C83E74973CC00202447975C8DA55',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EventMapping','Class',NULL,0,NULL,NULL,NULL,'A224A60F4FE17D5C2A35604852B48FEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipEventGroup','Class',NULL,0,NULL,NULL,NULL,'C6EAFEC77654F9F93BBA7C1DDE9982B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_txPduPool','Dependency',NULL,0,NULL,NULL,NULL,'E4729DDF0BD7BEB014EC17D6DC4D92BD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_features','Dependency',NULL,0,NULL,NULL,NULL,'72E96EBFC81654740FA802601B0CC257',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndTransformationISignalProps','Class',NULL,0,NULL,NULL,NULL,'DAB7EE5BB3128D4C4023E5D927D28231',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortDefinedArgumentValue','Class',NULL,0,NULL,NULL,NULL,'B31F1D1E18F078C8A5B720525A5BF9F8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AnalyzedExecutionTime','Class',NULL,0,NULL,NULL,NULL,'8214EF26AC2348E0636FD3C157E8F546',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticExtendedDataRecord','Dependency',NULL,0,NULL,NULL,NULL,'5A12599277F7EA349C749A6AF5AF8237',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntities_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'ED94EB03761A5C8F95B7002A1E2A82BE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedPduTriggerings','Dependency',NULL,0,NULL,NULL,NULL,'F675E20B96030DC352C2AEAB56524554',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchedAckRequest','Class',NULL,0,NULL,NULL,NULL,'96044E0ABF1A35EE12229BC3BDD4E7DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedApDataElement_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'697BF67AB4409C7853A8AC70C2C40A1C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_payload','Dependency',NULL,0,NULL,NULL,NULL,'42AF069A4707A890FF962133AC52572F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sender_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'4839DC13CE98E6F84B72C256A48A4864',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompositeInterface','Class',NULL,0,NULL,NULL,NULL,'74B36E1EDDE08E4DF6C49D22C91E0AA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swSystemconstantValueSets','Dependency',NULL,0,NULL,NULL,NULL,'524CA2FFEFA3AF2970E3DE16244AE154',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arParameter_autosarParameter_port','Dependency',NULL,0,NULL,NULL,NULL,'A2647112B6ACA9453389C60ECDD34D91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableAccessedForDebugs','Dependency',NULL,0,NULL,NULL,NULL,'314DEAA20D529EFE587B9528D72D849C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'8BBFD7C3BD00EC047E52EDB75E99F082',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswInternalTriggeringPoint','Dependency',NULL,0,NULL,NULL,NULL,'BEF4C203DEACB739AB898B7E9F00B3EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SupervisedEntityCheckpointNeeds','Class',NULL,0,NULL,NULL,NULL,'B82849044FA1B5B450652FF7626BD55B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticPowertrainFreezeFrame','Class',NULL,0,NULL,NULL,NULL,'93CC764E187AD86B2B6C266308F96C65',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalProps','Class',NULL,0,NULL,NULL,NULL,'6E92D19A33EB2B97E8C44EDF2D1E9776',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_responseGroup','Dependency',NULL,0,NULL,NULL,NULL,'DE14F3C72B46DCAA78EC4E58015A3876',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ImplementationDataTypeSubElementRef','Class',NULL,0,NULL,NULL,NULL,'FD5E7EC35BBCA6314CC1120398D5750C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrmCharAbsTol','Class',NULL,0,NULL,NULL,NULL,'1FAA428CC39C8D1DC257FD4C246BBE95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanClusterConditional','Class',NULL,0,NULL,NULL,NULL,'EE60BE769B47FF7E6B6DC7CF06FF1C74',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDtcChangeTrigger','Class',NULL,0,NULL,NULL,NULL,'C5B229257C78490CFCD12A32028E071E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_returnSignalTriggering','Dependency',NULL,0,NULL,NULL,NULL,'7614705F105776C72E3E54223836285D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'FCE12AC9C850FE6286527CF3164385AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvModeCondition','Class',NULL,0,NULL,NULL,NULL,'159232E0F313B37D3E3022C0DF5FBE9F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedSwcServiceDependency_rootContext','Dependency',NULL,0,NULL,NULL,NULL,'A09E2C34529E139F9734FD4D81DE4670',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DelegationSwConnector','Class',NULL,0,NULL,NULL,NULL,'53806D023BF6DC9339E5C3D7B3FCF2DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventFrClusterCycleStart','Class',NULL,0,NULL,NULL,NULL,'28F5FB175D36ED9526FFDE3270B900D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDownloadInterface','Class',NULL,0,NULL,NULL,NULL,'BC6657116FFC5E4AB9A7CF14E6C23263',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_componentImplementation','Dependency',NULL,0,NULL,NULL,NULL,'435735F96C4787D8788216A730599ED3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransmissionModeTiming','Class',NULL,0,NULL,NULL,NULL,'37EC471EB02A98803339D616CE4F0BB0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecuredIPdu','Class',NULL,0,NULL,NULL,NULL,'F477C3C1D3DA8F47BEB28AC29BC32C9B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAxisGeneric','Class',NULL,0,NULL,NULL,NULL,'C0F7E3507D8F5429043E8DBE76CCEE3F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_moduleInstantiations','Dependency',NULL,0,NULL,NULL,NULL,'4305114BFEB42C25E84580DAE3C17217',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LogicalSupervision','Class',NULL,0,NULL,NULL,NULL,'4A86E3E59CF9BA3EC192AEEE102AF8CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderRecArrayTypeMapping','Class',NULL,0,NULL,NULL,NULL,'31605D7F648481191789C1D6E4A438A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_routineControlClass','Dependency',NULL,0,NULL,NULL,NULL,'9AAD0E6D27E5B02E0B7FC91371B418E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vfcs_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'4D1991F79D4B2ABC4C4C0BA98F281B67',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutine','Class',NULL,0,NULL,NULL,NULL,'D4E5850A6408B99A8C767051F1C165D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultiplexedIPdu','Class',NULL,0,NULL,NULL,NULL,'AAA75BC5E935C293DB4597CF0E74AE5F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_canEnterExclusiveAreas','Dependency',NULL,0,NULL,NULL,NULL,'4237006ACCAB85BDE4731B17B0527ED3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureMap','Class',NULL,0,NULL,NULL,NULL,'A272FC7337650307F746A7EC89ECB5B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_collisionResolvingSchedule','Dependency',NULL,0,NULL,NULL,NULL,'87F2B2E0CF330CF6274E8709376C15AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalIPduRefConditional','Class',NULL,0,NULL,NULL,NULL,'F6821A1AE5A64067E0DA9D70DA9AB904',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultilanguageLongName','Class',NULL,0,NULL,NULL,NULL,'5D7ED69044C5196AB6A5BC133BF35B3A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataIdentifier','Class',NULL,0,NULL,NULL,NULL,'E1C7CC1E6DC62F7D19BE04184AB31F65',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_identifiable','Dependency',NULL,0,NULL,NULL,NULL,'41042CF36C3B6A6FE22F36472BB82D73',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_checkpoint','Dependency',NULL,0,NULL,NULL,NULL,'CDEC5C2C07097A3E5BD19041C31A476B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_troubleCodeJ1939','Dependency',NULL,0,NULL,NULL,NULL,'1D291EF92680C54B9D2F26EFD621F1F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeFrSlave','Class',NULL,0,NULL,NULL,NULL,'1E42F376D7644A2FCE56803DFF16C652',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ViewMap','Class',NULL,0,NULL,NULL,NULL,'55CEDC4C786A9C1B837920B335FF3AAA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationCompositeElement_context','Dependency',NULL,0,NULL,NULL,NULL,'A250B96E22AEAECD14455A1EF0CC4100',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApApplicationErrorDomain','Class',NULL,0,NULL,NULL,NULL,'DE01B5167EDC5B2562A9EB8AD2382838',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nextHigherCertificate','Dependency',NULL,0,NULL,NULL,NULL,'FE4F2CE2926611B8772D978BFCCA3B50',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanClusterBusOffRecovery','Class',NULL,0,NULL,NULL,NULL,'98BE746831A1C1A4B34BE32EF7F32359',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredARElements','Dependency',NULL,0,NULL,NULL,NULL,'FEC1BFAFBECAF18A60D9C0A21A0D1D70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_affecteds','Dependency',NULL,0,NULL,NULL,NULL,'6831DBF65A1F968A8DA77A015F8BC7FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcModeSwitchEvent','Dependency',NULL,0,NULL,NULL,NULL,'63244EB2DC14810C51F0BBB76FC570DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswModuleInstance','Dependency',NULL,0,NULL,NULL,NULL,'01D6DDF8EAE2F85DF7C9DD7259DDE1C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CppTemplateArgument','Class',NULL,0,NULL,NULL,NULL,'892CD39380A57157AFEC417C12A60F95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'FD9F7C7F8029A19EE5F22CBB43F89952',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswCompositionTiming','Class',NULL,0,NULL,NULL,NULL,'4350CBF86EC3569AB3D35C01661EA008',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwPins','Dependency',NULL,0,NULL,NULL,NULL,'BDE8DEC8AEE77378EDE333C9E0589A07',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_commController','Dependency',NULL,0,NULL,NULL,NULL,'7D732E37468980C3E3D3A3BE7C7FA407',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getterReturnSignal','Dependency',NULL,0,NULL,NULL,NULL,'F501FD44C5FA96842129C78484839E2E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AliasNameSet','Class',NULL,0,NULL,NULL,NULL,'50D5A15D92402B93FE2647B5A493A5C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceElements','Dependency',NULL,0,NULL,NULL,NULL,'C2E06A76A11DA67B4A49B1887498F86F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTransferClass','Dependency',NULL,0,NULL,NULL,NULL,'6B0CF95CE9E4DB48A127A088147989E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucFunctionNameDefConditional','Class',NULL,0,NULL,NULL,NULL,'5811057F5267D2145A5FC9B316B18BD9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswTrigger','Dependency',NULL,0,NULL,NULL,NULL,'17064C4B6335AB27AF687518C69FD82D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_freezeFrame','Dependency',NULL,0,NULL,NULL,NULL,'4E2E7609290EC18CDEEB6E37F795A25C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MlFormula','Class',NULL,0,NULL,NULL,NULL,'501EAE7F92FDDD1DB8A1C186C31D9527',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntityGroups_context','Dependency',NULL,0,NULL,NULL,NULL,'930EBF0086E2FC83C0888FC48AC168AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmCheckpoint','Class',NULL,0,NULL,NULL,NULL,'3F79015FC6C2714C5883AC01AC6B3BEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_customServiceClass','Dependency',NULL,0,NULL,NULL,NULL,'657D7C60E59C8E06949C9EC88D59D61A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_encapsulatedEntry','Dependency',NULL,0,NULL,NULL,NULL,'CE855AAE9FBECE23CBB764CD55747CDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedDataElement_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'C732ABB7E0162E733F495458421137BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestFileTransferClass','Class',NULL,0,NULL,NULL,NULL,'85AD2DEFA6C44860236A85D6E272B390',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_communicationClusters','Dependency',NULL,0,NULL,NULL,NULL,'12ABA500791813EC399AD2578344586D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_assignedFrameTriggering','Dependency',NULL,0,NULL,NULL,NULL,'62B51CFEA040F84424FBC8F196882628',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_proviedeData','Dependency',NULL,0,NULL,NULL,NULL,'4599CC207C8AA09C717901A16E353C05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecOcCryptoServiceMapping','Class',NULL,0,NULL,NULL,NULL,'FE0EF9F6D287B8309D85FF7A51FB5EF8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModuleDependency','Class',NULL,0,NULL,NULL,NULL,'257C9D3F2BBEC30BE57991E131B582CE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_referrable','Dependency',NULL,0,NULL,NULL,NULL,'4C54770C9C51D660D306E1EA82DE3EF8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransformationPropsSet','Class',NULL,0,NULL,NULL,NULL,'977426A965829C92F1078C3265E1F345',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetVariableDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'B08B5637B97FEBF166369CD70FCC10F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestPowertrainFreezeFrameData','Class',NULL,0,NULL,NULL,NULL,'2C0FD1673B4297BF9EE27357B8353586',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhysicalDimensionMapping','Class',NULL,0,NULL,NULL,NULL,'89F24ABED2371E97F83F1ADFC000F42E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerToSignalMapping','Class',NULL,0,NULL,NULL,NULL,'D4331284705AE2C23ED32BEB0FEAE67C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementedEntry','Dependency',NULL,0,NULL,NULL,NULL,'6BE906CEEE8B737A4B6AD1C2CEF2337A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ResourceConsumption','Class',NULL,0,NULL,NULL,NULL,'12BD4D61E9B90ECCF613FD26446E9B59',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptExecutableEntity','Class',NULL,0,NULL,NULL,NULL,'04941D9537B9DE41488466EFD6DF2B4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchInterface','Class',NULL,0,NULL,NULL,NULL,'3A3CE3970B5CDEED7AE55803FE32B3EB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetPPort','Dependency',NULL,0,NULL,NULL,NULL,'2EC032B62005B333C52161A09A05CED4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_failureMonitoring','Dependency',NULL,0,NULL,NULL,NULL,'B37351ED0AA6CDFFBA7057A19954E72B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketConnectionIpduIdentifierSet','Class',NULL,0,NULL,NULL,NULL,'3904999148B59961052722892013A99C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeInBswInstanceRef','Class',NULL,0,NULL,NULL,NULL,'4B078343F52D17CA38453798EAEDBB3A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CommunicationControllerMapping','Class',NULL,0,NULL,NULL,NULL,'6E4AA7AD153924AA7A4569571F5FC73F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvRecordElement','Dependency',NULL,0,NULL,NULL,NULL,'C0C64737C0FC047EB1314785CD34A45C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucValidationCondition','Class',NULL,0,NULL,NULL,NULL,'21E10988A0620F4A660475AE1E7C2D48',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hostSystem','Dependency',NULL,0,NULL,NULL,NULL,'F9F6453E7880A90FBF38B4D6523E3CE4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinSlave','Class',NULL,0,NULL,NULL,NULL,'885BE6E0116B711A8BE6BFB4E98C12FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_partialNetworks','Dependency',NULL,0,NULL,NULL,NULL,'0542B3AD17D1ECCC799E28E53626019F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeDeclarations','Dependency',NULL,0,NULL,NULL,NULL,'2537267454B1E3F42BB6B71199A74C08',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanNmNode','Class',NULL,0,NULL,NULL,NULL,'3ADCA98955DD92F5F479BB9FAE32A270',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swAxisType','Dependency',NULL,0,NULL,NULL,NULL,'76BEC757F771327E2441F5D50873C5BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939SharedAddressCluster','Class',NULL,0,NULL,NULL,NULL,'49D01270E548A30FDE9B27B458AA406A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedDataElement_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'091DE9FED33FC9B1AC57E200354FE914',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ContainedIPduProps','Class',NULL,0,NULL,NULL,NULL,'8B9CE3E0F8DE023D720383479E42FC04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcBswMapping','Dependency',NULL,0,NULL,NULL,NULL,'130BEBF54162275FCFDDD68CB2AEFD1C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAxisCont','Class',NULL,0,NULL,NULL,NULL,'1539212267F13AB8D68BF493792F90B0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_exclusiveAreas','Dependency',NULL,0,NULL,NULL,NULL,'FD48C86EF608929B834CAD32843C1D64',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredPortPrototype_context','Dependency',NULL,0,NULL,NULL,NULL,'DA98A89ED9108E330A6B8DA10DF9E5C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureComConfigToCryptoKeySlotMapping','Class',NULL,0,NULL,NULL,NULL,'D8DA93BCA1DBE0B7D102D7E0D8E42322',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_inhibitionSource','Dependency',NULL,0,NULL,NULL,NULL,'419D6AD8FB1BBCC50BB0C67F2ED870D0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrimitiveAttributeCondition','Class',NULL,0,NULL,NULL,NULL,'ED94C62748B55C8CA452C6635977A930',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedGlobalTimeMaster','Class',NULL,0,NULL,NULL,NULL,'DBDE84C4FF1B7F5FAF925A799D682952',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuInstances','Dependency',NULL,0,NULL,NULL,NULL,'EE610A2732A56A6E004FDB9B2AB7BCC5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementedIn','Dependency',NULL,0,NULL,NULL,NULL,'B4BF2E58D1A1F8CAB3FDA2FAAA50102A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_feature_target','Dependency',NULL,0,NULL,NULL,NULL,'3EFA9E1987552ED73752D948669BB8AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NetworkEndpoint','Class',NULL,0,NULL,NULL,NULL,'EFD606AC86FAF59ABDA13E1FF432E80A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimEventGroup','Class',NULL,0,NULL,NULL,NULL,'B6C8545CE4D44ADA38E1CC7229106D0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcFlatServiceDependency','Dependency',NULL,0,NULL,NULL,NULL,'08E39EFF3FABC20C793340363122BD83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swSystemconst','Dependency',NULL,0,NULL,NULL,NULL,'B7C7AC206DC149AB5D4DA62A20956DED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdInfoServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'9C4903729AC4A68259C8DAF81FFE950C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_XrefTarget','Class',NULL,0,NULL,NULL,NULL,'EEB99986DC40AAAEAC00858A60C4395E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlatMap','Class',NULL,0,NULL,NULL,NULL,'8194FDB1B9DC3EFE91642A3EAC90FA1B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenReadNvData_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'043489D44E18DFCC0AD32EE323A6C665',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_someipTransformationProps','Dependency',NULL,0,NULL,NULL,NULL,'2BAA63C5FB89142E3575C6D6E6E48774',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventBswInternalBehavior','Class',NULL,0,NULL,NULL,NULL,'FF6F8A71BD4BD34EB7C489CB28A0D256',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpGidSynchronizationNeeds','Class',NULL,0,NULL,NULL,NULL,'02D12FA1AAAEF35B6AB2B3B4CC684B7C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExclusiveAreaNestingOrder','Class',NULL,0,NULL,NULL,NULL,'4B52406E0E7D1F9BC3BF1BF3B12E85B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorCanIdToCanIdMapping','Class',NULL,0,NULL,NULL,NULL,'C90B2AEA1F9A488EE98D8780D6ACE652',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_System','Class',NULL,0,NULL,NULL,NULL,'392200C2F6826DF32E2193AADB6D644D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_freshnessProps','Dependency',NULL,0,NULL,NULL,NULL,'66F6A403304942B1BB90083045E136EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcToImplMapping','Class',NULL,0,NULL,NULL,NULL,'0E027A06D651B59575F096B846CFF9D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_baseReference','Dependency',NULL,0,NULL,NULL,NULL,'FCD936C58690D97BD3485E2C04D003BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototype_context','Dependency',NULL,0,NULL,NULL,NULL,'97E4AE3F647C3687673E532D3C8A5647',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStorageConditionNeeds','Class',NULL,0,NULL,NULL,NULL,'A3BD23B7859F78BD7987A04811BEFE6E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootDataPrototypeInSr','Dependency',NULL,0,NULL,NULL,NULL,'FF114C62D3ED9BAE7276F06BD752321F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_segments','Dependency',NULL,0,NULL,NULL,NULL,'1C2EDF128FFA30EF2736EAEEDD318001',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootArgumentDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'0333AB17B390845BC1C12A23109F89B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestArrayPropertyDef','Class',NULL,0,NULL,NULL,NULL,'416C255B9A70D7DA8C014F812911F226',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_event_contextSwComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'5EF42A8E79FDCA674C435D4B542F2F8C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DtcStatusChangeNotificationNeeds','Class',NULL,0,NULL,NULL,NULL,'A985460744C232F4547FD2E8B9D9F1F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ArgumentDataPrototype','Class',NULL,0,NULL,NULL,NULL,'8D18E3D68385ABCF3EDACE8BEECFC366',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_triggeringEvent','Dependency',NULL,0,NULL,NULL,NULL,'FA85E3C1F650EEE5C369D41099C3105B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpNmNode','Class',NULL,0,NULL,NULL,NULL,'0106566BF02496F8FA8536CF2BA48E85',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_spn','Dependency',NULL,0,NULL,NULL,NULL,'5EAA673ACE0086AEEB9742E7D1653BDF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_destinationUris','Dependency',NULL,0,NULL,NULL,NULL,'F52392D67AB9D3A1274C245314542A49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoKeySlot','Class',NULL,0,NULL,NULL,NULL,'CECEF7B69873A7A1C3F4CC826C4CE047',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'6F1388C92267F81F9E8B1BAAB54B702A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_process','Dependency',NULL,0,NULL,NULL,NULL,'8F22C0695BB78ADC60D65AC4277CED14',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_event_targetEvent','Dependency',NULL,0,NULL,NULL,NULL,'13CF2C73DFBB874784F6FDF922E51DFE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_networkEndpoints','Dependency',NULL,0,NULL,NULL,NULL,'10DF862CC73A14A7EF480E6C53133C8E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_disabledModes_context','Dependency',NULL,0,NULL,NULL,NULL,'6F646F1C270FA90D27238633BB591893',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticContributions','Dependency',NULL,0,NULL,NULL,NULL,'C6D981807C47C408E17812BC5146CAEB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSessionControlClass','Class',NULL,0,NULL,NULL,NULL,'8DC8D3DF43ACC151B71D6EED3FFE44C1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swClusterDesignProvidedPort_target','Dependency',NULL,0,NULL,NULL,NULL,'051A005F926FDA765C830055A4730294',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variable','Dependency',NULL,0,NULL,NULL,NULL,'204613E63DF945C856F42FC981BDFA9E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIumprGroup','Class',NULL,0,NULL,NULL,NULL,'EE14AE1BF3AEFEF8ADFA4258D560C540',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedDataElement_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'76D5BAD780BEA251F5809692C40CADA6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecOcJobRequirement','Class',NULL,0,NULL,NULL,NULL,'98F8BAFE62BD08C1726621D81331515B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_specificChannel','Dependency',NULL,0,NULL,NULL,NULL,'57F453A79DF3C584320639993DA66C3C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinSlaveConditional','Class',NULL,0,NULL,NULL,NULL,'00F14252D883AC6B2589BA723172D690',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerInterface','Dependency',NULL,0,NULL,NULL,NULL,'E771E42E0A62F5D8253A25E9FB9C0616',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MetaDataItemSet','Class',NULL,0,NULL,NULL,NULL,'E5E9CE66CE783F800FF88C1DC602FFBA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_preActivates','Dependency',NULL,0,NULL,NULL,NULL,'BE5D4269BE0B31A035FA0A6FCAA0FDD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_master','Dependency',NULL,0,NULL,NULL,NULL,'2908B4B8E5B668534C2F9293B6D244FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenReadNvData_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'E84EBF15382EE24594719C28F9C2D78D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'FD1CF34BF9461EC57692D305865880F8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_disabledInModes_context','Dependency',NULL,0,NULL,NULL,NULL,'E5221274F2C24AC681D9918ADC445B05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetClusterConditional','Class',NULL,0,NULL,NULL,NULL,'10D7A0C0FC4634543E6D7D1B4CAB04CC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstApplicationError','Dependency',NULL,0,NULL,NULL,NULL,'78DFA92BA085AE4EEBA817EEF75A4F75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_memoryRanges','Dependency',NULL,0,NULL,NULL,NULL,'ECFB4E627BF7EEC89F92F18AEB017187',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndTransformationComSpecProps','Class',NULL,0,NULL,NULL,NULL,'89C9796686B33BF66C83CD2703CBEE2A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setterOperation','Dependency',NULL,0,NULL,NULL,NULL,'1D140F2A2F78ADB0E564D2E24C816AC8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TargetIPduRef','Class',NULL,0,NULL,NULL,NULL,'9B47C3E3D7E8C07D4B1E324A0098BF0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arParameter_autosarParameter_context','Dependency',NULL,0,NULL,NULL,NULL,'9668120FF670BEDE97666A78AE5E3FE9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secOcComPropsForMulticasts','Dependency',NULL,0,NULL,NULL,NULL,'6C3ABEBCDD654F50C1F4CCBB1E86BF94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticsCommunicationSecurityNeeds','Class',NULL,0,NULL,NULL,NULL,'62422D47EAFC53DE5A638E8978026213',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwRecordLayoutGroup','Class',NULL,0,NULL,NULL,NULL,'9B6669D8FF57E6774F058C25FE11C379',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDHeaderIdRange','Class',NULL,0,NULL,NULL,NULL,'DA4BEE519CBBFE9A6E4AE2D0F024EB58',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototype_targetPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'35A2B3A80D344978438B6089AF28F8E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServiceJobNeeds','Class',NULL,0,NULL,NULL,NULL,'6AC833462823158607CE962359DDDF57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredServicePort_context','Dependency',NULL,0,NULL,NULL,NULL,'A12007989FF57D05A0CEFF78D178CDF4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecucDefinition','Dependency',NULL,0,NULL,NULL,NULL,'A682D2CB6DB58205CCF754172AB3932E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vehicleDescription','Dependency',NULL,0,NULL,NULL,NULL,'0EEE35359953D8221BBFB83451CCF4E7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedFid','Dependency',NULL,0,NULL,NULL,NULL,'3B87F604045932B1B129C497E4FC4AE7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwValueCont','Class',NULL,0,NULL,NULL,NULL,'79A7EDDD7E6BBB5DE8E7E7E15160B373',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMemoryIdentifier','Class',NULL,0,NULL,NULL,NULL,'FB7E1C5654B57425674DE09117BCB38A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pdu','Dependency',NULL,0,NULL,NULL,NULL,'29BDFDB5500E30E3C121C9D0377A3808',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nvRamBlockElement_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'AB2FD4D85180D16ACD397989D6BAA4D3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwRecordLayout','Class',NULL,0,NULL,NULL,NULL,'268B9DBAF3091F12B1967EC8893A9364',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InitialSdDelayConfig','Class',NULL,0,NULL,NULL,NULL,'BE5992074A416D77FA56F1A036A6FCD6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SystemMapping','Class',NULL,0,NULL,NULL,NULL,'661675F28A22B31CBA61FBD9BF649F0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PostBuildVariantCriterionValue','Class',NULL,0,NULL,NULL,NULL,'D3B47AEAABB7DEDAACA6C5C49EAE75F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextLimitations','Dependency',NULL,0,NULL,NULL,NULL,'11C55672E2337B9AE99F9FB5BAC7C29C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptServicePointPres','Dependency',NULL,0,NULL,NULL,NULL,'84DE705B5FF15D00A0BF63A14EC4D3FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswDirectCallPoint','Class',NULL,0,NULL,NULL,NULL,'CA34DC961AA8BD5BE8F727E118FE01B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timeBaseResource','Dependency',NULL,0,NULL,NULL,NULL,'2CC66B075F3A3817C48366AC40DEEB74',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_defaultVlan','Dependency',NULL,0,NULL,NULL,NULL,'9349BEF6B0F12315CA122481F2BD383A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ImplementationDataTypeElementInPortInterfaceRef','Class',NULL,0,NULL,NULL,NULL,'A64AD91493F46B431A207569D22E3067',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticOperationCycle','Class',NULL,0,NULL,NULL,NULL,'A90ABE1BD1AB16804B2D5D31257C8A88',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_resourceGroup','Dependency',NULL,0,NULL,NULL,NULL,'99F37FB1882D0982007B35A01CFB6B72',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modes_contextModeDeclarationGroup','Dependency',NULL,0,NULL,NULL,NULL,'06F1A8A459636BC0D07DF0DE91B1710E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applConstant','Dependency',NULL,0,NULL,NULL,NULL,'55E3DDDD7CF0AC145FBD8AA669710941',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SpecificationScope','Class',NULL,0,NULL,NULL,NULL,'10D7C7EB404F0E1B822ADE448FCE1545',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElement_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'968F38528809A40F40C3F7E19587BDF9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LabeledList','Class',NULL,0,NULL,NULL,NULL,'0F4706DAEFF8ADC2A6AAE4FF8D529D5B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndTransformationDescription','Class',NULL,0,NULL,NULL,NULL,'CF30B2372246774D22D195888D7F02F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortPrototypeRefConditional','Class',NULL,0,NULL,NULL,NULL,'011BA476661E0A0955CF14C25699C51D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'99672CC6FEC93986A8DEE5760685467F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LogAndTraceInstantiation','Class',NULL,0,NULL,NULL,NULL,'E887855BE00F7D0A0E8B5EA728C72C0B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticUploadInterface','Class',NULL,0,NULL,NULL,NULL,'8A9D43D616713E31F96EF864D1A90274',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_impliedOperations','Dependency',NULL,0,NULL,NULL,NULL,'EF7093E9C0ACE31983577AFA1D1A0F05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_signalGroup','Dependency',NULL,0,NULL,NULL,NULL,'9F039CE67D74BF15C1CB4440E68145FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedOperation_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'FDAF34C7556E0D3DC5112FCB974E2E10',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executable','Dependency',NULL,0,NULL,NULL,NULL,'E9A3A777169DA060524FBB2F0FA49056',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElements_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'02527E9D6932472B0B3502C62BDAF57B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_baseType','Dependency',NULL,0,NULL,NULL,NULL,'40B2C95B6D8E131AE51558AE5D85B19F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucNumericalParamValue','Class',NULL,0,NULL,NULL,NULL,'714974431B01930E93C0746D13D77572',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RtePluginProps','Class',NULL,0,NULL,NULL,NULL,'DDAF3BCCA605CE0F5629D31CBA5317B4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_rootVariableDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'DE4BDE3B22F2B6CBE50375B68CDE9E9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestObjectRef','Class',NULL,0,NULL,NULL,NULL,'DF69052440A9B0517EA9660D60612973',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondElements','Dependency',NULL,0,NULL,NULL,NULL,'2040E2A81C55B3B00DEF7C0E0DF11C3F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AssignFrameIdRange','Class',NULL,0,NULL,NULL,NULL,'B7693931BAEED9AFD0ADEA810FE37395',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConditionByFormula','Class',NULL,0,NULL,NULL,NULL,'3D95C1D596F56C5BDF9090FA378A4ED6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_events','Dependency',NULL,0,NULL,NULL,NULL,'278F1E4BAF3BABF867203FD4F83299A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortInterfaceElementInImplementationDatatypeRef','Class',NULL,0,NULL,NULL,NULL,'EE8E28A7F8A1C02EDBDC98D3CD5854DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarParameter_root','Dependency',NULL,0,NULL,NULL,NULL,'FD1D98D1A66E0F463907F1C544C26C3E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_processState_context','Dependency',NULL,0,NULL,NULL,NULL,'D7EF638529016ED65D13430A802C5749',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'10295FF29AC76745F26125C1A415DC49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedDataElement_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'8AB9B65942BDA2012BF080BB8965F976',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_responseOnEvent','Dependency',NULL,0,NULL,NULL,NULL,'EBDB5C92E4CEC141AF15B90A3379FA96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoConIPduIdentifier','Class',NULL,0,NULL,NULL,NULL,'5246D276EFA6556F2FE6B56E8A2B5F57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FreeFormat','Class',NULL,0,NULL,NULL,NULL,'E2D376CAA3C69CE807D8725B1449F813',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FunctionInhibitionAvailabilityNeeds','Class',NULL,0,NULL,NULL,NULL,'82208EED54066E1710EF08B958C4D170',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_fibexElement','Dependency',NULL,0,NULL,NULL,NULL,'3DFB79FEFBFB2AA0931F6E7AFEFFE389',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEnumeratorDef','Class',NULL,0,NULL,NULL,NULL,'1C38A8E2A3873049B20AE5E8C5A32CE8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextDataPrototypeInCs','Dependency',NULL,0,NULL,NULL,NULL,'3AE7BDD70CCCA525DAE83BD1C8AF7E0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalSupervision','Class',NULL,0,NULL,NULL,NULL,'DF940187D8F33FD5946662BB67C04DDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_possibleApErrorSets','Dependency',NULL,0,NULL,NULL,NULL,'04F55C7F05290D25F6DE6FC65813D5C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticUploadDownloadNeeds','Class',NULL,0,NULL,NULL,NULL,'032A47D2ADBEA9EF55A0DECC1DDBB7A7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestVehicleInfo','Class',NULL,0,NULL,NULL,NULL,'C3B0158FC375D2076DF010CCE8A6F341',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_source','Dependency',NULL,0,NULL,NULL,NULL,'4FABFAD8D98999CA74AAF1C7DAA6EF39',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_possibleErrors','Dependency',NULL,0,NULL,NULL,NULL,'63F68D39505A0DA4164934D59D701283',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureMapCondition','Class',NULL,0,NULL,NULL,NULL,'C1D296CBEA038822D106DAA9D38DA050',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_comManagementPortGroups_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'8AB41720976C96DA7BAE39E776E1ECD7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwSystemconst','Class',NULL,0,NULL,NULL,NULL,'6B03CB4ED26C49B94224B305BFE4B722',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'A4864E4D5BE041A0EA94E57CDE7E7252',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rxPduPool','Dependency',NULL,0,NULL,NULL,NULL,'5FFA82F3EFADA30577B41CB457225194',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_OrderedMaster','Class',NULL,0,NULL,NULL,NULL,'7E056A65BDA93DC4EE572A43100E8718',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McSupportData','Class',NULL,0,NULL,NULL,NULL,'A1E26787DC3BCD38681AB7629AF33AC8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getterReturn','Dependency',NULL,0,NULL,NULL,NULL,'0EFAF277F570CAAE350F48D4D88FE2A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_doIpSourceAddress','Dependency',NULL,0,NULL,NULL,NULL,'A37A8BDF41295BFA2B21C3EFC57E1BD3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EventHandler','Class',NULL,0,NULL,NULL,NULL,'6EED8DF8798E39FC5D5AAF1AE4AE239A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedSwcServiceDependency_context','Dependency',NULL,0,NULL,NULL,NULL,'92938797577ABCC58867A2CFF55DA89F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntities_targetRunnableEntity','Dependency',NULL,0,NULL,NULL,NULL,'BA9C56BDF3EF3EA04CA27A6BCCA27F05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rteEvents_contextAtomicComponent','Dependency',NULL,0,NULL,NULL,NULL,'6D7F25C1F2C108D302D0D8BD8862F93A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutineControl','Class',NULL,0,NULL,NULL,NULL,'9683AFCB21706D02408014E9FE57B3EE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceInstances_target','Dependency',NULL,0,NULL,NULL,NULL,'E5B429D3BA7B4249EF1B643F46374167',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientComSpec','Class',NULL,0,NULL,NULL,NULL,'4DE05A1C5D125279C630C64F0CD627BE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIndicator','Class',NULL,0,NULL,NULL,NULL,'E03BAD68DA4757F554C96A3B595A0BFA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pid','Dependency',NULL,0,NULL,NULL,NULL,'8F73CE3FDBF89238CF46CA00A73F34F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controller','Dependency',NULL,0,NULL,NULL,NULL,'F527C5A5E7701F1D694A6840FBED8C5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DynamicPartAlternative','Class',NULL,0,NULL,NULL,NULL,'909A1AA6B96A949949E800490D345F18',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutineGenericInterface','Class',NULL,0,NULL,NULL,NULL,'95BF9F5D00C6487073CCC63A4A00A48E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetFrameTriggering','Class',NULL,0,NULL,NULL,NULL,'72B28E6F9444945B78AF9396AF994CC9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_V2xMUserNeeds','Class',NULL,0,NULL,NULL,NULL,'A7AB41742AF61C13DF506868A6E91B85',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_softwareActivationDependency','Dependency',NULL,0,NULL,NULL,NULL,'DE585F33A16600B410692388979E745D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventOccurrenceExpressionFormula','Class',NULL,0,NULL,NULL,NULL,'3BE3F167A25905B85265A5E49FE62297',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McSwEmulationMethodSupport','Class',NULL,0,NULL,NULL,NULL,'01F2837956850DC48F2A9D1F9C9A961D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintMappingSet','Class',NULL,0,NULL,NULL,NULL,'17E5696271F7BC6FAD457931275A3AC6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedPdu','Class',NULL,0,NULL,NULL,NULL,'2ED968E81965A13F10ACA71B076589B4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_slave','Dependency',NULL,0,NULL,NULL,NULL,'47BE70DC4C7E99F60E0CE4BB3030C11D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Unit','Class',NULL,0,NULL,NULL,NULL,'7C726B9094144E5308D7E7E4FFBD9596',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalServiceTranslationProps','Class',NULL,0,NULL,NULL,NULL,'513E85C84F607966944A3E19B4919F4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariableInImplDatatype_root','Dependency',NULL,0,NULL,NULL,NULL,'623D9A19F4E45EDDE1E974E8C5D24A38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuResetClass','Dependency',NULL,0,NULL,NULL,NULL,'E6C59C01003EAA6E3CAE6926EB156C8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmContributionToMachineMapping','Class',NULL,0,NULL,NULL,NULL,'1FF23D83A972DA99D021759FA846ECFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsSecureComProps','Class',NULL,0,NULL,NULL,NULL,'E3ABFABE746279CE8350E64BAEF4B054',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalPort','Class',NULL,0,NULL,NULL,NULL,'3ED0540BA6AB869825DA0DC70AC9B9BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_healingCycle','Dependency',NULL,0,NULL,NULL,NULL,'39F4C231265026957D6F73EE479FCC47',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transformerChains','Dependency',NULL,0,NULL,NULL,NULL,'A6503B8619F696A99BB473FC74DB3843',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticComponentNeeds','Class',NULL,0,NULL,NULL,NULL,'A4876F28DD9AECA78CB23D8A30DA5B7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationArrayElement','Class',NULL,0,NULL,NULL,NULL,'A8FF24958785F1849DBA95BD396739FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'7DBFCE6BBEC6052159D3BC9A1EAA65DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_KeywordSet','Class',NULL,0,NULL,NULL,NULL,'647D392F2CDDF07A05E8D824BDD7B6C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contexts','Dependency',NULL,0,NULL,NULL,NULL,'AD004B3731B3B2DFE67BA0FA563B3C08',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AutosarVariableInstance','Class',NULL,0,NULL,NULL,NULL,'ABAFC559603FF964C78DF0102C322808',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryResultChapter','Class',NULL,0,NULL,NULL,NULL,'28E516DEC146F6913E609E3F46DB9BBC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operationCycle','Dependency',NULL,0,NULL,NULL,NULL,'7EBB4C1B8645B280AE5169107192D4B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticOperationCycleNeeds','Class',NULL,0,NULL,NULL,NULL,'D458E6AF3D7DC10B0B4A30155D634A43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_attribute','Dependency',NULL,0,NULL,NULL,NULL,'56DEDE8FA97C9B1BF1421F4489B2414B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LocalSupervision','Class',NULL,0,NULL,NULL,NULL,'CC294962A0BA031DDBF424287A405F47',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataExchangePoint','Class',NULL,0,NULL,NULL,NULL,'3478B01DE70FA07DD7D8C2D059AD61E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BaseTypeDirectDefinition','Class',NULL,0,NULL,NULL,NULL,'A8811934A31411FB12DBF3FC07A2FC09',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_component','Dependency',NULL,0,NULL,NULL,NULL,'B2B81414E0E068122A989701258A577C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignalTriggering','Dependency',NULL,0,NULL,NULL,NULL,'DAD119AC7108EBB097536900997C02DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Processor','Class',NULL,0,NULL,NULL,NULL,'4457D64E5737319285A777BAFFD2E1A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIOControl','Class',NULL,0,NULL,NULL,NULL,'028FA740359E9597487E96223CD2C1BC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'22A11F98423C52AACDDDFF2DA1B33A8E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticComControlClass','Class',NULL,0,NULL,NULL,NULL,'F5FA77112F6B8E708D83CD29E87245D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswExternalTriggerOccurredEvent','Class',NULL,0,NULL,NULL,NULL,'49C11ECE7B2AF329E4B9AB4143B339A7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltArgument','Class',NULL,0,NULL,NULL,NULL,'FD99F733FBC6FFA3621818BE59FFF1B1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElements_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'96E114F67AD615BB4E5152EFB07DC1B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_provider_targetPPort','Dependency',NULL,0,NULL,NULL,NULL,'F7F35F7F1DC19F9C1E0EF82D50569DF2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerRecordElementMapping','Class',NULL,0,NULL,NULL,NULL,'B96D23CEA95EF7CCCEE2EEB1A8AD662C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptSystem','Dependency',NULL,0,NULL,NULL,NULL,'DA4432DE75B5AAC447DC9B0F3EB8C73E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestEmissionRelatedDtcPermanentStatus','Dependency',NULL,0,NULL,NULL,NULL,'DD5DD1F8BEA5954F313D896AF6944F5D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuScale','Class',NULL,0,NULL,NULL,NULL,'C046901A7413B0E758455FDA3F4D91AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestVehicleInformationClass','Dependency',NULL,0,NULL,NULL,NULL,'DC66257014F3B0C3474C93B7EFEE0D0D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetMethod','Dependency',NULL,0,NULL,NULL,NULL,'6C38C5921B7D87A486C01B8B6F9E1AAC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Item','Class',NULL,0,NULL,NULL,NULL,'5114A9228808F3BBB4C053E8A019B518',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticCommonElement','Dependency',NULL,0,NULL,NULL,NULL,'6B75D94B5BC1CE466F18582AD632F711',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceDataIdentifierPortMapping','Class',NULL,0,NULL,NULL,NULL,'7F73D6AC62B32FC1FF844AEE1F0011A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PredefinedVariant','Class',NULL,0,NULL,NULL,NULL,'B73663FAC5D0A6782F1DFBB1A3C59C18',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationAssocMapElementValueSpecification','Class',NULL,0,NULL,NULL,NULL,'E7DDDA6CAAAC14C09EB4FE4B65506593',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedTransformationISignalPropsConditional','Class',NULL,0,NULL,NULL,NULL,'374C5FB3D8448443E6D4704C8F4BDC41',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_byPassPoints_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'70B6B2710FC00D0F1D0A03A5BF95E3D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignalInIPdu','Dependency',NULL,0,NULL,NULL,NULL,'24307034AD043C34147565F6D7BFE25B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ddsRpcService','Dependency',NULL,0,NULL,NULL,NULL,'1DD4E9A6BD52B206B75BBF8B91D4C7F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swClusterDesignRequiredPort_target','Dependency',NULL,0,NULL,NULL,NULL,'33A0F54734ED478F1C6623C51C171AD3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StartupOption','Class',NULL,0,NULL,NULL,NULL,'E36DEAB21BDC0175DBF9266ABBB0699A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElement','Dependency',NULL,0,NULL,NULL,NULL,'B7175186244B01EC1DE7DCBCA2F06370',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'E078A449E88ED51EAE95672FF57DA14D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptProfile','Class',NULL,0,NULL,NULL,NULL,'97CEFF214D7761F1059843F1E1960A0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ForbiddenSignalPath','Class',NULL,0,NULL,NULL,NULL,'D94FC18B8BAED00662EC07B8C67DBDEB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutineNeeds','Class',NULL,0,NULL,NULL,NULL,'2AD99AC0210954E5E54431AE2F56E340',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFreezeFrame','Class',NULL,0,NULL,NULL,NULL,'4ED21625562925EDB5CBD0E8B8E84251',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_postBuildVariantCriterionValueSets','Dependency',NULL,0,NULL,NULL,NULL,'B7C764E35FE162C0B5F8DF257C9AD9D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdClientEventGroupTimingConfig','Class',NULL,0,NULL,NULL,NULL,'32B8CA5ADF60BD20F53CC005BE4D41A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcModeManagerErrorEvent','Class',NULL,0,NULL,NULL,NULL,'2175533F301F015CADB6859397EAD604',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subFunctions','Dependency',NULL,0,NULL,NULL,NULL,'DECFAF65C3ACA0EB0488AA465B12046E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_useInsteads','Dependency',NULL,0,NULL,NULL,NULL,'F0D92A6000A2A653C624A187AE033BB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transfers','Dependency',NULL,0,NULL,NULL,NULL,'0A057D810BCCA54E043CC3150A7355E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'2CC6FACBC33DCD4571443C698604E093',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationPartition','Dependency',NULL,0,NULL,NULL,NULL,'09CC63EC1009E8144DC5E40B0927D137',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RapidPrototypingScenario','Class',NULL,0,NULL,NULL,NULL,'DEFDCD340F3BACAD3B8000369DD820D7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'2E8F5345F994F06F4998C96AA91BD4B0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ipv4Configuration','Class',NULL,0,NULL,NULL,NULL,'7921EC5A726C1C78EA45EC0BD9C38255',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_WarningIndicatorRequestedBitNeeds','Class',NULL,0,NULL,NULL,NULL,'D1C58CF14D0D43E945E81957EBC43C8E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticValueNeeds','Class',NULL,0,NULL,NULL,NULL,'821ADA630086BD2C425279A04B1E0531',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuExtractReference_target','Dependency',NULL,0,NULL,NULL,NULL,'42204148C3DFD2A57CC9865E8E684E7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InstantiationDataDefProps','Class',NULL,0,NULL,NULL,NULL,'51C05411FCF7C5A25DC4D7C3F4786641',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FramePort','Class',NULL,0,NULL,NULL,NULL,'48A6417B5AA97B3F5A23282AE7CEDC83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939NodeName','Class',NULL,0,NULL,NULL,NULL,'F4F2EE0CC2371BAC3829A52D9A8C9A5B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MeasuredStackUsage','Class',NULL,0,NULL,NULL,NULL,'EA0EEAABD9AFAD0285987552A29837F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Collection','Class',NULL,0,NULL,NULL,NULL,'4EE3A936F637AB60CCEE62817293CD7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInternalTriggerOccurredEvent','Class',NULL,0,NULL,NULL,NULL,'84C7E6BB15C7B72C6030A24E1EB93258',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIndicatorInterface','Class',NULL,0,NULL,NULL,NULL,'103CFF1D6427A8A189C3D24552A25260',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SeparateSignalPath','Class',NULL,0,NULL,NULL,NULL,'CD9A101451EEC39938A4EB4FF1E5A1F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwElementConnector','Class',NULL,0,NULL,NULL,NULL,'AC44B3E4958C3D317AE59D4A4909CA26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticOperationCycleRefConditional','Class',NULL,0,NULL,NULL,NULL,'7DBF2961F0B431B83C2D35F261D93A96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceTableRefConditional','Class',NULL,0,NULL,NULL,NULL,'7AD541D08FB87F7FB58F3A107D6833AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'5703D5B28A1635FFB167E0F34666917D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataIdentifiers','Dependency',NULL,0,NULL,NULL,NULL,'574BA7698D64F2763695046D17F1FE2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceIPdu','Dependency',NULL,0,NULL,NULL,NULL,'08D5E6D153A24C91BB4A70A73A84F585',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_softwareComposition','Dependency',NULL,0,NULL,NULL,NULL,'EFFFF053F7B007B4709F213271BDA8DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticUploadDownloadPortMapping','Class',NULL,0,NULL,NULL,NULL,'A2F9BDBA250C4C57E4E1F0E5BA57F547',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInstanceToSignalMapping','Class',NULL,0,NULL,NULL,NULL,'A41BAFE9CB8BC1570A30C73AA6FC8104',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExecutionDependency','Class',NULL,0,NULL,NULL,NULL,'0C965DE0B186000DB0FDA95C1BE63386',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetPhmCheckpoint','Dependency',NULL,0,NULL,NULL,NULL,'F47A419602929C42A81759826EC384FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clearDiagnosticInformationClass','Dependency',NULL,0,NULL,NULL,NULL,'618DFE1CC7D09BC901844BA5C270C8C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuStateMgrUserNeeds','Class',NULL,0,NULL,NULL,NULL,'98702AE6EED56CD6AA08B984ED72B61D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_processingUnit','Dependency',NULL,0,NULL,NULL,NULL,'F5CA7BDE76C419AE683721FE29D69859',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939TpConnection','Class',NULL,0,NULL,NULL,NULL,'4293CAB2608F3266176004415A74B960',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIumprDenominatorGroup','Class',NULL,0,NULL,NULL,NULL,'F341F70E9517ACCF30819A66983AD898',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareContext','Class',NULL,0,NULL,NULL,NULL,'317E29DDAA6EF586E8C7362DF3B99774',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sender_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'15D57E133D8BA786DA5DC66F0CD8F0D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mcFunctions','Dependency',NULL,0,NULL,NULL,NULL,'1F5340420037E7AC20E967640FDB6401',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_romLocation','Dependency',NULL,0,NULL,NULL,NULL,'FF5F5B521AFB1C481BD11B9399EB42EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PostBuildVariantCondition','Class',NULL,0,NULL,NULL,NULL,'6A055A65E111C2CD0104F9660274C9AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ReferenceCondition','Class',NULL,0,NULL,NULL,NULL,'A7B35CAA2C0030140A882C2178C27989',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswEntity','Dependency',NULL,0,NULL,NULL,NULL,'148212BACC8494A21A64AC94CBE6FE04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RawDataStreamGrantDesign','Class',NULL,0,NULL,NULL,NULL,'162B3DEA5D2CB4E62EECCA592C9A130F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToEnableConditionGroupMapping','Class',NULL,0,NULL,NULL,NULL,'BB98846C5B46088C077F05C8C4B773FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComFieldGrantDesign','Class',NULL,0,NULL,NULL,NULL,'36B534CED3540A6EC8F6796F5AFE6EF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptExecutableEntityEvent','Class',NULL,0,NULL,NULL,NULL,'917F50B440C5537B492356F0A4DC70BF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ContainerIPdu','Class',NULL,0,NULL,NULL,NULL,'6C3D87D61716F639C942FCF9D08FE8EE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureModel','Class',NULL,0,NULL,NULL,NULL,'30DCBC97BAC17EE25A50CED6C0C44259',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpNmCluster','Class',NULL,0,NULL,NULL,NULL,'C50BCF493CDBF8ADF70C693A2D0F5A01',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticAging','Class',NULL,0,NULL,NULL,NULL,'D656F454302AE41425F2BD57657DD848',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterInstance_autosarParameter_root','Dependency',NULL,0,NULL,NULL,NULL,'110D02657A674F92975D5A7DF9E3B5B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgClass','Class',NULL,0,NULL,NULL,NULL,'5B000ED83B3B0864A4CB3706608CFCBE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AsynchronousServerCallPoint','Class',NULL,0,NULL,NULL,NULL,'6F0BD5CB3EBAAB41D0BE08417C63B1F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignalIPdu','Dependency',NULL,0,NULL,NULL,NULL,'8E3C9D3106E202CD7D600F06989B8837',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedData','Dependency',NULL,0,NULL,NULL,NULL,'4F499FFE4AD79BBDA1722E898CAE16C5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ChapterModel','Class',NULL,0,NULL,NULL,NULL,'A16D95224A517FD7AE7BBC8ABDD4EBAC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_event_contextRootSwComponentPrototype','Dependency',NULL,0,NULL,NULL,NULL,'C69442E67AC9AF10AABF0FC1C8A50E8D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RawDataStreamInterface','Class',NULL,0,NULL,NULL,NULL,'D11D9E15FCABABA7CFC2318BD069E3E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TpConnectionIdent','Class',NULL,0,NULL,NULL,NULL,'1C0B75F2E63E7DE8302FEC9FB9F31E2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeTransformationProps','Class',NULL,0,NULL,NULL,NULL,'059CFDC5C85F856C63B66DB58EB06E80',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootVariableDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'49E3E3A91D66963FF6B671A876C216A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TcpOptionFilterList','Class',NULL,0,NULL,NULL,NULL,'3F5F29D04A9B62CC6F70E22615306E23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApApplicationErrorSet','Class',NULL,0,NULL,NULL,NULL,'A9B051C3F0800C79F3741DCEADCC3B0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_directPdu','Dependency',NULL,0,NULL,NULL,NULL,'8708BB7424B7D9A0D932B47562AB234A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_callSignal','Dependency',NULL,0,NULL,NULL,NULL,'F33B0509D719183011165007BA04614C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StdCppImplementationDataType','Class',NULL,0,NULL,NULL,NULL,'A5C824D076001B153932A5AF165A7418',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmNetworkHandle','Class',NULL,0,NULL,NULL,NULL,'721DADA9994F9BDF53EF6332A14408A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_macMulticastGroup','Dependency',NULL,0,NULL,NULL,NULL,'ACF6FFB23EC4577AA90C5AC7C1838F91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_lcState','Dependency',NULL,0,NULL,NULL,NULL,'46FDCB0653FA287A5D06536E5FA80254',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataTypeMap','Class',NULL,0,NULL,NULL,NULL,'C51D4E03CDF39297474A3D9C8B309859',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationArrayDataType','Class',NULL,0,NULL,NULL,NULL,'E675E97ACFA670389DEFA8D885C99466',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIumpr','Class',NULL,0,NULL,NULL,NULL,'E4B9493349D591E1878D5605CCF72EB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'E547A70721856D924E8D4A80B1BCABFC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_WorstCaseHeapUsage','Class',NULL,0,NULL,NULL,NULL,'B8F968438B79146627B9F258AB3D4C6C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_status_targetStatus','Dependency',NULL,0,NULL,NULL,NULL,'F0C93ACF81B146022072B07110EB2CCB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedParameterElement_parameter_root','Dependency',NULL,0,NULL,NULL,NULL,'D0BD930B06568D32021684376441C002',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VlanConfig','Class',NULL,0,NULL,NULL,NULL,'4D85DFEE0D698874085ABE09775BE654',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucInstanceReferenceDef','Class',NULL,0,NULL,NULL,NULL,'E0450D0A87BC3D70DC86FECA42C9043D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeReceiverPolicy','Class',NULL,0,NULL,NULL,NULL,'98D328EBDBA0020EC879EAC7E3B53A62',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InternalConstrs','Class',NULL,0,NULL,NULL,NULL,'5438BAB850BBC3E4B45BCD610B8BD4D9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataProtoype','Dependency',NULL,0,NULL,NULL,NULL,'7F3B0D4A164B224D8389AF50A219BF00',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implConstant','Dependency',NULL,0,NULL,NULL,NULL,'6E7FA7C38382A6609C793630A34EA076',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmSupervisedEntityInterface','Class',NULL,0,NULL,NULL,NULL,'2A1AA90393970821BF95A5FDD71E18DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operations_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'84690540789274B265A16407728E9FD9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_eventGroup','Dependency',NULL,0,NULL,NULL,NULL,'8CC46941EE9F880B62AEEF349ED4571E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_keyValueStorage','Dependency',NULL,0,NULL,NULL,NULL,'F4F14E07CFE20730922CBD4285D57384',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextPPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'3BF63F3C3427B70438266A4BC52043D7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HttpTp','Class',NULL,0,NULL,NULL,NULL,'47D0131048A7F062223B7C817E1509E7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MacMulticastConfiguration','Class',NULL,0,NULL,NULL,NULL,'5AC423F9BD65A88B1E8143E4BEF73C67',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SporadicEventTriggering','Class',NULL,0,NULL,NULL,NULL,'8CF394CC227AB09EF95F195F7682CB94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswCalledEntity','Class',NULL,0,NULL,NULL,NULL,'7984BADF55B7667C5C8F3F46B6E63786',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TagWithOptionalValue','Class',NULL,0,NULL,NULL,NULL,'C1A42A54D985C00A597C21EB6D8A0786',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ChapterContent','Class',NULL,0,NULL,NULL,NULL,'B8BDA1728697D5CBF7AC1FA4A71E4BC1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ipSecConfigProps','Dependency',NULL,0,NULL,NULL,NULL,'3C900312F26BA3D7640B62C454B3184C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortPrototypeBlueprint','Class',NULL,0,NULL,NULL,NULL,'2F1981C3D77744252CCD48AE1617D133',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_includes','Dependency',NULL,0,NULL,NULL,NULL,'5E498845CDBF9CD8D5DCA5BABA710332',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingModeInstance','Class',NULL,0,NULL,NULL,NULL,'E5E338B5FB3CDCCE0E889873C138C59C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serverPort','Dependency',NULL,0,NULL,NULL,NULL,'F53575242567DFFA5B50A14BBD9F75DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIndicatorPortMapping','Class',NULL,0,NULL,NULL,NULL,'2F8A3D41C1AE11F1C8A26D5E4F8C235E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transportPdu','Dependency',NULL,0,NULL,NULL,NULL,'1322E44F511C0E88871EA676EE8E8A7D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInternalBehavior','Class',NULL,0,NULL,NULL,NULL,'BC37BEA4EC992A6960EC12DA0EC6D367',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototype_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'1FB523B4544288EF15CCF33530A714AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedApDataElement_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'393A9CE9FF2B2ACBD0DA7B4FF4E5BA18',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipMethodProps','Class',NULL,0,NULL,NULL,NULL,'F2B0F51EA33FE1E6337C35E17555E591',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestPowertrainFreezeFrameData','Dependency',NULL,0,NULL,NULL,NULL,'C1953DB3FE5331DEE7E67952CC318DC5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPduMapping','Class',NULL,0,NULL,NULL,NULL,'E47162D7BD6B7E8436E8128DF196EE95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operationArgumentInstance_root','Dependency',NULL,0,NULL,NULL,NULL,'1DFB73842B41DA33EC493F2F4E785150',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_comManagementPortGroups_target','Dependency',NULL,0,NULL,NULL,NULL,'E7794BCFA524B2D7423A62D4FC9D982D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpEcu','Class',NULL,0,NULL,NULL,NULL,'F9257CD82AD52EBF9AC46686951883B4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'78AE74E98DADD025B7B4582B88DB18DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventModeDeclaration','Class',NULL,0,NULL,NULL,NULL,'E1EB1FEB30D658CD630EE16C2F29BE4B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationMappingSet','Class',NULL,0,NULL,NULL,NULL,'1CDA86E37A64059D59549B127EFB2D45',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeRequestTypeMap','Class',NULL,0,NULL,NULL,NULL,'C3BEC4F4A049DBB84B1AC2AA5986C681',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_scopeEvents','Dependency',NULL,0,NULL,NULL,NULL,'EB6AF2F9A4A4EBD1B33DF06EAA463F0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedSwcServiceDependencyInSystem_target','Dependency',NULL,0,NULL,NULL,NULL,'DA32FE1DAC6E19B1A91B5AAB50ED1884',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFreezeFrameRefConditional','Class',NULL,0,NULL,NULL,NULL,'FDE8EF770C55797F367CF4E6C93F6A0F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwComponentDocumentation','Class',NULL,0,NULL,NULL,NULL,'1D066895885E06AAD075E71455C18A69',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticConnection','Class',NULL,0,NULL,NULL,NULL,'022917001F0122FCDAAB68E473DB8EC7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpGidNeeds','Class',NULL,0,NULL,NULL,NULL,'44A137B71210670F757466B4210FB443',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintPolicySingle','Class',NULL,0,NULL,NULL,NULL,'7C5059012E3A34013A7061D2F2A4E5C6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticParameterIdentifier','Class',NULL,0,NULL,NULL,NULL,'9CAA861B36CF41442523E7ECE697DBF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticExtract','Dependency',NULL,0,NULL,NULL,NULL,'FC510A0B4CC70E6C8933A2EA9EC8529E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanControllerConfiguration','Class',NULL,0,NULL,NULL,NULL,'E02466DD8B0B6ED30B81FB85A33A1FE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwAttributeValue','Class',NULL,0,NULL,NULL,NULL,'EBF9361F610708DE492A198D363CA195',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariationPoint','Class',NULL,0,NULL,NULL,NULL,'085F98A86485BE748096BFCEE87059EC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayFrame','Class',NULL,0,NULL,NULL,NULL,'65198E40343D4DC4075CB96D48FA63B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestFileTransfer','Class',NULL,0,NULL,NULL,NULL,'5DD1AE724A4BD3D07821733D68A85674',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_method','Dependency',NULL,0,NULL,NULL,NULL,'6E053A0D6F2EDC91FF233BA805C508E6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ECUMapping','Class',NULL,0,NULL,NULL,NULL,'18F3B660AB7CFB3D2061AB603AAB96CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_socketAddress','Dependency',NULL,0,NULL,NULL,NULL,'67214D6E1339B8E87B70F1866579E20C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventIPdu','Class',NULL,0,NULL,NULL,NULL,'67373EE325061AC88A8E5EE551B9A48B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable','Dependency',NULL,0,NULL,NULL,NULL,'EDC25DF5B72BCB68A8DA43BC0F6A496C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadMemoryByAddress','Class',NULL,0,NULL,NULL,NULL,'B8676591A695867F6FD4B35A783E2D1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedARElements','Dependency',NULL,0,NULL,NULL,NULL,'906F16A32E952498AF9F3F14BBCF999E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'6C9900F9C8A137C77226DFCB6D4890E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sender_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'B83846892FA9302CF08D61E97BFDB0E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_entry','Dependency',NULL,0,NULL,NULL,NULL,'A9B012075C07A59BAD642F246D13DDFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderRecRecordTypeMapping','Class',NULL,0,NULL,NULL,NULL,'0D7E6CCCB585F5F9F4A7394D68E84510',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_upstreamReference_target','Dependency',NULL,0,NULL,NULL,NULL,'AE80B6655722635E849EDC184BED651E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CppImplementationDataTypeElement','Class',NULL,0,NULL,NULL,NULL,'B7996699187C5C69A62E56A15A3D4058',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterface','Class',NULL,0,NULL,NULL,NULL,'89098D4C5A2AA7AB213E660BCD8DB6F8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerOperation_targetOperation','Dependency',NULL,0,NULL,NULL,NULL,'D5B8F7A951DE1371F73FDA302EF89FDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdClientEventGroupTimingConfigRefConditional','Class',NULL,0,NULL,NULL,NULL,'BFD1CDF672D4A57E4CB4A9EA1C44B104',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutineInterface','Class',NULL,0,NULL,NULL,NULL,'73410DEAA381D5E137187BA13CDB4866',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationDataTypeElement_root','Dependency',NULL,0,NULL,NULL,NULL,'5E5F5C1A201D38E4C527F40DB0D957BF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IndexedArrayElement','Class',NULL,0,NULL,NULL,NULL,'06C7482B639464028E4B7F4BFE8DFD93',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedParameter_autosarParameter_root','Dependency',NULL,0,NULL,NULL,NULL,'923EE1F4411612516668D642523C165A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedTransformationProps','Class',NULL,0,NULL,NULL,NULL,'EC799D257B2F7BA904D9ECD40CBEF908',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedParameterElement_parameter_port','Dependency',NULL,0,NULL,NULL,NULL,'7CBB2185F79904D2715DB1F4DAA3223C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mode_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'3EEF1F8E8C6AB6DEAEAC09B614A6CF84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_separatedComponents_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'DAA92C9F72CDDCF75E44A370E2E574FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedPortPrototype_context','Dependency',NULL,0,NULL,NULL,NULL,'496A4C9BAA50D5447F44781812FC7D3A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsMethodQosProps','Class',NULL,0,NULL,NULL,NULL,'F78170EA4BF1EA2EA579A81055CD8829',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_multicastConnectors','Dependency',NULL,0,NULL,NULL,NULL,'6130D60F19D16331C43C58117EE78579',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCustomServiceInstance','Class',NULL,0,NULL,NULL,NULL,'3EB3D75EDEBDC7B61E047028BF15E3E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_asynchronousServerCallPoint','Dependency',NULL,0,NULL,NULL,NULL,'C9B2826B10513F99C2B57438EFF1ABD9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AbsoluteTolerance','Class',NULL,0,NULL,NULL,NULL,'33670C2CA74FE462E800DD72D349CEE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_apApplicationErrors','Dependency',NULL,0,NULL,NULL,NULL,'13DBAE91DAA23FE3738E378C40366D7D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmPduRefConditional','Class',NULL,0,NULL,NULL,NULL,'45CD326C908F0C6673F74189019AC2FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticWriteDataByIdentifier','Class',NULL,0,NULL,NULL,NULL,'E686F034D0429C27042A95026A57D7B5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalIPduReplication','Class',NULL,0,NULL,NULL,NULL,'1064144D87945C6C22A86599E2895A98',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipProvidedEventGroup','Class',NULL,0,NULL,NULL,NULL,'CA6E931E7CF0858DF2DE0BCBC7163111',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger','Dependency',NULL,0,NULL,NULL,NULL,'6B7464C4FB82638B4C179DC341393EB4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerInterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'8240BAD2E24D51B82A54E9BD3805C278',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_functionalRequests','Dependency',NULL,0,NULL,NULL,NULL,'E401812E49D11A61FF398208D2BFCAB3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RequiredUserDefinedServiceInstance','Class',NULL,0,NULL,NULL,NULL,'3DFB85FDA0450E5559A0B5BDE269074D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_evaluatedVariants','Dependency',NULL,0,NULL,NULL,NULL,'833B1ACD8FB92ABFE78C9442671C5A76',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerPrimitiveTypeMapping','Class',NULL,0,NULL,NULL,NULL,'CD8431FB48777598B70A5C89D6E9FE04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeGroup','Class',NULL,0,NULL,NULL,NULL,'699074F5B97473E4B850E8E64ED4A5B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secOcJobRequirement','Dependency',NULL,0,NULL,NULL,NULL,'7B27B19DAAE7F3AC83D4857EBB257EE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterRequireComSpec','Class',NULL,0,NULL,NULL,NULL,'1FDF013B26559D54D4C8445ADA0DBC94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_field_contextRootSwComponentPrototype','Dependency',NULL,0,NULL,NULL,NULL,'620C80333B86C133DF8677309F9D643B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_calibrationParameterValueSets','Dependency',NULL,0,NULL,NULL,NULL,'582F48897863FD919F216DA09CEFDC1F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ValueRestrictionWithSeverity','Class',NULL,0,NULL,NULL,NULL,'E6C7E3AEF2AB181DEAAD625766FB846C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iumprs','Dependency',NULL,0,NULL,NULL,NULL,'C4A9E5ADC259F1E7029A2A4BA66923FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltMessageCollectionSet','Class',NULL,0,NULL,NULL,NULL,'51F1A335A28D0EA30D4CD5EB31724B5F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataIdentifierSet','Class',NULL,0,NULL,NULL,NULL,'2B54171FF5396DE512A4C47491089097',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmHealthChannelStatus','Class',NULL,0,NULL,NULL,NULL,'84098C17CE2677750D9F5220081104C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceField','Dependency',NULL,0,NULL,NULL,NULL,'E9CC94FDC780C0E408A535B265EA016A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedApDataElement_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'6C72E6F4BFFB7BE8125EBF3F2CBA4DF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeRangeType','Class',NULL,0,NULL,NULL,NULL,'5B0DE822C6553A5486CFC9F3FC6285E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PredefinedChapter','Class',NULL,0,NULL,NULL,NULL,'CC9BC725CED24FF0A0DBA362C95214AE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ForeignModelReference','Class',NULL,0,NULL,NULL,NULL,'EC26B7FA0067E09313D7D0B5BE1E455E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswSchedulerNamePrefix','Class',NULL,0,NULL,NULL,NULL,'4CA15F945058B18C2D3E1C886208F0CB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SupervisedEntityNeeds','Class',NULL,0,NULL,NULL,NULL,'9128856BE2CB47B7B7627370CD0BEF8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestEmissionRelatedDTCPermanentStatusClass','Class',NULL,0,NULL,NULL,NULL,'5ACB66C99547834B0A2B8F7000A89483',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltLogChannel','Class',NULL,0,NULL,NULL,NULL,'2E4F97A55C28A108AB9D0235B2B1C755',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsServiceVersion','Class',NULL,0,NULL,NULL,NULL,'085D5886977F9BEF6494680102383C52',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearCondition','Class',NULL,0,NULL,NULL,NULL,'15349B6B5E86AADB87A71A696F934FE6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwDataDependencyArgs','Class',NULL,0,NULL,NULL,NULL,'A2653C9155FC420683DB0CF544A6DA22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalServiceTranslationEventProps','Class',NULL,0,NULL,NULL,NULL,'6D0AE6EF032BB5693B63CF807CB98BB2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AutosarEngineeringObject','Class',NULL,0,NULL,NULL,NULL,'6C9A405E6D89A417FC673D24963C90C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalIPduGroup','Class',NULL,0,NULL,NULL,NULL,'6D69B29B4B0812F35CE51B731934639B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdServerEventGroupTimingConfig','Dependency',NULL,0,NULL,NULL,NULL,'CF84452882F828A0C91D24A2ED633583',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_node','Dependency',NULL,0,NULL,NULL,NULL,'9D65226CD01ED2041A5CF049D53D8DFF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvBswModeElement','Class',NULL,0,NULL,NULL,NULL,'17DD028A4311B9BDDD0EC4E8E88E7E0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RequiredSomeipServiceInstance','Class',NULL,0,NULL,NULL,NULL,'E2ACBD0CEB6EF1FA85D4CC489B54B136',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ieee1722Tp','Class',NULL,0,NULL,NULL,NULL,'9B1B5FC823FDA21026119381CD14398D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderReceiverToSignalGroupMapping','Class',NULL,0,NULL,NULL,NULL,'9096908E8DAB6E5C6864365C8F4C499B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeGroup_targetModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'B4D9C5A42D70F8097FB989DFBF03ECEC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rxNmPdus','Dependency',NULL,0,NULL,NULL,NULL,'3536A678904A8F3216BACF5E0B43796A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortConnection','Class',NULL,0,NULL,NULL,NULL,'A270F935D3C1354AC4DB3395EC5B5AC1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPort','Class',NULL,0,NULL,NULL,NULL,'94BDDBE6AAEA5B89ABA3C34526B957CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucDestinationUriDefSet','Class',NULL,0,NULL,NULL,NULL,'EF2DD9DB9CA4BEC4B9F9C016D29B6394',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RunnableEntityArgument','Class',NULL,0,NULL,NULL,NULL,'6C825438A2024FFCB3B0F18E92B82761',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmRecoveryActionInterface','Class',NULL,0,NULL,NULL,NULL,'F518BF28C8B9479746073A3CFA919284',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_coupledClusters','Dependency',NULL,0,NULL,NULL,NULL,'2A9D140D47030CBE6F5D0BFB18805ED3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'10AB2E79098E91E706108C9509EA7782',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuInstance','Class',NULL,0,NULL,NULL,NULL,'C8174B4370AE83E6C3DE29C0BB544C65',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareClusterDesignDependency','Class',NULL,0,NULL,NULL,NULL,'0CF4E3DC0BE51CF476F3E60E99C31C64',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderReceiverToSignalMapping','Class',NULL,0,NULL,NULL,NULL,'EF4365823416888FBC801EBA4DF1E8E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventInterface','Class',NULL,0,NULL,NULL,NULL,'480CE0E8D4707F82AFEE112064B9A880',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UnassignFrameId','Class',NULL,0,NULL,NULL,NULL,'FC39DCCFF03ECE50B14C4E1FFD90E9C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataTransferClass','Class',NULL,0,NULL,NULL,NULL,'65B123AD0C94AA8004067285616505A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_WaitPoint','Class',NULL,0,NULL,NULL,NULL,'9389040CB116052F082D709949F3D80A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_activationReasonRepresentation','Dependency',NULL,0,NULL,NULL,NULL,'0DC48947D2D7DB1E0FB361E0F397DE1C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RuleArguments','Class',NULL,0,NULL,NULL,NULL,'6FA32FF43D905A8350D281D4C0C71E73',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticExtendedDataRecordRefConditional','Class',NULL,0,NULL,NULL,NULL,'EEAECA7F104AE41C6574B4F5B566DAFC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortScheduler','Class',NULL,0,NULL,NULL,NULL,'ACDA33D5C519C66F0D0C551E6CE75B93',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_to','Dependency',NULL,0,NULL,NULL,NULL,'694122CDE80DE7FC550C86E3A01D9D33',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_offsetTimeDomain','Dependency',NULL,0,NULL,NULL,NULL,'6AC1E9E6AB3B3377DD7104AD96047960',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RtpTp','Class',NULL,0,NULL,NULL,NULL,'9A2B01CDB998E25116552919CCA16D7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComFindServiceGrantDesign','Class',NULL,0,NULL,NULL,NULL,'EE15DFC48655066A7FB5386DAA2D171A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndDescription','Class',NULL,0,NULL,NULL,NULL,'5B16A062E13F23C16F129DDF25832733',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclaration','Class',NULL,0,NULL,NULL,NULL,'A2150045444AD5DD8739EEAC01FB6474',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tpAddress','Dependency',NULL,0,NULL,NULL,NULL,'7A7A4292C31F59698E6CC5CC8A799088',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayFifoRange','Class',NULL,0,NULL,NULL,NULL,'1DE0CDF3C2A374224AC567AA55A2EA0F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinClusterConditional','Class',NULL,0,NULL,NULL,NULL,'047828B5A0067DCCFB48AEFA95F228C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinUnconditionalFrame','Class',NULL,0,NULL,NULL,NULL,'B1377E80E8D6C36BEFF18A476955CB43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ReferrableRefConditional','Class',NULL,0,NULL,NULL,NULL,'37CC60BE4011EEC2122C861EE9D14CBA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondElementInstances_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'A0ADF7ECB3A91E5BB639A9CFEE92C3D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939SpnMapping','Class',NULL,0,NULL,NULL,NULL,'D9C6F561F0A80CEE50A67E9FEB7E789A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucForeignReferenceDef','Class',NULL,0,NULL,NULL,NULL,'93028D4D7E64A9D98158B7AB67A64A1C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_collectedInstances_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'CB84339574D65E99D31B1C34F1773580',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'89CEEF089D1E8F0BF0074E720DA5B06B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iPdu','Dependency',NULL,0,NULL,NULL,NULL,'EB79FAE59446632D50A43DA9F676AC17',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mcDataInstance','Dependency',NULL,0,NULL,NULL,NULL,'91E9B9B52BF1370C3BDCC3409DCE230C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PerInstanceMemorySize','Class',NULL,0,NULL,NULL,NULL,'966FA951ED31CA56ACA4747C0ACC1D5A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operation_contextRPort','Dependency',NULL,0,NULL,NULL,NULL,'4A109EB8E2C44216FD19C8ED6BBFD4AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwElementRefConditional','Class',NULL,0,NULL,NULL,NULL,'806D85504BE9AFBFAFB9DA9017C6BC90',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CycleCounter','Class',NULL,0,NULL,NULL,NULL,'886FD303268EF47D3CD08D7B77449DC2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_base','Dependency',NULL,0,NULL,NULL,NULL,'E1479C3DDBED5BB38B86BFE49F044980',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPdu','Dependency',NULL,0,NULL,NULL,NULL,'92DCBF254FCA5BFD4FA86F71DB29C712',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModePortAnnotation','Class',NULL,0,NULL,NULL,NULL,'65AEDB54B5318ED2FA0E3B70968E5986',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwCalprmRefProxy','Class',NULL,0,NULL,NULL,NULL,'82F7869ABECB1E7CCBAAFF1A124C49CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arParameter_autosarParameter_root','Dependency',NULL,0,NULL,NULL,NULL,'717FC32B7CFDF516F11F3718962A1ECC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RPortPrototype','Class',NULL,0,NULL,NULL,NULL,'E5BD0FE0D3E80F6814F4DA265C92C175',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_wakeupFrames','Dependency',NULL,0,NULL,NULL,NULL,'D414564139DF09006F6838A49EB0FF76',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerInterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'CB8088F83147AB8FDFEC84E66AD281F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VehicleDriverNotification','Class',NULL,0,NULL,NULL,NULL,'5CD7D0AA254B9A02BB3060211A844F3A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticParameter','Class',NULL,0,NULL,NULL,NULL,'BA3B4C6811B3FB132A0F08FE202A904F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticWriteMemoryByAddress','Class',NULL,0,NULL,NULL,NULL,'8C4EE8320176D628CDCDEECF3851AA60',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_scopes','Dependency',NULL,0,NULL,NULL,NULL,'01F50CE1DD8F6D0F1F1E6371FE8D3C62',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939NmCluster','Class',NULL,0,NULL,NULL,NULL,'C46C8A93F71E0932A7D14AEE0BA17525',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'3C254D57A261ED8F5EE8738DD891E720',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GeneralPurposeIPdu','Class',NULL,0,NULL,NULL,NULL,'C0089F27E2392B10F862A78777D7C2B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_predecessors','Dependency',NULL,0,NULL,NULL,NULL,'42B3DE7168D8DA1BC79DB557EB8CDAE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_method_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'DCEA178A0E4CD406E0C777F17A801075',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComMethodGrantDesign','Class',NULL,0,NULL,NULL,NULL,'CBA7A5F1C0EC594BBD1EBC715AC3878D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedServiceInstance','Dependency',NULL,0,NULL,NULL,NULL,'B39695509B07CBB726219473EA263DA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementations','Dependency',NULL,0,NULL,NULL,NULL,'42BD36E4C1F2CBA7788BA41F31BDDDA8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_response','Dependency',NULL,0,NULL,NULL,NULL,'D63D68198F8CF174372AA22A4BC60FC2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswEntryRelationshipSet','Class',NULL,0,NULL,NULL,NULL,'EC69D0AC5EE9707FDB5AAF19FD48D78D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SynchronizedMasterTimeBase','Class',NULL,0,NULL,NULL,NULL,'4FF0EC239AD747C63DFEFF45F95FC230',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototypeGroups_context','Dependency',NULL,0,NULL,NULL,NULL,'FCBFFDC485FB0308755049FB4AB61ABA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_j1939ControllerApplication','Dependency',NULL,0,NULL,NULL,NULL,'F8DE7609E5B8B0130002AF9E77759F70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootParameterDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'8CB3C90EDF9998D90469F2722F6BD8E6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpConnection','Class',NULL,0,NULL,NULL,NULL,'ADCDFEC9CC33E9B3E3AFAA15B15CE446',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LifeCycleInfo','Class',NULL,0,NULL,NULL,NULL,'E61F7DE35717B784DCE6FC1CA8FE7A43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayArTpChannel','Class',NULL,0,NULL,NULL,NULL,'34E72B805773A2FD8BE2CD9C97F47F92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mode_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'A8FE84BEE78F612A65C7F7D0DCF118FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExclusiveArea','Class',NULL,0,NULL,NULL,NULL,'6E56ECFBBBE795AB80788D0641256363',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpNmEcu','Class',NULL,0,NULL,NULL,NULL,'43D1246F38C81A4AB9CD2190EB994DAE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptSwPrototypingAccess','Class',NULL,0,NULL,NULL,NULL,'091623FB7425CDD91B356F2FA33AA40D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aliasEvent','Dependency',NULL,0,NULL,NULL,NULL,'877CB72F1341E0534CFA39E317CEF808',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipEventDeployment','Class',NULL,0,NULL,NULL,NULL,'AC370CEE18CFF6361F0A3E45FF33AF92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McGroupDataRefSet','Class',NULL,0,NULL,NULL,NULL,'832770B06202102580321AEA36AFABD9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayNmNode','Class',NULL,0,NULL,NULL,NULL,'B26E9DFB5A1BDCC99D22BE75E808F13E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultiLanguagePlainText','Class',NULL,0,NULL,NULL,NULL,'6888A04A48B4771293387A53F60FD0C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestControlOfOnBoardDeviceClass','Dependency',NULL,0,NULL,NULL,NULL,'20CC4DFFAA5EFE98447BA53E2CDBA47E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_remoteIpAddress','Dependency',NULL,0,NULL,NULL,NULL,'BFD5AB9DF622D17E17ED837F71816E75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransmissionAcknowledgementRequest','Class',NULL,0,NULL,NULL,NULL,'BF1EA710B349D23C0A07D431028DEAB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstElementInstances_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'965E5FA435C5D051868968CC819E2CA5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucAddInfoParamValue','Class',NULL,0,NULL,NULL,NULL,'C4CA82656806CB4761A152ABEA0C7632',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpChannel','Class',NULL,0,NULL,NULL,NULL,'043367AD411EB7BD9495270D2F314BF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoNeedToPortPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'8A35D84FC2EEC38515DDFA52F119889D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'81E56D452B9590B7AA0A51F78E9EBF7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlledHwElement','Dependency',NULL,0,NULL,NULL,NULL,'E0203E155E3550A34C98550F727FAF17',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientIdRange','Class',NULL,0,NULL,NULL,NULL,'5EB1A6E75CC7821F1B98A8472C6A260E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestUpload','Class',NULL,0,NULL,NULL,NULL,'270104E544E879334126B37782BC5A35',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_unitGroups','Dependency',NULL,0,NULL,NULL,NULL,'92D2AFFF8582E5C810F2AA29DD159330',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipServiceInstanceToMachineMapping','Class',NULL,0,NULL,NULL,NULL,'97BA669CDEA9970B2EFDFDAC7BCF3397',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucDefinitionCollection','Class',NULL,0,NULL,NULL,NULL,'BCD63AEF1DEECDE11D2A2B543FBA9A01',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_doIpTargetAddress','Dependency',NULL,0,NULL,NULL,NULL,'9682B2C5FC79E9E0CBA0D24CFC925B1F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_multicast','Dependency',NULL,0,NULL,NULL,NULL,'9CB0EFF94C9CC40E1118FF25591B3FD1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortInterfaceBlueprintMapping','Class',NULL,0,NULL,NULL,NULL,'237144FB5063E8DAE2A9075977ED793B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SystemSignalGroup','Class',NULL,0,NULL,NULL,NULL,'72E32C452056985658DE5FCD8A4DC74C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameter','Dependency',NULL,0,NULL,NULL,NULL,'15B5B5E262FC2080B9449DFF4323318D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarParameter_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'B11F5EDDA7CD50AFAEF84BF7B828C4E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlledFid','Dependency',NULL,0,NULL,NULL,NULL,'84C486387DB74140CDF59421CE082258',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToOperationCycleMapping','Class',NULL,0,NULL,NULL,NULL,'AF9DD5F131B09F52042B4DBEEE2F0A29',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerMapping','Class',NULL,0,NULL,NULL,NULL,'99EB9B6EA3748E8203CEA6B77C1FE5C6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoAdConfig','Class',NULL,0,NULL,NULL,NULL,'AF198703A736DCE7FE8DD3D01BB98051',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_allocator','Dependency',NULL,0,NULL,NULL,NULL,'04C88E9AE241B017DAB91A9B8727F903',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Keyword','Class',NULL,0,NULL,NULL,NULL,'A8CF40710EA82288FB421CF719A63DE4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredEnvironment','Dependency',NULL,0,NULL,NULL,NULL,'3D42AD96E0432E42EE7A3189500F6086',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SectionNamePrefix','Class',NULL,0,NULL,NULL,NULL,'44CAD0BC0230A882F48CAE1129CD6867',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucFunctionNameDef','Class',NULL,0,NULL,NULL,NULL,'D585B438B598D8E176198B83B687ECFA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchedAckEvent','Class',NULL,0,NULL,NULL,NULL,'1C17BC4F2DAF006ECE32628C89B69259',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetCommunicationController','Class',NULL,0,NULL,NULL,NULL,'5B3C5DE89DD213D0208319A4D28BF6ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCustomServiceClass','Class',NULL,0,NULL,NULL,NULL,'6EFED595659DD202C4C3C297854FCD5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ScaleConstr','Class',NULL,0,NULL,NULL,NULL,'2C79199DCF2BCD8514B9D04074E7E97F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataConstr','Class',NULL,0,NULL,NULL,NULL,'E4C5B3603617E0E9FD91D8577C24EE98',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_releasedTrigger','Dependency',NULL,0,NULL,NULL,NULL,'A488176493BE539DF0CE4946E2F80710',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_data_targetDataElement','Dependency',NULL,0,NULL,NULL,NULL,'17F35DE2C5035AB4FEA70558B5BA75EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorLinPidToCanIdMapping','Class',NULL,0,NULL,NULL,NULL,'03E6FFFCEF575E927855CC0F47972173',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_traces','Dependency',NULL,0,NULL,NULL,NULL,'D870650852DC9310648F208302DFF3F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_feature','Dependency',NULL,0,NULL,NULL,NULL,'A6EA26B409031B8EFAF6BCD30AF247E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyDataProvidedComSpec','Class',NULL,0,NULL,NULL,NULL,'00CBE60FD9BF87B86DEAF2F44846A236',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GeneralPurposePdu','Class',NULL,0,NULL,NULL,NULL,'784484770F256E2601FADE9AF6C29A22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PskIdentityToKeySlotMapping','Class',NULL,0,NULL,NULL,NULL,'7BCBC27657C82ED2BB46E2FF5AAC90BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMonitorInterface','Class',NULL,0,NULL,NULL,NULL,'90BFE5035ACB0BEA7B08C3C12EE5900A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IntegerContainer','Class',NULL,0,NULL,NULL,NULL,'21E409C39AC0170D883E7630CBE0A083',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompositionSwComponentType','Class',NULL,0,NULL,NULL,NULL,'49B0365E403E6B55C2FF18773BFC8DC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceInterface','Dependency',NULL,0,NULL,NULL,NULL,'BD54234024EAB888B1A897E55C788690',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchSenderComSpec','Class',NULL,0,NULL,NULL,NULL,'DCD2CE767DD97515EE71476BA98ABB31',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mcDataInstanceVar','Dependency',NULL,0,NULL,NULL,NULL,'6E031B5B4F1CEEAC580527917EAED80C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareCluster','Class',NULL,0,NULL,NULL,NULL,'C61F5213033CE39E26BCE092BA745F4B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayNmEcu','Class',NULL,0,NULL,NULL,NULL,'BAB1AD4242B672E95CDF36B2804BDC33',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpInstantiation','Class',NULL,0,NULL,NULL,NULL,'F9EFDFC9F298FE2AE1E7DBB099ACD0C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_representedPortGroup','Dependency',NULL,0,NULL,NULL,NULL,'FFAAEB395AEDF7B4B7FBDB9E514EF745',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagEventDebounceCounterBased','Class',NULL,0,NULL,NULL,NULL,'FC30C43B6B54FA787753699A8993D637',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationRecordElement','Dependency',NULL,0,NULL,NULL,NULL,'E26C5283C27A9279D2772CB1A4082180',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_licenses','Dependency',NULL,0,NULL,NULL,NULL,'FA7F3D33455CF183179DF6CA0AF117C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_currentValue','Dependency',NULL,0,NULL,NULL,NULL,'A8A41DA87F6942C2F60D2131EF64525D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationCompositeDataTypeSubElementRef','Class',NULL,0,NULL,NULL,NULL,'BC7C527034567E3B622ABB9813550EF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_feature_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'3DBD41E37B2EA50382653EECAB988798',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ramLocation','Dependency',NULL,0,NULL,NULL,NULL,'688EB662B1865AE33F36287DCE52AF7E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeDeclarationGroups','Dependency',NULL,0,NULL,NULL,NULL,'228BCB82E6DB22610F194A5C1BB6457B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComFindServiceGrant','Class',NULL,0,NULL,NULL,NULL,'B3B133251B74B17AA085812DE39AC62A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExecutionOrderConstraint','Class',NULL,0,NULL,NULL,NULL,'F99FE9CA3916D8E536B75F6ED06EA770',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecOcSecureComProps','Class',NULL,0,NULL,NULL,NULL,'5BB31F399906CAED9E118BD215B8B26D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FramePid','Class',NULL,0,NULL,NULL,NULL,'E1D045566BB2358BF2EDAA77467AC6D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LifeCycleInfoSet','Class',NULL,0,NULL,NULL,NULL,'A6D2A6AA8AA7446394AA15111ED6503E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransformerHardErrorEvent','Class',NULL,0,NULL,NULL,NULL,'E39756123F7684D23F780A396B9B9E86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_periodicResponseUudts','Dependency',NULL,0,NULL,NULL,NULL,'C750FE4623D8BFE49FB9B07A014A1B4D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_designs','Dependency',NULL,0,NULL,NULL,NULL,'E29066F02BC3AF5402FC0F68E6BDFC88',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AutosarOperationArgumentInstance','Class',NULL,0,NULL,NULL,NULL,'19DC6C26E3A867738D500A8B71362AD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetStatus','Dependency',NULL,0,NULL,NULL,NULL,'23BE9A52A4E37EEF437CC3AEDF40ADDD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TextTableMapping','Class',NULL,0,NULL,NULL,NULL,'D835994C53C3E12D4593645287B8BE0F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondPhysicalDimension','Dependency',NULL,0,NULL,NULL,NULL,'BC85AA43D928F6959257AA1FDBA4B65F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAxisIndividual','Class',NULL,0,NULL,NULL,NULL,'C53D20B7FF54A392E05C82CC11756FE7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GenericModelReference','Class',NULL,0,NULL,NULL,NULL,'AAB7BB3605C32FC382934F1E8110677F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceTable','Class',NULL,0,NULL,NULL,NULL,'0409AE7D4E69AF2D35E74BDE428929F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredOuterPort','Dependency',NULL,0,NULL,NULL,NULL,'0E994786EF4598C3424C0A02E30847BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sensorActuator','Dependency',NULL,0,NULL,NULL,NULL,'9946EC26E2FC82C86EA28CF19F2F2172',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subDomains','Dependency',NULL,0,NULL,NULL,NULL,'EC9827AD06813595507C44B00287DCE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortFifo','Class',NULL,0,NULL,NULL,NULL,'71571CC614698E7A69154B694F85F832',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlvDataIdDefinitionSet','Class',NULL,0,NULL,NULL,NULL,'80C5906232479D5BF2AA02454B8B0A26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_preActivates_context','Dependency',NULL,0,NULL,NULL,NULL,'05B23BA77DB163763987F770166F5C19',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_V2xFacUserNeeds','Class',NULL,0,NULL,NULL,NULL,'4EE5C0615F09E3B3CE38898A0C524613',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinMaster','Class',NULL,0,NULL,NULL,NULL,'A4CEF437C0058F4E341FE0EF9D1BD367',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcModeGroup_targetModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'C61F5AD89BF58484F72FBF70A6FDE681',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalToIPduMapping','Class',NULL,0,NULL,NULL,NULL,'4776F9B1C2332F4CFF0D4D9DDDDA5F63',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucParamConfContainerDef','Class',NULL,0,NULL,NULL,NULL,'F9F6139E7177B1975167E153A3EC21AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvProvideComSpec','Class',NULL,0,NULL,NULL,NULL,'E3DED04B290800819EE96FD880EABC87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_referencedTDEventVfb','Dependency',NULL,0,NULL,NULL,NULL,'1B59285E758694FF9E6759BEE505A39B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmPdu','Class',NULL,0,NULL,NULL,NULL,'B5669B90410203F6A00C2681AFC98F3F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_initializedParameter','Dependency',NULL,0,NULL,NULL,NULL,'7CECA7FDF58476D4FDB9EF633F3C51F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_txNmPdus','Dependency',NULL,0,NULL,NULL,NULL,'F8971845B300D81880F14032C837B0F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoughEstimateHeapUsage','Class',NULL,0,NULL,NULL,NULL,'237BB7F53A7BF676D0CA6BB2431BACFA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_translationTarget_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'7A4446C062272F9486599506F1DC3606',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clearConditions','Dependency',NULL,0,NULL,NULL,NULL,'3E2F71A7E27737A969404CC5A7596B0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanNmEcu','Class',NULL,0,NULL,NULL,NULL,'C29E82366B486236D7BF542C0283AA23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PermissibleSignalPath','Class',NULL,0,NULL,NULL,NULL,'C02DBA26C701E2E9404BF3AEE2704554',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_falseActionList','Dependency',NULL,0,NULL,NULL,NULL,'B95B3B132C1FA4B678C6973E97970F60',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayCommunicationControllerConditional','Class',NULL,0,NULL,NULL,NULL,'3C8313AE712CF844BCE7E8EF598BBA4B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrimitiveAttributeTailoring','Class',NULL,0,NULL,NULL,NULL,'9CBF9D11F1CB610A78C05D45D3DA5727',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntityGroups_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'9B90D196FA5DF0B1AC1C21F37899254D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableAccess_contextAtomicComponent','Dependency',NULL,0,NULL,NULL,NULL,'67572499D6DF04240AF5F4683B7E1C4C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedIPdu','Class',NULL,0,NULL,NULL,NULL,'CA1E41CDD0584E0A30EE36866001F85E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticTroubleCode','Dependency',NULL,0,NULL,NULL,NULL,'9FF575296A2B2094FC3BF0ECC20EA9C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInstanceToPortPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'C1C604959971A1ADFE05C11A5659971B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_linUnconditionalFrames','Dependency',NULL,0,NULL,NULL,NULL,'540A20BE7A5B21CDD1625498E4BB5EA0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsFieldQosProps','Class',NULL,0,NULL,NULL,NULL,'93FCD683DD872933D1D260A9D9495C79',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetTrigger','Dependency',NULL,0,NULL,NULL,NULL,'CC0A46CD60ED939240E19EFCF262C8A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'81FB9FC119DC594AF1E6AB61A46C27D0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PncMapping','Class',NULL,0,NULL,NULL,NULL,'4F3E7A2E8BE380C545D5646B56CDD0CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'840E64AF3766C3111F1102DFB1A74190',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdControlServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'DEC8F725EDE61E7C9EB51A4C5C95F149',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RPortPrototypeProps','Class',NULL,0,NULL,NULL,NULL,'4C2FA8995508B3B0535832E0E9DEEF07',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writeClass','Dependency',NULL,0,NULL,NULL,NULL,'BBF1FF142074BFD719DFB54ED83FF719',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StringContainer','Class',NULL,0,NULL,NULL,NULL,'9310B217D30729FDC2F5456CD3F2283D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeGroup','Class',NULL,0,NULL,NULL,NULL,'3216802685F5034D7BB71404EC9DBC92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_status_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'F3A73316E551040B56960B652B933B16',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableRequiredPort_target','Dependency',NULL,0,NULL,NULL,NULL,'2406E4C63CD2C1C3D13D650EF050B50C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_calledEntry','Dependency',NULL,0,NULL,NULL,NULL,'9A38BA7BE52A4FD562265C511B093B38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDataByPeriodicIDClass','Class',NULL,0,NULL,NULL,NULL,'7ED4CEA1934366A05D7ADBD57A24CD4C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'F9215F3AF8263F217DE78990D8AAB4A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrmCharTextualContents','Class',NULL,0,NULL,NULL,NULL,'F45CF76005CF0905CE5C4CA14D3370F8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flowControl','Dependency',NULL,0,NULL,NULL,NULL,'C1274AB54BFF30631F9576E71ED1248F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucStringParamDef','Class',NULL,0,NULL,NULL,NULL,'BB1A033D91219C0815F876D07BC1C9FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmEcu','Class',NULL,0,NULL,NULL,NULL,'F3F0166287103CF7AB94A19A5BE0CBF7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_key','Dependency',NULL,0,NULL,NULL,NULL,'F28C0FABF6D3F97EF89674F64A53E93F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationEndpoint','Dependency',NULL,0,NULL,NULL,NULL,'F2DBF8D92E91586CD8BC9136F676C474',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSession','Class',NULL,0,NULL,NULL,NULL,'5BFF174888E5609E64A806EA7D8E322F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_root','Dependency',NULL,0,NULL,NULL,NULL,'0B2FEF19ACEA2D7CC5D9882E614F6301',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventSwcInternalBehavior','Class',NULL,0,NULL,NULL,NULL,'F85301457F135D389F54F2C335DEDE2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPin','Class',NULL,0,NULL,NULL,NULL,'906CF0CB801BEB113E19BCD5AD30039B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorChannelMappingCan','Class',NULL,0,NULL,NULL,NULL,'6601A05550576477F58B49A33E75F3D7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swGenericAxisParamType','Dependency',NULL,0,NULL,NULL,NULL,'038EBE4A3CF067781CB38BBBB9FC6CAA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'B1D9D61CA1B2D42963D93B060DB124E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdus','Dependency',NULL,0,NULL,NULL,NULL,'446DC1CF6D27E09C23CED1AD7FA4BDC3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestCurrentPowertrainDiagnosticData','Dependency',NULL,0,NULL,NULL,NULL,'55F25DFBC93D17876AE2153558D24DB6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetOperation','Dependency',NULL,0,NULL,NULL,NULL,'24961D5FE21084C6AD583CED175B398E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_compuMethod','Dependency',NULL,0,NULL,NULL,NULL,'129845D7A56E46DA7DA09A414C7F10A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'D995304E8FFE80B75335630DDCBE4DA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmActionList','Class',NULL,0,NULL,NULL,NULL,'0F8015DA3C69A2D86EB7B0347A9141A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredPackageElements','Dependency',NULL,0,NULL,NULL,NULL,'D15CE217310A1149C1FBD7DC6F0E09FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSessionControl','Class',NULL,0,NULL,NULL,NULL,'26CC55B997FF37E6272C76595CB3B898',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_event_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'3F623909A3DAEB052134F09EAC003166',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvDataPortAnnotation','Class',NULL,0,NULL,NULL,NULL,'6DB61EEE52514E86FCFA6C81CC5A7A38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InterpolationRoutine','Class',NULL,0,NULL,NULL,NULL,'064D46E7C9C27A3FCD5FD2F88C3DDBAE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwElement','Class',NULL,0,NULL,NULL,NULL,'B205F5879863D05762F25800CA938C43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ValueList','Class',NULL,0,NULL,NULL,NULL,'9EC127BA6D0BD1FE2B88E673C2B7F332',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_couplingPort','Dependency',NULL,0,NULL,NULL,NULL,'5914E992C0BEF5380B2779B5D7A8FC08',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_callbackHeaders','Dependency',NULL,0,NULL,NULL,NULL,'E4504C6D4BDE0EC2909E4A669ADB526B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyKeyValueDatabaseInterface','Class',NULL,0,NULL,NULL,NULL,'E54984418D014806FF729FD2622EA754',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_unassignedFrameTriggering','Dependency',NULL,0,NULL,NULL,NULL,'212B5955C8A66621480D075859FCD7E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticGenericUdsInterface','Class',NULL,0,NULL,NULL,NULL,'68C7455E54D17D776562811E711CC95C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwPointerTargetProps','Class',NULL,0,NULL,NULL,NULL,'30E508DB6F5106F865F6403A7D7B3365',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Baseline','Class',NULL,0,NULL,NULL,NULL,'1D68B4A5AA242D2F3EBFCC82DAE248EB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerAnnotation','Class',NULL,0,NULL,NULL,NULL,'3FD34C6418F12F80DB87A9948FD98D52',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AssignNad','Class',NULL,0,NULL,NULL,NULL,'F9B6687E8F3C1F0CBBECD480BD23833F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvDataCondition','Class',NULL,0,NULL,NULL,NULL,'B91E3E2FC7902E14A1FCFC78C31D664F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedEthernetFrame','Class',NULL,0,NULL,NULL,NULL,'98CB416BCE81453913269D25A328A6AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_supervision','Dependency',NULL,0,NULL,NULL,NULL,'578BF87B91E382A7A7E0D6D1580B3667',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEndpointPut','Class',NULL,0,NULL,NULL,NULL,'B4B0136FA4D6B472DD3820BCEE82836F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlsCryptoMapping','Dependency',NULL,0,NULL,NULL,NULL,'37B92C1FFA98BB383765E4823BD1035B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComEventGrantDesign','Class',NULL,0,NULL,NULL,NULL,'6D1F84B84CB318529163E4817E36790E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceSwComponentType','Class',NULL,0,NULL,NULL,NULL,'8F65C6A781E6CB5FE70A95E22886C2D9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucLinkerSymbolDef','Class',NULL,0,NULL,NULL,NULL,'CD5BDD46880AD3256F1E9ECEB7453F8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_measurableSystemConstantValues','Dependency',NULL,0,NULL,NULL,NULL,'A08A06BDA60E02E8A391EE7114308C9C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmHealthChannelInterface','Class',NULL,0,NULL,NULL,NULL,'A880E6F8FE409716780397DC16A5571B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_byPassPoints_target','Dependency',NULL,0,NULL,NULL,NULL,'114F36CE468C0ED2E52F497C26D94E70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientPort','Dependency',NULL,0,NULL,NULL,NULL,'4AF856F8475B440EA61BC37F89EF9737',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serializationTechnology','Dependency',NULL,0,NULL,NULL,NULL,'BA92208944D7EDD9C1F685805D641DE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'8F7FDF4704DA6D18238135369167F31A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwBitRepresentation','Class',NULL,0,NULL,NULL,NULL,'6A5C0AFCD4FF1E90C0BCEB3131231903',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_controlledDataElements','Dependency',NULL,0,NULL,NULL,NULL,'5C886181A06B302DB7D194E7EBCAEC13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setterCallSignal','Dependency',NULL,0,NULL,NULL,NULL,'CFAE948DF2149311F204EA99AEBE1E3C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwCommunicationPort','Dependency',NULL,0,NULL,NULL,NULL,'7A5DFA5811BE4F73FF4A89BE53A2DA19',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinNmCluster','Class',NULL,0,NULL,NULL,NULL,'4CD30031CCEEA568D134F4A7B4DE5B84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeTransition','Class',NULL,0,NULL,NULL,NULL,'2B841ADB539048D34636AE8107870A13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationArrayElement','Dependency',NULL,0,NULL,NULL,NULL,'2E89D9AFAA77E50E8693C30435A11F51',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939ControllerApplication','Class',NULL,0,NULL,NULL,NULL,'11744FE5C06AD76BEF657FAD11CF402D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_souceCanId','Dependency',NULL,0,NULL,NULL,NULL,'27638EAED96C32B7C39310D27B8D4DAE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EOCEventRef','Class',NULL,0,NULL,NULL,NULL,'70F8804E75D7D52F06EEB044289D4F43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Gateway','Class',NULL,0,NULL,NULL,NULL,'0FD0EC11EA0DB7588928B71517D9BB0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_value_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'37DB910D02A0D44033693CBD9AA4F84C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdgClass','Dependency',NULL,0,NULL,NULL,NULL,'648DFD638419C04EC50CF8953CCA86B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpTpConnection','Class',NULL,0,NULL,NULL,NULL,'1BB713A04EBD38D8BBEEC8EC68B19F1A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_method_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'9FEFBCE39DBE5AB65FFD39A49E4C9028',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AccessCount','Class',NULL,0,NULL,NULL,NULL,'4840B1E856657D63BB6FCCB3958A1BCF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_staticSocketConnection','Dependency',NULL,0,NULL,NULL,NULL,'A94A5FC4062D6D6102F443230B65660F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoughEstimateStackUsage','Class',NULL,0,NULL,NULL,NULL,'8C546CCF77824ED45B4F7FE557DCE9F2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secOcCryptoMapping','Dependency',NULL,0,NULL,NULL,NULL,'4AD804008B6E11F5721D07AE069D20C3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswTimingEvent','Class',NULL,0,NULL,NULL,NULL,'368ADC4A6E360BB777514AC10BE7A89E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DltMessage','Class',NULL,0,NULL,NULL,NULL,'4FC4927C95699F19C39D5CF35FBACE18',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operationArgumentInstance_target','Dependency',NULL,0,NULL,NULL,NULL,'FFAF33034FAAC0AA2E675A5C5174D942',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventVariableDataPrototype','Class',NULL,0,NULL,NULL,NULL,'79C6596A648E339E1D9B4EDC81AF637F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdClientServiceInstanceConfig','Class',NULL,0,NULL,NULL,NULL,'53908B0F672D4D4140E8BDA76C4F42C0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswModuleEntry','Dependency',NULL,0,NULL,NULL,NULL,'09671842F2A45F13561AC61B30DF0C6B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_shallNotRunOns','Dependency',NULL,0,NULL,NULL,NULL,'384F3BE1B6D71358A7D484D336ABBDB7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToDebounceAlgorithmMapping','Class',NULL,0,NULL,NULL,NULL,'6C1050993D1385E096977C55522604FB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTestRoutineIdentifier','Class',NULL,0,NULL,NULL,NULL,'4B2D6CFB25D04DC24C6EB358EA0F83A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompositionRPortToExecutableRPortMapping','Class',NULL,0,NULL,NULL,NULL,'E908294C7D61871F4DF1199A697391E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeSwitchedAckEvent','Class',NULL,0,NULL,NULL,NULL,'5600A0E3566F4D9B882DE011D2F9FC5F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenReadNvData_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'C51EF537C8E6821A00F837F7AA52F8C0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestOnBoardMonitoringTestResultsClass','Dependency',NULL,0,NULL,NULL,NULL,'BBC52414D7C394930E12AFA4D1CDF850',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clearResetEmissionRelatedDiagnosticInfo','Dependency',NULL,0,NULL,NULL,NULL,'99306A43B0F440D8A23227613E07D289',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dltMessages','Dependency',NULL,0,NULL,NULL,NULL,'A210BEED1B2C19E7674A169B0D5901F2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoAdRoutingGroup','Class',NULL,0,NULL,NULL,NULL,'D65F3675DFA962FD704919F77D51D664',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondMode','Dependency',NULL,0,NULL,NULL,NULL,'05FED4D2F7EC803536093186F266C3B5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorChannelMappingFlexray','Class',NULL,0,NULL,NULL,NULL,'36042E0E3DA3DC1428BF97921C5131F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SupervisedEntityCheckpointNeedsRefConditional','Class',NULL,0,NULL,NULL,NULL,'E99A1EDDF66E376F67E23DB7AF9207CA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConfidenceInterval','Class',NULL,0,NULL,NULL,NULL,'2A2E01626A9652C8CBC7BB47E868E792',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPinGroup','Class',NULL,0,NULL,NULL,NULL,'B9423EE4D2CBC5E3A284DC46BDE72700',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvImplementationDataTypeElement','Dependency',NULL,0,NULL,NULL,NULL,'8C5322D6FF6CA884AAE0119D94ECF19D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataTransformationRefConditional','Class',NULL,0,NULL,NULL,NULL,'CA28BB7FDA60101E8CD38279E967BC16',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationPartitions','Dependency',NULL,0,NULL,NULL,NULL,'DD249EF5EAB37B4C78BFE7CD8CC0975F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_callSignalTriggering','Dependency',NULL,0,NULL,NULL,NULL,'E343E0E2CB9A980BF3FE578677170FBC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataIdentifier','Dependency',NULL,0,NULL,NULL,NULL,'386FAF23556383E92B30D3ACC5B171AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serviceInterfaces','Dependency',NULL,0,NULL,NULL,NULL,'D7B6B409CBD473E47D77F0AA1FA576B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FileInfoComment','Class',NULL,0,NULL,NULL,NULL,'13497E2E0D69A6B8063E0A1F2BFEB192',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rteEvents_contextRootComposition','Dependency',NULL,0,NULL,NULL,NULL,'367F31F2E22FC127BF81E4379925BDCD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrmChar','Class',NULL,0,NULL,NULL,NULL,'F087406D46A057551760796CCDE12EA0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipDataPrototypeTransformationProps','Class',NULL,0,NULL,NULL,NULL,'CC623324ABF3185FFC4FF6F044CE4515',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_exclusiveArea','Dependency',NULL,0,NULL,NULL,NULL,'FFF8E5A5D78FF72AFE651ACD4FCE6E82',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDynamicDataIdentifier','Class',NULL,0,NULL,NULL,NULL,'E3014AB807E65B2C99FDF21AB09629B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRootSwClusterDesignComponent','Dependency',NULL,0,NULL,NULL,NULL,'41042C1CB24925896FC20F861D551235',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticGenericUdsPortMapping','Class',NULL,0,NULL,NULL,NULL,'1A7D59A91F6977E7AD056EB8A012E8A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LLongName','Class',NULL,0,NULL,NULL,NULL,'C0E3F0AF66E29B82F4864F49D0FBA921',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhysicalDimension','Class',NULL,0,NULL,NULL,NULL,'72E03F011DA95D2E462EFB16FD079FC5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipTpConnection','Class',NULL,0,NULL,NULL,NULL,'990AD022C2BBABE4E9101A805F035654',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanControllerFdConfigurationRequirements','Class',NULL,0,NULL,NULL,NULL,'65E7BC7320A104A9D1CB3DA21E914DD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthTpConfig','Class',NULL,0,NULL,NULL,NULL,'D1764612B3846E485699951787D156A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureRelation','Class',NULL,0,NULL,NULL,NULL,'FD1ABE922598089381BD85D264DB9639',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryArg','Class',NULL,0,NULL,NULL,NULL,'3B97E303419EF3B20063D8B6CE82527F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_valueAxisDataType','Dependency',NULL,0,NULL,NULL,NULL,'84FE521EDC86CAA4815F7EF1BE95E240',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwBaseType','Class',NULL,0,NULL,NULL,NULL,'94579F74AF0B7E3DD774DEA62A82B934',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ipv4DhcpServerConfiguration','Class',NULL,0,NULL,NULL,NULL,'2164E2FC39B18F474D43EEB395810584',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticComControlSpecificChannel','Class',NULL,0,NULL,NULL,NULL,'5136F1533A9AB04C34BD41BCB893243F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignal','Class',NULL,0,NULL,NULL,NULL,'BF1ECC8AA29D02597EC7EB895028D961',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_explicitRptProfileSelections','Dependency',NULL,0,NULL,NULL,NULL,'C31B3FE0D9D18BBBC558F14BB6F6A5B0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationRecordDataType','Class',NULL,0,NULL,NULL,NULL,'5AD8B4E93DE6480CD90D1D386A3C952C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_value_target','Dependency',NULL,0,NULL,NULL,NULL,'AF5A3D9AC2346099114C28A9FF8DFD68',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rxPduTriggering','Dependency',NULL,0,NULL,NULL,NULL,'32FC9CAD20D196F56A170118555C3415',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswDataSendPolicy','Class',NULL,0,NULL,NULL,NULL,'E114308A6D4C64C3EF3E0455C58C5011',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventOperation','Class',NULL,0,NULL,NULL,NULL,'FDB7108CD79163E1F3D5732DEE458D4D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PostBuildVariantCriterion','Class',NULL,0,NULL,NULL,NULL,'7A6265EFE51947DF4AFE18BFC5FED872',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvDataId0s','Dependency',NULL,0,NULL,NULL,NULL,'AC0818887C66ABC690E4EE22256B6568',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsumedProvidedServiceInstanceGroupRefConditional','Class',NULL,0,NULL,NULL,NULL,'9710CCDAD3BD24BF539A377DE1CC7432',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketAddressRefConditional','Class',NULL,0,NULL,NULL,NULL,'451FEFD816EAD63F8BDE23264C20CF1F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterInstance_localParameter','Dependency',NULL,0,NULL,NULL,NULL,'86644E2EC2F257ECE2DBBCE04A87668B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939ExpandedFreezeFrame','Class',NULL,0,NULL,NULL,NULL,'F66BC83173221FD83FEF8DDB9563A923',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedTransformationISignalProps','Class',NULL,0,NULL,NULL,NULL,'2142789EBAC2233786303CFF9B3CEA65',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_associatedPdurIPduGroups','Dependency',NULL,0,NULL,NULL,NULL,'2BF6523C13371F096AF382ECAB55D489',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portInterfaceBlueprint','Dependency',NULL,0,NULL,NULL,NULL,'CD769A32F77AF4DAC44B0702867A3328',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McGroupDataRefSetConditional','Class',NULL,0,NULL,NULL,NULL,'09926DD79F240B06DD0D26633FBC23C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestElementDef','Class',NULL,0,NULL,NULL,NULL,'A3D01B0DB28138D6C512FDC374766FE9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arTypedPerInstanceMemory','Dependency',NULL,0,NULL,NULL,NULL,'4C0EC7F5A131535F4A77C989456C38A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInternalTriggeringPointRefConditional','Class',NULL,0,NULL,NULL,NULL,'96F7C241F54A9ED44CB1CE4B0AC7CE00',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LogicAddress','Class',NULL,0,NULL,NULL,NULL,'49AB4E96724F3D3B89A1B69AB7E7A50B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFunctionInhibitSource','Class',NULL,0,NULL,NULL,NULL,'2AB718DACAEC8A3D81DDCF3FFC9A9F1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_definition','Dependency',NULL,0,NULL,NULL,NULL,'0E85803333594EC980757D3ABAD1AA13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedProcess','Dependency',NULL,0,NULL,NULL,NULL,'0156B26C2B1283566B452BC83989DD14',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aclRoles','Dependency',NULL,0,NULL,NULL,NULL,'DFC7A2CB36B31FF9B575F5A8A66689BE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhmRule','Class',NULL,0,NULL,NULL,NULL,'F6253120CDF9ECB3B75FC97C84473D54',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TpPort','Class',NULL,0,NULL,NULL,NULL,'47ABDF13831252FD21289D301C17FDAC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PduMappingDefaultValue','Class',NULL,0,NULL,NULL,NULL,'AAB65D5EAF11EA26CC12738015DC5324',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticDataElement','Dependency',NULL,0,NULL,NULL,NULL,'2EEE3D35FD4356FAA3673602FA30C8B1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RuleBasedValueSpecification','Class',NULL,0,NULL,NULL,NULL,'245261623E0A296F14F22954F7A89C26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nonOsModuleInstantiation','Dependency',NULL,0,NULL,NULL,NULL,'85B6FCB5C316BD79499EA2AF37624E71',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServiceCertificate','Class',NULL,0,NULL,NULL,NULL,'9041B0C5A85B3111D188F74CE8646DF2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clusteredComponents_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'6F28E2619C0CD55B17B86D6BF9671800',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_OperationInvokedEvent','Class',NULL,0,NULL,NULL,NULL,'76CDD81DF12DBD62AA3258771AC4C42D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSyncServerConfiguration','Class',NULL,0,NULL,NULL,NULL,'26F52D7CE4A61C19112CFE61C816133C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nPdu','Dependency',NULL,0,NULL,NULL,NULL,'D18914EDCADA4038D4257702A69C2F3B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredServicePort_targetRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'9BD618BF88E5879C71CA2C4B3453556D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BlueprintFormula','Class',NULL,0,NULL,NULL,NULL,'C7B5C1DF84DCAB28E78B2596A3611AB1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucConditionSpecification','Class',NULL,0,NULL,NULL,NULL,'ACF2BFBDB7ECFA55E6F2E68615975B70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recoveryAction_targetMethod','Dependency',NULL,0,NULL,NULL,NULL,'AA5EE5C242058F0DF7876DA72A12D1B1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConcreteClassTailoring','Class',NULL,0,NULL,NULL,NULL,'EB7490EC228858653E1F099736E9F425',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SlOverviewParagraph','Class',NULL,0,NULL,NULL,NULL,'A34E7AD8DEC2EBE9FD65A7765095CC70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipServiceDiscovery','Class',NULL,0,NULL,NULL,NULL,'2EF7C1A7D1F20C0C1F5E06DAB8901DD5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMemoryDestinationPrimary','Class',NULL,0,NULL,NULL,NULL,'0BA8B7E241CAC96F8054F09823D8A3BF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SymbolicNameProps','Class',NULL,0,NULL,NULL,NULL,'4FF1CF0E36D9461196AC5B0BDAB738CE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlsSecureComProps','Dependency',NULL,0,NULL,NULL,NULL,'0DF7B6CF15ADAA9C460A130611A813F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_includedLibraries','Dependency',NULL,0,NULL,NULL,NULL,'E506AEF6913008AC31C94F1B7B4BFD76',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptContainer','Class',NULL,0,NULL,NULL,NULL,'0ED2EFFD69F2E0C774C6624F8FC285D0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedDataElement_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'D6B4FD9313EA42735454A1DAD6B5E508',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceFrame','Dependency',NULL,0,NULL,NULL,NULL,'4E443C0CB782EB22907CFADCF8973F47',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDTCInformationClass','Class',NULL,0,NULL,NULL,NULL,'C0ED8D199C0C86573871B54F10980A42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SimulatedExecutionTime','Class',NULL,0,NULL,NULL,NULL,'756724F36702408F50B259BF560EE4D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProvidedServiceInstanceToSwClusterDesignPPortPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'816DBA6288E67A1A57F7DF407E1E3AAF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_leafElement_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'36D3B6FD1C5228576ECF18A2A0C9269E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgAggregationWithVariation','Class',NULL,0,NULL,NULL,NULL,'6E69A38A494A743FA7B424029CC710B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecOcDeployment','Class',NULL,0,NULL,NULL,NULL,'EF44AC2B24E851842CA461721BF18516',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedServiceInstanceToMachineMapping','Class',NULL,0,NULL,NULL,NULL,'CFD253B9C0CF4F6BAB7E4F9EF0475FFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanNmRangeConfig','Class',NULL,0,NULL,NULL,NULL,'E9B0AA866094A023D15015EC459A4311',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_someipSdServerEventGroupTimingConfig','Dependency',NULL,0,NULL,NULL,NULL,'2FC9B82B792CE71005E86A94A652A594',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwComponentPrototype','Class',NULL,0,NULL,NULL,NULL,'13F74A9B5EB30F094969B468AF635E8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_destinationUri','Dependency',NULL,0,NULL,NULL,NULL,'D8BBE9FABE39E7F266945E76B08B626C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedFunction','Dependency',NULL,0,NULL,NULL,NULL,'A35534F6982E9F5A3600B34D7B0C39FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_component_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'33DDC8DEDD1F2267B35211D7ED8C8041',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'4A32E8AA25EFC6E443BF4AC4F02061F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_comManagementGroups','Dependency',NULL,0,NULL,NULL,NULL,'EC4CCFF19BEBDBEF0273FB06F082433A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Url','Class',NULL,0,NULL,NULL,NULL,'18D8D8F532D4DC5EE53918A3DDE7A846',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_portPrototype_targetRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'DE242D98DEFBA285E173DA46E3D63181',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthGlobalTimeManagedCouplingPort','Class',NULL,0,NULL,NULL,NULL,'53483AAFDC5D96D620E6CFED02198AC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearResetEmissionRelatedInfoClass','Class',NULL,0,NULL,NULL,NULL,'BE7F4FAA37ECA7C69B80BCA6FF2B8157',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedEventDeployment','Class',NULL,0,NULL,NULL,NULL,'DDF9FC2A6AD6864D2E70A2D4DD469DF3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetProvidedOperation','Dependency',NULL,0,NULL,NULL,NULL,'B40286570C8E64FF675950ECABA45DFC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_constraint','Dependency',NULL,0,NULL,NULL,NULL,'F0B0689FD57EE39033E64889DA5AFAF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComOfferServiceGrantDesign','Class',NULL,0,NULL,NULL,NULL,'D84AA091A169E04320DB8FED5AEF77A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_healthChannelArguments','Dependency',NULL,0,NULL,NULL,NULL,'0F27B73C4B851DD76A19B99FCA36135A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinTpConfig','Class',NULL,0,NULL,NULL,NULL,'F37479E7828F5F122E25FB39F1620868',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_grants','Dependency',NULL,0,NULL,NULL,NULL,'F9353E4CD60B1DD38FF4AF2BD0FC3EF5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedSecondaryFids','Dependency',NULL,0,NULL,NULL,NULL,'D1D5ACE717454C85FAC4E11156796BA5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_separatedComponents_targetComponent','Dependency',NULL,0,NULL,NULL,NULL,'4A016A545015A3D3E52512543CE30ABF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_OffsetTimingConstraint','Class',NULL,0,NULL,NULL,NULL,'FCAFBD7DC7AEC838D06BCC7082254D91',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedCommunicationController','Class',NULL,0,NULL,NULL,NULL,'804D1743838B4FE17420A1A95D1A9E6E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_stimulus','Dependency',NULL,0,NULL,NULL,NULL,'709DEF983B33F08DA0B43A273DB95F6E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanNmClusterCoupling','Class',NULL,0,NULL,NULL,NULL,'9CC43534EC0758FF863FB1ADB7D4087E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataReceiveErrorEvent','Class',NULL,0,NULL,NULL,NULL,'062D1B1F6EFDEB88ABEDD8358BB94DD3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'EA710A2D4C23B851551C9F9DD5FB615E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinOrderedConfigurableFrame','Class',NULL,0,NULL,NULL,NULL,'AC8B5A6060825C9722A85A06D7F7C471',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcTrigger_targetTrigger','Dependency',NULL,0,NULL,NULL,NULL,'12C74EE508A1733FBF2552E330905053',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedBswServiceDependency','Dependency',NULL,0,NULL,NULL,NULL,'AF12E8DC97BE3C077DEF9C16DDF6305C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTypeMappings','Dependency',NULL,0,NULL,NULL,NULL,'2F9FCACF7FF9071967C9B170063B03E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryP1','Class',NULL,0,NULL,NULL,NULL,'9FEAC297DF0322BB8DD942E30E874985',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_system','Dependency',NULL,0,NULL,NULL,NULL,'B3BD13743D92B91C29DF0185E1081652',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_authentication','Dependency',NULL,0,NULL,NULL,NULL,'D5D52865BDF653EE9A7B86B5629A8AE6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpEcu','Class',NULL,0,NULL,NULL,NULL,'DB78B656D4D8381803041852CCA186B5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerArrayElementMapping','Class',NULL,0,NULL,NULL,NULL,'73FDEAA3FFF0EA88E5949ED9D5C0B530',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Documentation','Class',NULL,0,NULL,NULL,NULL,'28E03CAB290A16BD7C535D9D19CF3D75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nvRamBlockElement_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'C462F0904DBCF3A797F96355948F2B84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939RmOutgoingRequestServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'0BCD05D3F8DA61D0CCA02DBAFE8B946D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_XcpPdu','Class',NULL,0,NULL,NULL,NULL,'D7F11970FFCE1DEEC3F1FE6E9FB8D1C1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariableAndParameterInterfaceMapping','Class',NULL,0,NULL,NULL,NULL,'054043C375DDB0481B9D85C8BB6A2BF8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pduTriggerings','Dependency',NULL,0,NULL,NULL,NULL,'2658D007AE9653C7832FC92E7614EE22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'DCFBCFDDF86CCB022B524490DDFC10FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticConnectedIndicator','Class',NULL,0,NULL,NULL,NULL,'164F6150AC3FFD67EFD3C0372316D706',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AclRole','Class',NULL,0,NULL,NULL,NULL,'3E462B5D670BE1581A0647ED1343A6E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswAsynchronousServerCallResultPoint','Class',NULL,0,NULL,NULL,NULL,'32F1B374259D925B1D2063D9DD2DE390',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_softwareCluster','Dependency',NULL,0,NULL,NULL,NULL,'D2ECA0B110E3D9A728108A77CF036F48',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_separatedComponents_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'D15087D375862BC27414065C92A0E7E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyDataElement','Class',NULL,0,NULL,NULL,NULL,'CFA93B37A90C05D3A394F71D01530EB2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignal','Dependency',NULL,0,NULL,NULL,NULL,'DE12C699C45DB0F5A53DE7A9B9F9CAF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flowControlPdus','Dependency',NULL,0,NULL,NULL,NULL,'E77F3FA6BB44EAA8E92FBB2E20126E94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_phmCheckpoint_targetPhmCheckpoint','Dependency',NULL,0,NULL,NULL,NULL,'64C0756C8C2D4E21AA3F4B88C5A13DBD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticResponseOnEventNeeds','Class',NULL,0,NULL,NULL,NULL,'0866E13350C7CD807A7FADB68973ED0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'94A726B07487CAA853F7D4534A53479F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayNmClusterCoupling','Class',NULL,0,NULL,NULL,NULL,'3080DDCC4D2B4E6B6EA6BC8CF81BC4A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataSendCompletedEvent','Class',NULL,0,NULL,NULL,NULL,'AE79F01B716AA01D497BD3A01E1BB0D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SlParagraph','Class',NULL,0,NULL,NULL,NULL,'97AE9EBF22450B73208CB035756EEDC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucConditionFormula','Class',NULL,0,NULL,NULL,NULL,'845695DB255A02B22FD5DE9FFB6557D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableAccess_contextRootComposition','Dependency',NULL,0,NULL,NULL,NULL,'5EDC0A5E7A7155D44B9B498490C860A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PossibleErrorReaction','Class',NULL,0,NULL,NULL,NULL,'032BB888D6F30B51A27FEA0A5B249A84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependencyInSystem_target','Dependency',NULL,0,NULL,NULL,NULL,'BCA2722BFF1F25EEF8EC277199D037B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requester_targetRPort','Dependency',NULL,0,NULL,NULL,NULL,'B5AAFEAFAC1AF95BDBAAD66F2ED55883',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswClientPolicy','Class',NULL,0,NULL,NULL,NULL,'81E8D648576DA763DE2F2239D334A748',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuRationalCoeffs','Class',NULL,0,NULL,NULL,NULL,'EE1E58D69EC462CC818B78D1E9A7C9ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NPdu','Class',NULL,0,NULL,NULL,NULL,'E8F44AD6E7F4C0597BE8DF5FCA924BC8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_leafElement_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'684BDB75FA4BE7038A58E802DE8BF1D2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucMultilineStringParamDefConditional','Class',NULL,0,NULL,NULL,NULL,'6652F225E600FC52D84D8DB11922640F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_elements','Dependency',NULL,0,NULL,NULL,NULL,'0B18013BD9B56BDDD640EC45F2F1C201',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwAttributeDef','Class',NULL,0,NULL,NULL,NULL,'DC1DF8926615E133B237574D61E98657',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgDef','Class',NULL,0,NULL,NULL,NULL,'F369F78D01BA020A27A4932746D271CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcToEcuMapping','Class',NULL,0,NULL,NULL,NULL,'2BC88A9F71C1392EC945C193874D8F71',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RequiredServiceInstanceToSwClusterDesignRPortPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'CC1DE61D01553194C61F48505F751F2D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SOMEIPTransformationProps','Class',NULL,0,NULL,NULL,NULL,'118ECED7E16525AFE8C14DC0A922AD9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EventControlledTiming','Class',NULL,0,NULL,NULL,NULL,'FEF5FB29790A736E0878B298775285F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_monitoredIdentifier','Dependency',NULL,0,NULL,NULL,NULL,'D5C2A05ECF7C4AA1E45C35561BBA5510',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignals','Dependency',NULL,0,NULL,NULL,NULL,'0A90EAF4FEA694A66AC509691475D728',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceLinPid','Dependency',NULL,0,NULL,NULL,NULL,'9FF41EB839055B01B9DF80C3ED41DF6C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readDTCInformationClass','Dependency',NULL,0,NULL,NULL,NULL,'C851218A04DEA65C471A14C6F4258AB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEvent','Class',NULL,0,NULL,NULL,NULL,'7B43ECA034AB7783B9021480C1CCBC68',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwType','Class',NULL,0,NULL,NULL,NULL,'6EDB652C2F43A3D9E06B1C177C514B2E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_communicationController','Dependency',NULL,0,NULL,NULL,NULL,'FF668F09D56748FED5A065C5E2AD7CA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventWindow','Class',NULL,0,NULL,NULL,NULL,'551CBFEEA761E20744C47B834D70C5F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagEventDebounceMonitorInternal','Class',NULL,0,NULL,NULL,NULL,'B766D066C74F5DA3494DDC90999E4036',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_freezeFrameContent','Dependency',NULL,0,NULL,NULL,NULL,'25B7F2C4E8E92AB0F68476AD42040B8C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recoveryAction_contextPPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'E7A3012225745F33A8043956C07734D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterAccess','Class',NULL,0,NULL,NULL,NULL,'72A5119F1221210A929B74572410EB64',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcExclusiveAreaPolicy','Class',NULL,0,NULL,NULL,NULL,'09E8F905F43D141111C6FD2747A16D87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTransformation','Dependency',NULL,0,NULL,NULL,NULL,'CCD8C1EAD545A028E9F53B2B2D973F92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_startsOnEvent','Dependency',NULL,0,NULL,NULL,NULL,'27922386336D3469EAF6994DDC7B8446',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnableConditionNeeds','Class',NULL,0,NULL,NULL,NULL,'8790A405FFE2FEC8D50485C3AD91E062',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tpSdus','Dependency',NULL,0,NULL,NULL,NULL,'C3102E5AEB4059AF2185E63307ADB0B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventToTroubleCodeJ1939Mapping','Class',NULL,0,NULL,NULL,NULL,'3CEF823D90B2EAA26C2BA358EFF809C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ucmMasterFallbacks','Dependency',NULL,0,NULL,NULL,NULL,'E640812CD0A5CF0CEA4189FACA820D31',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_data','Dependency',NULL,0,NULL,NULL,NULL,'6C04D69F53BDD0E549A91BA36703B089',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_preconfiguredConfigurations','Dependency',NULL,0,NULL,NULL,NULL,'550F0B6C6B70D26871D7F37631F5E7A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_comManagementPortGroups_context','Dependency',NULL,0,NULL,NULL,NULL,'8BE089433246C162223D3FBF0B5C1481',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPv6ExtHeaderFilterList','Class',NULL,0,NULL,NULL,NULL,'E270814759D4508E204AAE701E038F6C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticCommonElementRefConditional','Class',NULL,0,NULL,NULL,NULL,'172B0F94A6B7E73F4B8C9F8AD4498B53',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataElement','Class',NULL,0,NULL,NULL,NULL,'9357446BB72627294692A221EDE55BB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939Cluster','Class',NULL,0,NULL,NULL,NULL,'02EFF6CD0794021525D06A1B9DC934A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndProtectionISignalIPdu','Class',NULL,0,NULL,NULL,NULL,'CCBB1ADCB9AF552B7F0F38763724115F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_functionGroupStates_context','Dependency',NULL,0,NULL,NULL,NULL,'6C7D005C59974BBEB39C7F3A77513A45',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_parameterAccessedForDebugs','Dependency',NULL,0,NULL,NULL,NULL,'6A674DF13FF5E43ADE8BCD85470F6C9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuMethod','Class',NULL,0,NULL,NULL,NULL,'5F13412FFF519A674B88D435D7CED259',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeProps','Class',NULL,0,NULL,NULL,NULL,'9C7A5DF19DB15F99F1BAB908E99DC002',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MethodMapping','Class',NULL,0,NULL,NULL,NULL,'21ADACD04812123AB823467AE231BE50',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_context','Dependency',NULL,0,NULL,NULL,NULL,'9DDD2A89F011CB76F2D8D31F97FA4E81',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerInterface','Class',NULL,0,NULL,NULL,NULL,'E91D5ABED4919A356938E1CB00EB886D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Xdoc','Class',NULL,0,NULL,NULL,NULL,'9252006A28B5B8088AFE175FE0A5EB1B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondToFirstDataTransformation','Dependency',NULL,0,NULL,NULL,NULL,'519521DF6D7D9DE3528DEFCD806A4D48',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticOperationCycle','Dependency',NULL,0,NULL,NULL,NULL,'D5D4DA15BB8A3603515B2C451119EDCD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortDetails','Class',NULL,0,NULL,NULL,NULL,'099982CCE0B55AF9A9E91D825C638964',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayArTpNode','Class',NULL,0,NULL,NULL,NULL,'566D028638556B1CFE2BA076FAFD1460',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootContext','Dependency',NULL,0,NULL,NULL,NULL,'2A21D2FE631BE8CBD1BA5821FE3942B9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transferExitClass','Dependency',NULL,0,NULL,NULL,NULL,'203EA6E9E1042DE2244D8062E8FEF8A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ObdRatioDenominatorNeeds','Class',NULL,0,NULL,NULL,NULL,'CDBAA89B3459B8782D3A970E2D66CAC1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnable','Dependency',NULL,0,NULL,NULL,NULL,'4E512D253FBD6FB561FFF53B5C966145',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedSwcServiceDependency_target','Dependency',NULL,0,NULL,NULL,NULL,'D6ABA633563A1A98B184E7C28E6D4816',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_method_targetMethod','Dependency',NULL,0,NULL,NULL,NULL,'0E800FE317916477FB55F64AEAEF2ACF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_releaseNotes','Dependency',NULL,0,NULL,NULL,NULL,'0C3E29C9C4614EB06D5C728D3AC83D26',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventBswModeDeclaration','Class',NULL,0,NULL,NULL,NULL,'80DC37D7E437262EC11C446C975EBB07',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketAddress','Class',NULL,0,NULL,NULL,NULL,'9D51D07338EAFE8E47D1A8068D02A220',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MemorySectionLocation','Class',NULL,0,NULL,NULL,NULL,'17AFDDDE6BD9401172B9587F056367DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runsInsideExclusiveAreas','Dependency',NULL,0,NULL,NULL,NULL,'7D81F9CC147ADEA4EF4DC2E6D17A7710',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgForeignReference','Class',NULL,0,NULL,NULL,NULL,'C678EE07EB4ECE6BB2761B7F2956C7F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdgConstraints','Dependency',NULL,0,NULL,NULL,NULL,'DE2B2D2F13EE7E83CC7062267ACF9244',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MachineDesign','Class',NULL,0,NULL,NULL,NULL,'829D1AB23450C11AEE65A59AA9396A84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderRecRecordElementMapping','Class',NULL,0,NULL,NULL,NULL,'DBFF8316AA2DE47F676ABD80C4752AE9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Colspec','Class',NULL,0,NULL,NULL,NULL,'5523C32D34F470A05B19F10FD348ED1F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswParameterPolicy','Class',NULL,0,NULL,NULL,NULL,'807E82A2A96C23FEA7F082AADE48886E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_compositeServiceInterface','Dependency',NULL,0,NULL,NULL,NULL,'E7316B2A83A8E82F5E15AA6C609F2A41',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswSchedulableEntity','Class',NULL,0,NULL,NULL,NULL,'6202F8E5E358F34103D36803EFCB8115',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestedMode_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'E5EE2D40FFE846A330228B14CFB13BBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeElement','Dependency',NULL,0,NULL,NULL,NULL,'3040B307D744B3160ADCA622DCF3534B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalServiceTranslationPropsSet','Class',NULL,0,NULL,NULL,NULL,'6D932D674C154BC0648867C893A874DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vfcs_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'FEA00F1884D098298FEC438A1E42CBB0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcBehavior','Dependency',NULL,0,NULL,NULL,NULL,'BE13A4F82073D7CBD0B2DD174BEF6CC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProvidedServiceInstance','Class',NULL,0,NULL,NULL,NULL,'CA5AA0ED247F067D63B1BFF1D5271C81',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Note','Class',NULL,0,NULL,NULL,NULL,'EE27A6401EED3AA47A5966800BC35D61',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_deterministicClient','Dependency',NULL,0,NULL,NULL,NULL,'05E11B02A5828141983123C850F3796B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_physicalChannels','Dependency',NULL,0,NULL,NULL,NULL,'58F78F22A6051B01B5BE8EAF2CF8F312',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeDeclarationGroupPrototype','Dependency',NULL,0,NULL,NULL,NULL,'6605C547B4AFA90239C6DD1502B475F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_typeReference','Dependency',NULL,0,NULL,NULL,NULL,'18255313F517BDE4DA4C0CBDD0DB29CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpNetworkConfiguration','Class',NULL,0,NULL,NULL,NULL,'7F62C51C5E56AD5B3B62692A3EEE7A2A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TcpTp','Class',NULL,0,NULL,NULL,NULL,'57DC830572F2121A9C19402D09494C71',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_eventNeeds','Dependency',NULL,0,NULL,NULL,NULL,'BB2469D23EA911F9E3B501B101B16B8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptArHook_target','Dependency',NULL,0,NULL,NULL,NULL,'0A903CD58C712F8FE7B7126829932AA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_List','Class',NULL,0,NULL,NULL,NULL,'B08AC849CD9720F2AE02B78493E9E04A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestDownloadClass','Dependency',NULL,0,NULL,NULL,NULL,'634DD4EE17A8E6B47C1D26EFC7E1B614',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwCategory','Class',NULL,0,NULL,NULL,NULL,'1E5F47789C60CEDB8B298A9A13B11E59',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setterReturnSignal','Dependency',NULL,0,NULL,NULL,NULL,'D8221D42FF3C91D0B5F49854061D1A47',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagEventDebounceTimeBased','Class',NULL,0,NULL,NULL,NULL,'0D4D95443A00D7361929A5738BFC3566',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcBswMapping','Class',NULL,0,NULL,NULL,NULL,'DDEBA33540749EB2CB43C92DCA0E9694',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondOperation','Dependency',NULL,0,NULL,NULL,NULL,'D4F9927FFB4AF4F8A78CCBB50C764E99',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CppImplementationDataTypeElementQualifier','Class',NULL,0,NULL,NULL,NULL,'C4DB19FF84F79A8C44610643E9EE5655',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpActivationLineNeeds','Class',NULL,0,NULL,NULL,NULL,'2E123664C2178A513C978F1603949400',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AsynchronousServerCallResultPoint','Class',NULL,0,NULL,NULL,NULL,'FC664D5EFAD9DB6FDC99385C619EDF23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestGroup','Dependency',NULL,0,NULL,NULL,NULL,'32F37794168F4DF25215BA824B034D93',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rawDataStreamInterface','Dependency',NULL,0,NULL,NULL,NULL,'1AD4FA12AB58732B1BB4292C1C7E9874',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'EF613AF78E5B9844389205104CB5BA78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vlanModifier','Dependency',NULL,0,NULL,NULL,NULL,'DE82E40E2EC23F8DBA33E4095B37F2E6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PerInstanceMemory','Class',NULL,0,NULL,NULL,NULL,'7AFC4C07315B9A89056388B5501087EF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flatMapEntry','Dependency',NULL,0,NULL,NULL,NULL,'6153ED09B1123C027FFC1FB3C2F6B2A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_frame','Dependency',NULL,0,NULL,NULL,NULL,'006C51F1212DDFF74793E2D97C653974',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_applicationCompositeElement_root','Dependency',NULL,0,NULL,NULL,NULL,'C5A4B24FCFD969A8545CE69A8348B69B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_contextPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'FBF18B31A261DBC1A1F3F47A96175C61',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcBswSynchronizedModeGroupPrototype','Class',NULL,0,NULL,NULL,NULL,'67D7208C86F0A3B4AB753A7B18682F32',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PncMappingIdent','Class',NULL,0,NULL,NULL,NULL,'1556366E58859E50C4464FF615E8CAE0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwServiceArg','Class',NULL,0,NULL,NULL,NULL,'8DCB77D7A9232FCEF8E94E5D17531DED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalIPdu','Class',NULL,0,NULL,NULL,NULL,'27661185B68DD4939198828EBF51CEF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimAliasEvent','Class',NULL,0,NULL,NULL,NULL,'E2F1B119EF827F12A74A9F0D9B67F1EF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetRequiredOperation','Dependency',NULL,0,NULL,NULL,NULL,'5357102C56CAA6F57D4FF743260BCCFC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswSynchronousServerCallPoint','Class',NULL,0,NULL,NULL,NULL,'997E691390B7B5FCABE16E0F8133DEBC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpNode','Class',NULL,0,NULL,NULL,NULL,'D3067315BB0DD2D9357E8765FC4D6C49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_testResult','Dependency',NULL,0,NULL,NULL,NULL,'E881051435E0FDD2D4AF482671F4DADC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticIndicatorNeeds','Class',NULL,0,NULL,NULL,NULL,'452A8A5587D38FFB838527CB07E00060',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextDataPrototypeInSrs','Dependency',NULL,0,NULL,NULL,NULL,'91A43AAB439CF19F19B368FC7B08656A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_localPort','Dependency',NULL,0,NULL,NULL,NULL,'FA37B6E8754EC9E1613DB7F16989C9B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDoIPGroupIdentificationInterface','Class',NULL,0,NULL,NULL,NULL,'18CE197DCF6637E252EB465EE69ADC7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoleBasedMcDataAssignment','Class',NULL,0,NULL,NULL,NULL,'D06169200946ED488862ABA38276D584',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureSelectionSet','Class',NULL,0,NULL,NULL,NULL,'48342AB6C340ED78AAA67F8A4553B3C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_socketConnectionBundle','Dependency',NULL,0,NULL,NULL,NULL,'9EFE22A6BC6A2987DE6930B2626A3CE3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnableCondition','Class',NULL,0,NULL,NULL,NULL,'9B5C9184749A494AB9C71B6DAFBACCD0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataTypeMappingSets','Dependency',NULL,0,NULL,NULL,NULL,'75D44EB5CB1F7C56C2E4DBE0A0076AB6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServiceKey','Class',NULL,0,NULL,NULL,NULL,'F698FBFC6AA6D396296C7411F5F2DEA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LGraphic','Class',NULL,0,NULL,NULL,NULL,'434EBD672425E140165FF4D05EC36327',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptExecutableEntityProperties','Class',NULL,0,NULL,NULL,NULL,'AD25DE396F546D8B62BF409E0E654B06',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_remotePort','Dependency',NULL,0,NULL,NULL,NULL,'461331C53AD1A9AFE3CC9A1C3B36F38E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_consumedServiceInstance','Dependency',NULL,0,NULL,NULL,NULL,'146E907FD6D948F6013A0A2BDF76F1FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenNvData_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'C6283D7B5D0B4DF3FDC5DBEAB9508FDE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RootSwClusterDesignComponentPrototype','Class',NULL,0,NULL,NULL,NULL,'BB0138129AB794A7480BCF7BE35C9FBD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_storageConditionGroup','Dependency',NULL,0,NULL,NULL,NULL,'1F96672E9A2C98B510A414A0C0918B93',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedDataElement_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'6DABA3DBCFAB8F55F8C67ADE0499C51E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_portPrototype','Dependency',NULL,0,NULL,NULL,NULL,'7C5C78303729356CBC9A9C001D703B9F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwCommunicationController','Dependency',NULL,0,NULL,NULL,NULL,'2100CD43064AB6D3194B77FA16A6E047',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flatMap','Dependency',NULL,0,NULL,NULL,NULL,'F58D68BE81520F1AB40B228CFCC5F4F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_derivedObject','Dependency',NULL,0,NULL,NULL,NULL,'D54E53924B1141A6F987A1B84EFAE3E8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswReleasedTriggerPolicy','Class',NULL,0,NULL,NULL,NULL,'F5B2168913EC9628928BBD5AC44CBA20',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestPowertrainFreezeFrameDataClass','Class',NULL,0,NULL,NULL,NULL,'779BDD59F0E204F66337168380B2C8DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableEntity','Dependency',NULL,0,NULL,NULL,NULL,'983499817D8B02B451E90DBA98FAF0BF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestCurrentPowertrainDataClass','Class',NULL,0,NULL,NULL,NULL,'6D6094C94AF1CBC52B8282109870FD92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_j1939NmNode','Dependency',NULL,0,NULL,NULL,NULL,'FEC840EFC1F70303778EA6B903E33E2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableRequiredPort_context','Dependency',NULL,0,NULL,NULL,NULL,'940AEF94CDE0A64939BB615E0E00B148',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhysicalDimensionMappingSet','Class',NULL,0,NULL,NULL,NULL,'9C4ED17B294313502B214AC68F91D7AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextAtomicComponent','Dependency',NULL,0,NULL,NULL,NULL,'2B39780535F8FCDD19F04C7C82B066B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SOMEIPTransformationISignalPropsConditional','Class',NULL,0,NULL,NULL,NULL,'83EF6417C344CB9D6A43E0CB71BA5663',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TpAddress','Class',NULL,0,NULL,NULL,NULL,'C632A500905648E43203A2DB9AF243C5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_defaultMode','Dependency',NULL,0,NULL,NULL,NULL,'7CD9E9D4FF3E67C3269899AD60FFAF20',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElement_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'5F91796DC1011E12235D5030872AAACC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StaticSocketConnection','Class',NULL,0,NULL,NULL,NULL,'0CC424C9F1FA16D4B45C71A7E2ABBE7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationErrorMapping','Class',NULL,0,NULL,NULL,NULL,'D901B0C5C1D8F52BF03601C909133922',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_responseOnEventClass','Dependency',NULL,0,NULL,NULL,NULL,'028C8C5137E8E02EBB3D99B26C9E2651',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareActivationDependencyCompareCondition','Class',NULL,0,NULL,NULL,NULL,'615F7E7AF479E7D1016F867FD203063A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsumedServiceInstance','Class',NULL,0,NULL,NULL,NULL,'3D63D7DB78BB0D59AC6F5936FC7CD781',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDoIPPowerModeInterface','Class',NULL,0,NULL,NULL,NULL,'6E624F25626A411D5D92065C5F2E950C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDoIPTriggerVehicleAnnouncementInterface','Class',NULL,0,NULL,NULL,NULL,'196002B88963320A955F0BD29A0935A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMemoryDestinationMirror','Class',NULL,0,NULL,NULL,NULL,'76057CF9E1C6D7DF1FAC9E07839567CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivedData','Dependency',NULL,0,NULL,NULL,NULL,'5D83944C4EAFD28081CC16C84460A7AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_framePorts','Dependency',NULL,0,NULL,NULL,NULL,'07C25365AD64AE4390132093F615C5CF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_lastEgressScheduler','Dependency',NULL,0,NULL,NULL,NULL,'8257825123C1FDAEBE1924A4978C6162',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuExtractReference_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'CB763514200F4C2A56497F8B8F7B84A7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AdaptiveApplicationSwComponentType','Class',NULL,0,NULL,NULL,NULL,'6855FF2CD3B83AB495918BFE971BF9AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucReferenceValue','Class',NULL,0,NULL,NULL,NULL,'28EF3CB1DEFF467DA0B645E74634641F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarParameter_portPrototype','Dependency',NULL,0,NULL,NULL,NULL,'BA262E0508A9E4FB39875887060D025D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_canTpAddress','Dependency',NULL,0,NULL,NULL,NULL,'595F1BCC2B52F78808EAC7708BA145AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeSwitchEvent','Class',NULL,0,NULL,NULL,NULL,'B0757DC6F146C64ED0A52F6FD4CE9230',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDebounceAlgorithmProps','Class',NULL,0,NULL,NULL,NULL,'33074086726C13DF1B91BAF1DDAE33B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticInhibitSourceEventMapping','Class',NULL,0,NULL,NULL,NULL,'4226DD02A430DABABBBBBDE6C1DAB632',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationPartition','Class',NULL,0,NULL,NULL,NULL,'5CCD96C0C2B67DBF8BC082BCEB4DCFC2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetField','Dependency',NULL,0,NULL,NULL,NULL,'DB5257E68330140BC29CF593E36C03E4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeUdsToTroubleCodeObdMapping','Class',NULL,0,NULL,NULL,NULL,'903606271876336DF1EF7F72A514B4CE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetRawDataStreamGrant','Class',NULL,0,NULL,NULL,NULL,'44D7F50C7CBE7D92DBB567D9580A3644',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_physicalDimension','Dependency',NULL,0,NULL,NULL,NULL,'49ECE65F2A9BA20A55AA084D8D4E2AFA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgForeignReferenceWithVariation','Class',NULL,0,NULL,NULL,NULL,'8585792B70E98B90CB120C572612511F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedGlobalTimeSlave','Class',NULL,0,NULL,NULL,NULL,'924EFEE665F9AE731DD9D9089A5B3C2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timeSyncPortPrototype_target','Dependency',NULL,0,NULL,NULL,NULL,'752BA737730AC29067413D4B5F190C74',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterProvideComSpec','Class',NULL,0,NULL,NULL,NULL,'673B5FEC1158D1006DC0C5592E3AA841',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_testedItems','Dependency',NULL,0,NULL,NULL,NULL,'EEDD594285C3EDDE301DBEED584D0520',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TcpOptionFilterSet','Class',NULL,0,NULL,NULL,NULL,'4DA4420F95DBB02F5A6A498CABD85F2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DeterministicClientResourceNeeds','Class',NULL,0,NULL,NULL,NULL,'A3F35F88A2F14778FDD935357D981E32',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceSwMapping','Class',NULL,0,NULL,NULL,NULL,'72615640E8AB82FC269670BA244B54AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortInterfaceToDataTypeMapping','Class',NULL,0,NULL,NULL,NULL,'E98F1C59B2BA7BB52289F50841BECBDD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenReadNvData_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'28435186B70A5D202120FFDF971E3CDF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetEvents','Dependency',NULL,0,NULL,NULL,NULL,'0AB1EA5C30FDBFDB15E4696F6E0BFFB9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_data_contextRPort','Dependency',NULL,0,NULL,NULL,NULL,'75CBB634374E790C3123FE257293FC88',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedPortPrototype_target','Dependency',NULL,0,NULL,NULL,NULL,'1C7E9827DFB58143A12A3D5B479A23D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'03EBB2A6364AB099B7BD180E3C1A33CA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetFrame','Class',NULL,0,NULL,NULL,NULL,'D8F8CDA004BD158FA2CDED4AE6B08182',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucModuleConfigurationValuesRefConditional','Class',NULL,0,NULL,NULL,NULL,'874148749DF74314C37E54327D0A762A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStartRoutine','Class',NULL,0,NULL,NULL,NULL,'0E3BD8EDE90021C42676E89EAACF4CCD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvDataInterface','Class',NULL,0,NULL,NULL,NULL,'6AFB476401BF7EBAE8CA9E73CD2CD0CA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoleBasedDataTypeAssignment','Class',NULL,0,NULL,NULL,NULL,'22EB1A1776F58F1FB96FCD4B4A2ED491',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFunctionIdentifier','Class',NULL,0,NULL,NULL,NULL,'A09992AE53591E489C31D8BDF849F5EF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayCommunicationController','Class',NULL,0,NULL,NULL,NULL,'35CA840370487F663FC9E8C4CE0FFDAE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdClientConfig','Class',NULL,0,NULL,NULL,NULL,'C5E4868D6D0E9CD067016EA76628D730',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_routingGroups','Dependency',NULL,0,NULL,NULL,NULL,'483E1B96EDE3FD550EC5E6021F4FD661',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_postBuildValueAccess','Dependency',NULL,0,NULL,NULL,NULL,'1947B5C7025C4E7BEB82533095EA9885',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_targetTrigger','Dependency',NULL,0,NULL,NULL,NULL,'3E7E8B09A5A126F3B2D5A8B3EB72B4BC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nvRamBlockElement_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'FABF75C13EC161B928125761F62EF64D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinSlaveConfigIdent','Class',NULL,0,NULL,NULL,NULL,'6AC5F078659A1E9BDA10BBAD972BE98B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_McFunctionDataRefSetConditional','Class',NULL,0,NULL,NULL,NULL,'D8E9F71CECBB537C31D300252AEAF544',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Compiler','Class',NULL,0,NULL,NULL,NULL,'7835039A9A1F0FD1979AA6C81AAC3D3B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestedMode_context','Dependency',NULL,0,NULL,NULL,NULL,'8316C36BE96E48D8302DBE88552AF59E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoleBasedBswModuleEntryAssignment','Class',NULL,0,NULL,NULL,NULL,'4DEBDA9C0FD56DE9EA0EEAEA4E789B2B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationDataTypeElement_port','Dependency',NULL,0,NULL,NULL,NULL,'093AD74BDB51E78BF3FC6554325DBCF5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rawDataStream','Dependency',NULL,0,NULL,NULL,NULL,'B0CC49ABC23D12B19622488A44FA5F8A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_argument','Dependency',NULL,0,NULL,NULL,NULL,'A28664044DDE0B72BB169B3B0C205430',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivers_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'A15ED3C4D86008D1FD29D522A81A918D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_systemSignalGroup','Dependency',NULL,0,NULL,NULL,NULL,'7BB860AE1704C382580396FBF7AC5C38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAxisType','Class',NULL,0,NULL,NULL,NULL,'37D0273EE5AF7FF5C0337FD43B5C3B11',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedTransformationComSpecProps','Class',NULL,0,NULL,NULL,NULL,'F50F3D659CBE5BBB56A1C35BA10DC86E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMAttributeValue','Class',NULL,0,NULL,NULL,NULL,'9D35588A8C522C1728F5891B5EA9BF52',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDataByIdentifier','Class',NULL,0,NULL,NULL,NULL,'B248B739E15867F44FA459F1F7FB31A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_component_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'5734B2C937BB128A36A88648026C2918',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_eventHandlers','Dependency',NULL,0,NULL,NULL,NULL,'A21173D305F4A2431AB92D798B5BA655',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSyncModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'A8EDD72BA601AE52DA0487A6223ED693',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operation','Dependency',NULL,0,NULL,NULL,NULL,'893EBFC268CF246737815970DCC7DEBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependency_context','Dependency',NULL,0,NULL,NULL,NULL,'0BE0B2D13DA3DA8D60E9F8262463BDC2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdServerEventGroupTimingConfig','Class',NULL,0,NULL,NULL,NULL,'456281DD562E350F6BE1B1BD8280B194',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_E2EProfileConfigurationSet','Class',NULL,0,NULL,NULL,NULL,'E70389F598EA23663E1B2C945396AF83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PeriodicEventTriggering','Class',NULL,0,NULL,NULL,NULL,'6A4E2B5E305442F34FA4AC7D80AFC8B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStorageConditionGroup','Class',NULL,0,NULL,NULL,NULL,'3673CF91BB306A9923514442D30A6A4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototypeGroups_target','Dependency',NULL,0,NULL,NULL,NULL,'DD3345743EF3F095DF391A2A32D94A57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpConnection','Class',NULL,0,NULL,NULL,NULL,'410F3AA7BAA487C70B57C8F4F94FF529',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SyncTimeBaseMgrUserNeeds','Class',NULL,0,NULL,NULL,NULL,'709D6A3CE180BE8093C59C5D73B73878',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939ClusterConditional','Class',NULL,0,NULL,NULL,NULL,'6B3C519D1020511587D1EC1C329571D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeEthMaster','Class',NULL,0,NULL,NULL,NULL,'92457EA16D8A7717C079EE2351E40023',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientIdDefinitionSet','Class',NULL,0,NULL,NULL,NULL,'C23AF51BCDE684B0C84577E6B0FEDD5F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanFrame','Class',NULL,0,NULL,NULL,NULL,'1CB0293CFD94AF8363D3A7709FEFBB23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcInternalBehavior','Class',NULL,0,NULL,NULL,NULL,'6C2C5A7869DF505CDF9030E03434F568',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptImplPolicy','Class',NULL,0,NULL,NULL,NULL,'F0A19D9020D9BCADB14B6CAF1FC5F3E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_soConIPduIdentifier','Dependency',NULL,0,NULL,NULL,NULL,'794061A1ED44E4833DC5EF976EEFDCF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStorageConditionRefConditional','Class',NULL,0,NULL,NULL,NULL,'001BD83AF8435D73037A669671145B80',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchReceiverComSpec','Class',NULL,0,NULL,NULL,NULL,'9C6E19D1561FD0F133F1AC4A7C005E43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pncPdurGroups','Dependency',NULL,0,NULL,NULL,NULL,'444B574E96FC7F0B15D6246B5D2957B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedCommunicationControllerConditional','Class',NULL,0,NULL,NULL,NULL,'806D3F7997FD4917A3FB5CB2EEE49AB3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SOMEIPTransformationDescription','Class',NULL,0,NULL,NULL,NULL,'EE21C180CD5C3721D1DC2B377D3997E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwRecordLayoutGroupContent','Class',NULL,0,NULL,NULL,NULL,'C80048A1A01EDC1B64797246A9971ADD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_debounceAlgorithm','Dependency',NULL,0,NULL,NULL,NULL,'6DACDE65764D1790D05AA47E59947C90',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpRequestConfiguration','Class',NULL,0,NULL,NULL,NULL,'84ADDE179293DCFB94C775BFB442F4CB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modes_context','Dependency',NULL,0,NULL,NULL,NULL,'FD5479A2E793BA18952CDB3BE9B6C295',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'A4E063BAA957175BA9D2CE47C3F11254',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GeneralParameter','Class',NULL,0,NULL,NULL,NULL,'0A2BBE59DF7220C30C0D8DA75325DEB1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceEventMapping','Class',NULL,0,NULL,NULL,NULL,'958C935AA128F7907EB606F633129439',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SynchronizationPointConstraint','Class',NULL,0,NULL,NULL,NULL,'29EC3D6A17C17A1E885CD2C4381CD3A1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataWriteCompletedEvent','Class',NULL,0,NULL,NULL,NULL,'8FC86EDD82B197CD2226F48FABC34B17',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_timingCondition','Dependency',NULL,0,NULL,NULL,NULL,'55D669556B80D878FEFBACAE1DF31E0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mode_contextModeDeclarationGroup','Dependency',NULL,0,NULL,NULL,NULL,'692E1B92C8CEBFE077E628EA43AA71FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DefItem','Class',NULL,0,NULL,NULL,NULL,'55E3E6B01D8292DD1780E1785231A68E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_enteredMode','Dependency',NULL,0,NULL,NULL,NULL,'DD6EDA592E576AB5DC9D0ED90C2C309E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwDataDependency','Class',NULL,0,NULL,NULL,NULL,'6462A63190B09C1567113A30A03A72B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanControllerFdConfiguration','Class',NULL,0,NULL,NULL,NULL,'12A7EFA38E33807B416F57E59DA96F05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nmPdu','Dependency',NULL,0,NULL,NULL,NULL,'33FAE8D94CB34AFA3BC2D8867CD6C7AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_processState_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'D4433E1A09828030629A5C03157E67D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucDerivationSpecification','Class',NULL,0,NULL,NULL,NULL,'92343EA6B33ED671A110FFBDC865B3C5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SequenceCounterMapping','Class',NULL,0,NULL,NULL,NULL,'9E959E27C3BBCFB3608BA36AA505F5A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanGlobalTimeDomainProps','Class',NULL,0,NULL,NULL,NULL,'2FA820C15BF8C19E7D5DD62E94DF5697',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndProtectionSet','Class',NULL,0,NULL,NULL,NULL,'A1AD9EC60F87FBC64BA630C6C063F0DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_communicationConnector','Dependency',NULL,0,NULL,NULL,NULL,'CA9DE425069F2440D90F8DAA3D430978',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GenericTp','Class',NULL,0,NULL,NULL,NULL,'AC8968BE18D2223A0B54A71675D21A69',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LabeledItem','Class',NULL,0,NULL,NULL,NULL,'C9FC99F11A13E02DB84B646D9DA086DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_fields','Dependency',NULL,0,NULL,NULL,NULL,'6F4C1419DC0BC5443ED7F3F1FDF86082',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_byPassPoints_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'9D2C2D15A32549DFA3175EF24363FEA9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceSignal','Dependency',NULL,0,NULL,NULL,NULL,'33C45446CC6001E68373074CF74FFC04',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_templateType','Dependency',NULL,0,NULL,NULL,NULL,'0F938AD8E9CCD411BDCA6E0F5CA4FDC3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedFlatSwcServiceDependency','Dependency',NULL,0,NULL,NULL,NULL,'50B928B5E20D1BB087E5713F887D4E8B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_from','Dependency',NULL,0,NULL,NULL,NULL,'AAB736952136BE2B40362F1D27FE130D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_schedulerNamePrefix','Dependency',NULL,0,NULL,NULL,NULL,'049496A1FF66867BB889F28B27508E4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalBasedEventElementToISignalTriggeringMapping','Class',NULL,0,NULL,NULL,NULL,'DCCE050767C04E95F2BC4B73769BEB6B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_systemSignals','Dependency',NULL,0,NULL,NULL,NULL,'D7C88078A29FD081B1BEE676ED10C8CA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenReadNvData_autosarVariable_context','Dependency',NULL,0,NULL,NULL,NULL,'5F67615272E7EE168B55A82B69AC5710',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_predecessorActions','Dependency',NULL,0,NULL,NULL,NULL,'8C5C0CBFD7859C3CC8EB4711460E03F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tearDownActions','Dependency',NULL,0,NULL,NULL,NULL,'CE506CAE0BC7A744169F49CED915A8D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NmInstantiation','Class',NULL,0,NULL,NULL,NULL,'D8BDF2D5B20AFDE227269E1B3F1BBC69',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GeneralPurposeConnection','Class',NULL,0,NULL,NULL,NULL,'CC52E9500EFED63459C386EF07850C49',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalIPduCounter','Class',NULL,0,NULL,NULL,NULL,'A4DDE70B05DF0C50754522DB571902D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'4E634DFC60157A73D3E688423EBF9963',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRootComponent','Dependency',NULL,0,NULL,NULL,NULL,'2441056E4B94581F6C9D94A7A2C0B98B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SingleLanguageUnitNames','Class',NULL,0,NULL,NULL,NULL,'9D14E138CE799776489D013889C311AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dtcSettingClass','Dependency',NULL,0,NULL,NULL,NULL,'770AD7F7D6F481A677E40C82D678A8C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_connector','Dependency',NULL,0,NULL,NULL,NULL,'C1ACC2D951E051CE535E69B4186818DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerRecordTypeMapping','Class',NULL,0,NULL,NULL,NULL,'5351664702D914622C2DF4C41FB63134',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_globalInPackages','Dependency',NULL,0,NULL,NULL,NULL,'2A82FD0D96E21F01F723EC050D3AAFD8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sharedAxisType','Dependency',NULL,0,NULL,NULL,NULL,'BCEB30EFA979AD66FC017ACABC415966',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tlvDataIdDefinitions','Dependency',NULL,0,NULL,NULL,NULL,'3995A34ACA5D6487D7C38D86DC2B971F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdServerServiceInstanceConfig','Class',NULL,0,NULL,NULL,NULL,'95B9048F3034CF51ABC3C672ED0FDCB0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwSystemconstValue','Class',NULL,0,NULL,NULL,NULL,'66235101941EC0C7BE019B020C9610F6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RequestResponseDelay','Class',NULL,0,NULL,NULL,NULL,'1E7C65C54752EE40507C80866EAFE7AF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipFieldDeployment','Class',NULL,0,NULL,NULL,NULL,'24BEEB23CA4E70595513C1C475A43082',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SystemSignal','Class',NULL,0,NULL,NULL,NULL,'1C3544AFBE378214969392AE95EC5249',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Machine','Class',NULL,0,NULL,NULL,NULL,'0101CE7500C0BC9B2A7704EBE98E0513',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuExtract','Dependency',NULL,0,NULL,NULL,NULL,'D19363F45F1375402FD6FF031C05D495',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'4547BE3D937A3A532802EEFEF159FC7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_functionPointerSignature','Dependency',NULL,0,NULL,NULL,NULL,'F08135B1473BA0A45F0590010407E4A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswBackgroundEvent','Class',NULL,0,NULL,NULL,NULL,'543C108FC56FAEB2B41C42A85920C811',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'C5711664184F83D4ADA0BC5F7FF12FA2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptSupportData','Class',NULL,0,NULL,NULL,NULL,'577D10C1EC72ADB5279B7EAA644E8B95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataPrototypeGroup','Dependency',NULL,0,NULL,NULL,NULL,'7461EA536BBC05900149A2601C900E41',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flatMapEntries','Dependency',NULL,0,NULL,NULL,NULL,'B9851EFB48352ED8E278C92E24A70E6C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getterOperation','Dependency',NULL,0,NULL,NULL,NULL,'86B9E5402829E5AB082D789C1656D6D6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UdpNmClusterCoupling','Class',NULL,0,NULL,NULL,NULL,'CCFB8DDD9FECC0137563B8C8167FAD6C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventComplex','Class',NULL,0,NULL,NULL,NULL,'143F986AF44B18AF81F3668DCE20D38A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'2D8950E7AE53085FCBA0DA79444EFA0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpConfig','Class',NULL,0,NULL,NULL,NULL,'59FA36C6E9516B127D8F2EDAA73D7BE3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_refinedModuleDef','Dependency',NULL,0,NULL,NULL,NULL,'04FBB3118D36B69864B5DE4E742543E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDataByIdentifierClass','Class',NULL,0,NULL,NULL,NULL,'FEBB22B4A8D640B2A631017C62DDB371',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_unicastSecureComProps','Dependency',NULL,0,NULL,NULL,NULL,'53AE7195BF8DA4E21A6FA2A7DE58A53E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucEnumerationLiteralDef','Class',NULL,0,NULL,NULL,NULL,'1AF9CA3BEFF8513012CA22603897C75F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanCluster','Class',NULL,0,NULL,NULL,NULL,'748FC94BABEF3D8F152F99B855725636',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMConditionByFeaturesAndSwSystemconsts','Class',NULL,0,NULL,NULL,NULL,'43092F772E61CBE0EB2E0AB1E6456CF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedDataElement_contextRootComposition','Dependency',NULL,0,NULL,NULL,NULL,'1C3A916DCD2D95E3336C5DE9F83AF920',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucConfigurationClassAffection','Class',NULL,0,NULL,NULL,NULL,'0A1C5A12B95D447F2086C54573B15AE6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InternalTriggeringPoint','Class',NULL,0,NULL,NULL,NULL,'93610324113C3341BEB708DBB8B9DC42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RemotingTechnology','Class',NULL,0,NULL,NULL,NULL,'C2636CCFB8354C992AE20C6F0E798EC3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearDiagnosticInformationClass','Class',NULL,0,NULL,NULL,NULL,'12D83695D292C3DE2008FC1F0D1EB018',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSyncPortPrototypeToTimeBaseMapping','Class',NULL,0,NULL,NULL,NULL,'AAE78314DB03893E4A9AD34BFC404187',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_replicaPdus','Dependency',NULL,0,NULL,NULL,NULL,'D070D1B6A6A9AAF926A92504B03C40C8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_lcObject','Dependency',NULL,0,NULL,NULL,NULL,'68B739FC24CFFBA644005FCA45334638',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMasterToSlaveEventMappingSet','Class',NULL,0,NULL,NULL,NULL,'C78ADE606702127A0454D5A87805631B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MacMulticastGroup','Class',NULL,0,NULL,NULL,NULL,'9067DB05208C208A2325BB5E1528F1DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_phmCheckpoint_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'9F78C59215CCBFB750587D9E8EB39B51',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticDataIdentifierSet','Dependency',NULL,0,NULL,NULL,NULL,'C42DEC5D6B98BD2797C7656EC2A321AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Compu','Class',NULL,0,NULL,NULL,NULL,'2922A7FD02EEA65699F8ECF8990FD862',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucModuleDef','Class',NULL,0,NULL,NULL,NULL,'F735AD6B2980FF257864D199A8801A5A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanFrameTriggering','Class',NULL,0,NULL,NULL,NULL,'2A930D906F7678C31298FE453C4472B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariableDataPrototype','Class',NULL,0,NULL,NULL,NULL,'489C0154AA32D454CA75659A24EA4110',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_valueType','Dependency',NULL,0,NULL,NULL,NULL,'E63FF22BC0AA5C1736286872B28A1A80',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultiLanguageVerbatim','Class',NULL,0,NULL,NULL,NULL,'0C6F08C341CAE175978E715044ACAEBC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimingExtensionResource','Class',NULL,0,NULL,NULL,NULL,'C4E7AC0BF1B2A38745909B4F55F0A61F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearDiagnosticInformation','Class',NULL,0,NULL,NULL,NULL,'34B52104749047F4C8FFB71B9AB9940C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDynamicallyDefineDataIdentifier','Class',NULL,0,NULL,NULL,NULL,'D46F3F9B3FE3A451C6619D365827ABA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExecutableEntityActivationReason','Class',NULL,0,NULL,NULL,NULL,'418AF28BEF8AB2691F7EDF156AF94EC6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticWriteMemoryByAddressClass','Class',NULL,0,NULL,NULL,NULL,'C77EC80C808E29041A0F8B0F43E2F40C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildActionIoElement','Class',NULL,0,NULL,NULL,NULL,'94F103BA89F3B894498CF65BFE626C6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_units','Dependency',NULL,0,NULL,NULL,NULL,'6698AA392DA6A1577DE5B3270CD4136B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_phmContributions','Dependency',NULL,0,NULL,NULL,NULL,'95770EB2FF6CAA8B67EE15BA3B40EC05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CouplingPortTrafficClassAssignment','Class',NULL,0,NULL,NULL,NULL,'AEA922F5E51EF9ACD5C5526FBD1095B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_port','Dependency',NULL,0,NULL,NULL,NULL,'4FEC5F9A8AC81259CA7EBD1073053314',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_directSuccessors','Dependency',NULL,0,NULL,NULL,NULL,'7E37AFFCB275C437EF9BCCFB1C2D9EAA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanAbsolutelyScheduledTiming','Class',NULL,0,NULL,NULL,NULL,'1FA48D4F30FFC578E781F07990EAFF38',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedMethodDeployment','Class',NULL,0,NULL,NULL,NULL,'A52BC1829C39756909011B1DC5007E1C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dynamicallyDefineDataIdentifierClass','Dependency',NULL,0,NULL,NULL,NULL,'7AF17BCECD46526A3C655CE2B1188C80',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_referenceTable','Dependency',NULL,0,NULL,NULL,NULL,'DFC816C1D85ECC57C6E06B45A4B965AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipEventProps','Class',NULL,0,NULL,NULL,NULL,'E1485E32B260F39A4F751CB8BE7ADE2A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucImplementationConfigurationClass','Class',NULL,0,NULL,NULL,NULL,'7DE88FD9309E96FD7ECBFE5CDFC2DC95',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestCurrentPowertrainData','Class',NULL,0,NULL,NULL,NULL,'09EBA2EF1B7C7D65B7A1E8D7222E78BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Allocator','Class',NULL,0,NULL,NULL,NULL,'4870C023E7314CBD0D1495014FFD99A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RoughEstimateOfExecutionTime','Class',NULL,0,NULL,NULL,NULL,'76D3334E7C8D7ACB15242A9547505A6A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticStorageCondition','Class',NULL,0,NULL,NULL,NULL,'0A912850E276094F67C6767BCCF14D6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildActionManifestRefConditional','Class',NULL,0,NULL,NULL,NULL,'FC6005168646F0137C857A4211F7DC83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPortMapping','Class',NULL,0,NULL,NULL,NULL,'D1B5B3D8A5D2F43D8C3B90BF2F271FD5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implementationDataTypeElement_target','Dependency',NULL,0,NULL,NULL,NULL,'B9C210E820315E3E678D7DE0C7E8EBC1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearConditionPortMapping','Class',NULL,0,NULL,NULL,NULL,'EA4E720BF40F98DB154567EBC5F7DE9F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'56BDFE3A669334AFA35A28EAACC8E7F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_design','Dependency',NULL,0,NULL,NULL,NULL,'7760CC3CA54101142A0B7D9BAF8C888E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_functionGroupStates_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'1008B5CFEA4F7442F678648AF039C255',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpInterface','Class',NULL,0,NULL,NULL,NULL,'E85A3F4F294659768E6C5B5D9366029D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClassContentConditional','Class',NULL,0,NULL,NULL,NULL,'8224EA3DAEF7E470A47D0A99166C56BA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDemProvidedDataMapping','Class',NULL,0,NULL,NULL,NULL,'BFE19CFFC27C13659060705BACEC52DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'FE6D13A737A7AEE34A20F73D0C08825B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PassThroughSwConnector','Class',NULL,0,NULL,NULL,NULL,'2F4C6DF57C17C46CB27247C67063AFE2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_destSdg','Dependency',NULL,0,NULL,NULL,NULL,'6554F36D5DA7993483A838C93655E885',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_phmCheckpoint_context','Dependency',NULL,0,NULL,NULL,NULL,'62FC9590F77D5B1B0ACDA58224E0CEB2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComMethodGrant','Class',NULL,0,NULL,NULL,NULL,'9BA57CDB0EBB5FFFFB7F6B1EDA8A0A77',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestVehicleInfoClass','Class',NULL,0,NULL,NULL,NULL,'29BFC21E216EA12DD9BE5020E5B6AF84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeCorrectionProps','Class',NULL,0,NULL,NULL,NULL,'6CF858F41DAA090B9ADE63FC0B052B47',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_interpolationRoutine','Dependency',NULL,0,NULL,NULL,NULL,'A763D63346D1BB88999483B5F6416F78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secureComPropsForUdps','Dependency',NULL,0,NULL,NULL,NULL,'B8CBFE606D3461C70EC42FFA8ABD5644',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataPrototypeInCs','Dependency',NULL,0,NULL,NULL,NULL,'BA12CC55D36C46EBDF3561CAF770469B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependencyInSystem_context','Dependency',NULL,0,NULL,NULL,NULL,'63113A219A40B2F71AE4D17463B871B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_functionIdentifier','Dependency',NULL,0,NULL,NULL,NULL,'74B3CA0FFE5B2A17BEC49C1DD82BAD4B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rptArHook_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'8F023B36DBB61A63C33E9959E7388A9A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticMemoryDestinationPortMapping','Class',NULL,0,NULL,NULL,NULL,'5F2E05A61639C3309D3DC79CC5B0F345',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuScaleRationalFormula','Class',NULL,0,NULL,NULL,NULL,'DB5501E975D9F7E9632C5265A4E51672',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterSwComponentType','Class',NULL,0,NULL,NULL,NULL,'22DBC7BE4D17B3D4A5545AC8CAABE765',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ShortNameFragment','Class',NULL,0,NULL,NULL,NULL,'BDCBF3FFF77DC9DFC59B33181B7A36A7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IamModuleInstantiation','Class',NULL,0,NULL,NULL,NULL,'54B4D7F6CBD7919ADBB14AE543D1A37B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpLogicAddress','Class',NULL,0,NULL,NULL,NULL,'82EB97AD29666531FDAD7A9D91B0E420',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedParameter_parameter_context','Dependency',NULL,0,NULL,NULL,NULL,'348EFA01992A8D2F60F4DAB0DB1C0634',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPduPort','Class',NULL,0,NULL,NULL,NULL,'63527D882E75EF3AC45A16595D06A99F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransformationPropsToServiceInterfaceElementMappingSet','Class',NULL,0,NULL,NULL,NULL,'9D4C92621275B2FB7A1C657AC0D39FFD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanCommunicationControllerConditional','Class',NULL,0,NULL,NULL,NULL,'B90DB7559F98BE4B5E2F81DD46DB7FD0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedOperation_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'BA2F9B005FFB758205BACB6C504959CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aging','Dependency',NULL,0,NULL,NULL,NULL,'8B886865E3AACC6C7744D696A6A0EABC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AssignFrameId','Class',NULL,0,NULL,NULL,NULL,'DB64A1B9EDE6B40D785EFD73ABADEDD9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swComponentPrototype_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'C72D65D1214E8990C92DDF1ECE5F831A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEventInfoNeeds','Class',NULL,0,NULL,NULL,NULL,'F478E16DFB71A599B40F936ACF9ADC23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_destination','Dependency',NULL,0,NULL,NULL,NULL,'106B12E6E9F64754AA00CE2F02B5ED89',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Area','Class',NULL,0,NULL,NULL,NULL,'7059B27622ED6C8365668976895DB612',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPSecConfig','Class',NULL,0,NULL,NULL,NULL,'E65C40298ABCD5F750EA2FCFF645DEF4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationError','Class',NULL,0,NULL,NULL,NULL,'017F430CE819D6160263C4A42ABE90CB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_refinedEvent_targetEvent','Dependency',NULL,0,NULL,NULL,NULL,'A6BE681B89A6E2AF6135E3A4E28633F4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_masterEvent','Dependency',NULL,0,NULL,NULL,NULL,'D28A4CB103D5743D1B55D45ED951C7FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tpConnectionControl','Dependency',NULL,0,NULL,NULL,NULL,'BF5A48895B7B5EEA018362B191E0A5FF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_typeBlueprints_autosarDataType','Dependency',NULL,0,NULL,NULL,NULL,'135AA916DFDF616C83BDBDA8CED0A929',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_linSlaveEcu','Dependency',NULL,0,NULL,NULL,NULL,'970F2E94199F46CADDB64FB7322A9B9D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'3701469EB4AC3208E91CA09C801C2533',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_unit','Dependency',NULL,0,NULL,NULL,NULL,'81A505181C79EE7FFBD8545F08D739A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BufferProperties','Class',NULL,0,NULL,NULL,NULL,'2EA2536FB5BA0D61A6BC7C40CFB5C80D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstToSecondDataTransformation','Dependency',NULL,0,NULL,NULL,NULL,'8AAAD62A031AB9FB99E3E4133CB5EC33',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_multicastSecureComProps','Dependency',NULL,0,NULL,NULL,NULL,'4613C5E61E06BBDED2A0F00B785524D7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticProtocol','Class',NULL,0,NULL,NULL,NULL,'A06C935BBDC22AD93EA4F11FB461F4CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_serializer','Dependency',NULL,0,NULL,NULL,NULL,'D748BDFD64457259DF0307541C1C2D17',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readDataClass','Dependency',NULL,0,NULL,NULL,NULL,'62AA147618A9D52AC2A9EB57B491D97E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variantCriterion','Dependency',NULL,0,NULL,NULL,NULL,'0250F941946523D1CCB122B16E33AB78',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSyncClientConfiguration','Class',NULL,0,NULL,NULL,NULL,'DB560593FCE911CCAC237C2EBDC41A0A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FloatContainer','Class',NULL,0,NULL,NULL,NULL,'B023FAE456290E658AD05C0A8F054466',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticContributionSet','Class',NULL,0,NULL,NULL,NULL,'452B4C54DA919BB651DB4B7E28B14CBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_receivers','Dependency',NULL,0,NULL,NULL,NULL,'D1F9A31502D9D63001DA62D1EBC72769',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationAssocMapElement','Class',NULL,0,NULL,NULL,NULL,'E0E3ECEA855CADB7B9A5C71DF0449621',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'910CCC463B8B48B24352B49F86DE9288',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_recoveryViaApplicationAction','Dependency',NULL,0,NULL,NULL,NULL,'E3DFBBB1D054530237076D92A7D96B3C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcModeGroup_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'B51329AB1CC1AF7354FA3EA00979A731',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CyclicTiming','Class',NULL,0,NULL,NULL,NULL,'45D860FE6ED4B113212A38903AEB904F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'F49A5F9845BAB37DD9D4BF578345515E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MetaDataItem','Class',NULL,0,NULL,NULL,NULL,'368639E29F8E8DB5E5A1D162AD51C899',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UcmDescription','Class',NULL,0,NULL,NULL,NULL,'B7576E9AC2D55056EEE399F04660338A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_physicalChannel','Dependency',NULL,0,NULL,NULL,NULL,'AD3E7A6A1DD27A80B44D525EFF715C81',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestBooleanPropertyDef','Class',NULL,0,NULL,NULL,NULL,'AB09CB4BEA8463A0F5BD747DA484CF8C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwGenericAxisParamType','Class',NULL,0,NULL,NULL,NULL,'69D59CE3DDF53126899CF32C93F5559C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortDefinedArgumentBlueprint','Class',NULL,0,NULL,NULL,NULL,'437D153D11781E1EB5EB7ADEE41B3E67',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucEnumerationParamDef','Class',NULL,0,NULL,NULL,NULL,'CE9AC17B6DDCD6423610E7FE3BBC3AC9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyPortPrototypeToKeyValueDatabaseMapping','Class',NULL,0,NULL,NULL,NULL,'30D503952B5523190C28878428517C75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeAccessPointIdent','Class',NULL,0,NULL,NULL,NULL,'3DD3B5AD818697E45AEC0E2D2B7AF4D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MeasuredExecutionTime','Class',NULL,0,NULL,NULL,NULL,'168A03CD1A7DDFC2970FBC21F45DA011',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_associatedRtePlugin','Dependency',NULL,0,NULL,NULL,NULL,'36BAE999A6D073A6EDDC057E66109FBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadMemoryByAddressClass','Class',NULL,0,NULL,NULL,NULL,'221113B7E8E781FDF3E90DC7EA9B4CF3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucQuery','Class',NULL,0,NULL,NULL,NULL,'AF7FF20B6EDE32EEDF383DBB9E3E1EC8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeDeclarationMappingSet','Dependency',NULL,0,NULL,NULL,NULL,'E17FA9F5C2FC142A3E7000FE635C4050',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SegmentPosition','Class',NULL,0,NULL,NULL,NULL,'793A3FB2E87A5B66CD073758D7571AF6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComMgrUserNeeds','Class',NULL,0,NULL,NULL,NULL,'0EED8A0406C2DD5EE04E5A62DB2422D9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationEndpointRefConditional','Class',NULL,0,NULL,NULL,NULL,'725D90C9A7160517678BA91ED89FA307',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operations_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'288FA5D16A3FCEB8B9ACEBA3743F07B2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_fieldNotifier','Dependency',NULL,0,NULL,NULL,NULL,'4F38F7DEACB705722D213CAEB2DD09DF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServiceQueue','Class',NULL,0,NULL,NULL,NULL,'5355B0E866B33CA8A38B0A2B1C7CE8A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BuildEngineeringObject','Class',NULL,0,NULL,NULL,NULL,'9ADCDB279F8DDC91E32A25F6A6B23EBD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FurtherActionByteNeeds','Class',NULL,0,NULL,NULL,NULL,'2ECB37F43CEA5B9043F6571C99AF6ADB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_element','Dependency',NULL,0,NULL,NULL,NULL,'1F60EF7B766D46C9DD01EE285266F3F2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mode_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'27764DEB3B5117AC0117616A15BCA380',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMAttributeDef','Class',NULL,0,NULL,NULL,NULL,'6F2E1A36B1518442C3B611E52B61394E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceFieldMapping','Class',NULL,0,NULL,NULL,NULL,'F5DB6060141B3A0E586FB6122804BAF1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TopicContentOrMsrQuery','Class',NULL,0,NULL,NULL,NULL,'565A02CF8A13BA5DDC824673B4610D88',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_actionListItems','Dependency',NULL,0,NULL,NULL,NULL,'67A764F3085B333EC537DFD2DE5C2A51',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ReferenceTailoring','Class',NULL,0,NULL,NULL,NULL,'A803008377FC887B3282315B3EB35083',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_baseComposition','Dependency',NULL,0,NULL,NULL,NULL,'09C81F11453583A1AC576E844917DD7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dynamicActions','Dependency',NULL,0,NULL,NULL,NULL,'23C7BE529A0265E44DE11BC773C31178',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ecuConfiguration','Dependency',NULL,0,NULL,NULL,NULL,'8E0002510BB5B99A71B8768956633D46',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executableProvidedPort_target','Dependency',NULL,0,NULL,NULL,NULL,'8C69104E87789BD49E64B7D5B3355ED7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939TpPg','Class',NULL,0,NULL,NULL,NULL,'EB1BA8660A8D4BE899A5D6F24C9E2017',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondTrigger','Dependency',NULL,0,NULL,NULL,NULL,'10FF5740F7A157E4BD0476F5BEEA3099',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventTrigger','Class',NULL,0,NULL,NULL,NULL,'FE13B2411D7911BDE1E6F5492946F134',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_writtenNvData_autosarVariable_port','Dependency',NULL,0,NULL,NULL,NULL,'61B7983D0D6D709992171C05573EA3F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_allChannels','Dependency',NULL,0,NULL,NULL,NULL,'62E1D73C51DD1EABBAECAEAB50E1D8AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedParameterElement_parameter_context','Dependency',NULL,0,NULL,NULL,NULL,'0D18BF332FD2587434AC241A9F2C29F9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketConnection','Class',NULL,0,NULL,NULL,NULL,'E96C204624706B5CF30AE61136BE7543',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInterruptEntity','Class',NULL,0,NULL,NULL,NULL,'CD5018B9AEECF51C9D4863636F8B0A43',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransmissionModeCondition','Class',NULL,0,NULL,NULL,NULL,'1C18C78D6CD1293985AF2B81D29FF869',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_exitModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'3F29B637CD24345C2264CED0F120C9BD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetMode','Dependency',NULL,0,NULL,NULL,NULL,'13B9825E4611792FCAE15552B5A9D4FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_groupedAliasEvents','Dependency',NULL,0,NULL,NULL,NULL,'28547AEC4B789DE6210B2A45532A0FB1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInstanceToSignalMappingSet','Class',NULL,0,NULL,NULL,NULL,'BC4AA184849606E5573DDFF9C68856A5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_machineDesign','Dependency',NULL,0,NULL,NULL,NULL,'EA57F5C7CA527CCE042D2AA126C78102',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tpSdu','Dependency',NULL,0,NULL,NULL,NULL,'25B59987A626B3DD30546D894B91BE8B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntities_context','Dependency',NULL,0,NULL,NULL,NULL,'8ECB87A23E5474EBF84A69A25B0C8C12',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_translationTarget_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'7516B482DDD839B6059AC8756D3E3EFE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyKeyValueDatabase','Class',NULL,0,NULL,NULL,NULL,'43729B66CF10FF58BD4F0037E0F9E896',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_executionContexts','Dependency',NULL,0,NULL,NULL,NULL,'03617A21236D227C95A04CEF8ED8B9B3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SynchronizedSlaveTimeBase','Class',NULL,0,NULL,NULL,NULL,'E5CEBD0D9C823B5284A532A7E067A111',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucSymbolicNameReferenceDef','Class',NULL,0,NULL,NULL,NULL,'BDB43852C8E76FB0DE0A253D96CC93DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_assignedController','Dependency',NULL,0,NULL,NULL,NULL,'0BDADF51E83301963B04E5CD91E1D3B4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BooleanContainer','Class',NULL,0,NULL,NULL,NULL,'DA03E9E6E6BD4942A448D2F1D414D459',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuGenericMath','Class',NULL,0,NULL,NULL,NULL,'8225EFAFD9DAC867F9A93DBEA1C259D7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultidimensionalTime','Class',NULL,0,NULL,NULL,NULL,'BA550E051F1EA5979E983A508ACC65F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'178E9C5892F61B0DA950620B4F37EBA3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerToSignalMapping','Class',NULL,0,NULL,NULL,NULL,'EBFD974B1431E5A2AB41001D7C453137',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwareClusterDesign','Class',NULL,0,NULL,NULL,NULL,'B2C75426DDE48D8579F7567B2CEE040A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TextTableValuePair','Class',NULL,0,NULL,NULL,NULL,'91498CDD2A3C1C9B98790B5D644D03D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModeManagerErrorEvent','Class',NULL,0,NULL,NULL,NULL,'D3E36A8B81DF035BD9DED84C892021A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsMethodDeployment','Class',NULL,0,NULL,NULL,NULL,'3BA62E08A5D867F639AD0D0748D50C74',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FieldMapping','Class',NULL,0,NULL,NULL,NULL,'1A2D7B61ADE0DFADADB3907D84BD7AF7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondElementInstances_target','Dependency',NULL,0,NULL,NULL,NULL,'239BD55F7D125EB17168C1F897235913',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextImplementationDataElements','Dependency',NULL,0,NULL,NULL,NULL,'401C003BE12CB92D177479E24ADD5C1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureCommunicationAuthenticationProps','Class',NULL,0,NULL,NULL,NULL,'D827A6362A0BC49A8E4E935E32B2529F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExternalTriggeringPoint','Class',NULL,0,NULL,NULL,NULL,'66A15801D9F3B31A38314246DD749117',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_channel','Dependency',NULL,0,NULL,NULL,NULL,'0A523DCDE7CB6740FB512FBD1807F0DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_pids','Dependency',NULL,0,NULL,NULL,NULL,'A877531442112CB9FE344E3C6384D97C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'7F0CA2AC8D767E70D57D32C5EC6323D4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvBlockSwComponentType','Class',NULL,0,NULL,NULL,NULL,'F1333943B91EEE0CA19BCB047C938FCE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuNominatorDenominator','Class',NULL,0,NULL,NULL,NULL,'5341129EC938F9E57DF65893DC3367EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationAssocMapDataType','Class',NULL,0,NULL,NULL,NULL,'45320C092141172E18E83EC71873FFB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_preActivates_targetModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'E50D2DC5B34A8F295181D942479F5780',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LPlainText','Class',NULL,0,NULL,NULL,NULL,'9C4D999C64A0C73391516DAE84217988',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SecureOnBoardCommunicationNeeds','Class',NULL,0,NULL,NULL,NULL,'6DD63DA705FDFB387BCE7E5C97FC9A33',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeSwitchPoint','Class',NULL,0,NULL,NULL,NULL,'839D5ACFDA136E001CF34A70A7219862',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StaticPart','Class',NULL,0,NULL,NULL,NULL,'BD99DCE89D5E45952CEFCE532990F5FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SystemTiming','Class',NULL,0,NULL,NULL,NULL,'F36F18ECDCEF41961AC7B530878835C6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComOfferServiceGrant','Class',NULL,0,NULL,NULL,NULL,'EAE5D53CAAAB7C0D097FE8B580BD8A03',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipTpConfig','Class',NULL,0,NULL,NULL,NULL,'1D97EF70DCC6906D0B747EB64ABADE92',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_InternalTriggerOccurredEvent','Class',NULL,0,NULL,NULL,NULL,'0760428CC6EDC5112E913E65C43F3AB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_QueuedSenderComSpec','Class',NULL,0,NULL,NULL,NULL,'859F1127B7A68F25C8467A1AC9CAE2EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiscoveryTechnology','Class',NULL,0,NULL,NULL,NULL,'2777F6F9751EE5404F42E43AE29614EA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ComManagementMapping','Class',NULL,0,NULL,NULL,NULL,'7562634DF371BC7C91050E7F12B2717B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ArbitraryEventTriggering','Class',NULL,0,NULL,NULL,NULL,'77800AD18F81156BE835EB5ECB017C0E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetEecs','Dependency',NULL,0,NULL,NULL,NULL,'904B1E33F105A4DBB46B744032D8BF7A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_nestedElements','Dependency',NULL,0,NULL,NULL,NULL,'522694838890EAB8457017FBDD3ABD94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_networkTimeMaster','Dependency',NULL,0,NULL,NULL,NULL,'9CC899E889D37455818EB2F1555C2FA2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorChannel','Class',NULL,0,NULL,NULL,NULL,'19AC3AA09009ED528AF51DB84CF5D5A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LatencyTimingConstraint','Class',NULL,0,NULL,NULL,NULL,'18EF9901FC6CEE35F597287F0BFEAC3E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucFloatParamDef','Class',NULL,0,NULL,NULL,NULL,'6278A052A9E80CA0E06FA4382C840D0D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_shallRunOns','Dependency',NULL,0,NULL,NULL,NULL,'AB981961D22F1C63CCAFCDBE798FD607',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextComponent','Dependency',NULL,0,NULL,NULL,NULL,'D003CCD474802996E6FF35289032ED86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FrGlobalTimeDomainProps','Class',NULL,0,NULL,NULL,NULL,'800F1073BFCAB7201918C6B239A01406',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetPPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'5DD8F780A442EB16B0F7F26C7BC79D94',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConstraintTailoring','Class',NULL,0,NULL,NULL,NULL,'0EF3D6BF8F12851B2A235EE3FD053429',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdServerEventGroupTimingConfigRefConditional','Class',NULL,0,NULL,NULL,NULL,'621EA28ECF2CCF17691856728C68305A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondPort','Dependency',NULL,0,NULL,NULL,NULL,'9646DFD5B5910753A20915B193AE11AE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstElementInstances_target','Dependency',NULL,0,NULL,NULL,NULL,'298232EC4033D96361ED37489635F753',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_memoryDestinations','Dependency',NULL,0,NULL,NULL,NULL,'CA318918255CA1D6AA3E9271299D2F33',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_usedParameterElement_parameter_target','Dependency',NULL,0,NULL,NULL,NULL,'48715C781F226285EE5B6B13864E4C4E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_multicastSdIpAddress','Dependency',NULL,0,NULL,NULL,NULL,'9F0F1C4FD6ACDFA03CB75C9B07FF9382',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_eventSource','Dependency',NULL,0,NULL,NULL,NULL,'C5923AC71DB986A6897DC2564426F34A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_target','Dependency',NULL,0,NULL,NULL,NULL,'7B92619610AB6BE665C83EC241E5F150',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_reversedTpSdu','Dependency',NULL,0,NULL,NULL,NULL,'3753C908B0913BA1544F78F6651784ED',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RxIdentifierRange','Class',NULL,0,NULL,NULL,NULL,'6008FAB259871BD120A10DAB213A0995',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_flatInstance','Dependency',NULL,0,NULL,NULL,NULL,'FA7F87C8F99D5D800DFAED3E855AA25A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestNumberPropertyDef','Class',NULL,0,NULL,NULL,NULL,'3DA735D10F88BFC97B0883CEC852EE25',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcImplementation','Class',NULL,0,NULL,NULL,NULL,'7D14EFD03F600514DECED855D6A5B4F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swClusterDesignProvidedPort_context','Dependency',NULL,0,NULL,NULL,NULL,'0709E047317EC3EBEB8B50A625E0522E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939TpConfig','Class',NULL,0,NULL,NULL,NULL,'487BAE58C6EB05B3EA9B78A485DF9752',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariableInImplDatatype_port','Dependency',NULL,0,NULL,NULL,NULL,'BF306F16971389F042A8BA5AEBBC44C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstTrigger','Dependency',NULL,0,NULL,NULL,NULL,'3AED09AA1DB0E05481D506EA237492C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvBlockDescriptor','Class',NULL,0,NULL,NULL,NULL,'3D53C17CC4C55427FB4D7EA43C4E505E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implicitDataAccess_contextPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'3A36322275FC5C0C515305D88FD501F5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedOuterPort','Dependency',NULL,0,NULL,NULL,NULL,'7B49B334F91E1E8B5B1F23EF3C23EE0C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IndicatorStatusNeeds','Class',NULL,0,NULL,NULL,NULL,'5E69B6C4B735D4DF3EA63ED0AEA97050',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VlanMembership','Class',NULL,0,NULL,NULL,NULL,'6559F30657A5ECD2C91CE5A96EE90A21',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuConstTextContent','Class',NULL,0,NULL,NULL,NULL,'667F73E27908846DD9EBA96B1915DFF2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_troubleCodeUds','Dependency',NULL,0,NULL,NULL,NULL,'BAA670E7C0543EB7C08C5E4A148ACC5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetCommunicationControllerConditional','Class',NULL,0,NULL,NULL,NULL,'DC8D8918DEA58800887C6A11D3EC1A3C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalServiceTranslationElementProps','Class',NULL,0,NULL,NULL,NULL,'F011E66A30C29A6D0E973521948AB22A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimFunctionMapping','Class',NULL,0,NULL,NULL,NULL,'9BB1FC3D0E8E09A5B890BC0B2675849F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcTiming','Class',NULL,0,NULL,NULL,NULL,'9579FCCD2C7EC50B30B42C24B63AB7F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SocketConnectionBundle','Class',NULL,0,NULL,NULL,NULL,'59F4AE70C4CD71A08355A2F3BA1818F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_destinations','Dependency',NULL,0,NULL,NULL,NULL,'27BCE50B0D7F4E74ECD078256E7533DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_upstreamReference_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'FE49FFDB8F7744B1FD138193973FCB4A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ReceiverAnnotation','Class',NULL,0,NULL,NULL,NULL,'571259FAE7E3EDD6CEB24DB46F226D4F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestEmissionRelatedDTCClass','Class',NULL,0,NULL,NULL,NULL,'71AEDB8BBDB879FD51164863E1B35783',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElements_targetDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'57320D2472FA5E36B97D238077057033',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvSwcModeElement','Class',NULL,0,NULL,NULL,NULL,'AE673794F8FFC3E3648CD6619BC73C4D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_instanceInMemory_context','Dependency',NULL,0,NULL,NULL,NULL,'C245E7FE5E560E5B0603CC0B79AE510B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucDestinationUriDef','Class',NULL,0,NULL,NULL,NULL,'DB161F3707EB0F07184ECC4CD4C06FEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarParameter_contextDataPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'2C346FE8FD16ED389E13E6E3FCA1AE84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PlatformPhmActionItem','Class',NULL,0,NULL,NULL,NULL,'90BCBF585F6904F999A326091BE50FB8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuConst','Class',NULL,0,NULL,NULL,NULL,'12A5F9D5E3E16B8D101DD79F962507AC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdServerConfig','Dependency',NULL,0,NULL,NULL,NULL,'A9C972C963FA523665550BC2C9C732A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_canTpChannel','Dependency',NULL,0,NULL,NULL,NULL,'1D8B3DBFB914DBC3A1EEC4FEEEEC7F41',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticResponseOnEvent','Class',NULL,0,NULL,NULL,NULL,'CE2FFF6A04B83CCFE04FC4795954B6DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_freezeFrameContentWwhObd','Dependency',NULL,0,NULL,NULL,NULL,'48721AE770CE0661541BE840B05FEF97',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanCommunicationController','Class',NULL,0,NULL,NULL,NULL,'0248E3C5488BEF12EE5167EECE9D9CB1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_objectDefinitions','Dependency',NULL,0,NULL,NULL,NULL,'BCA9FBA3DFD23B2C8D4B64E22465F528',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clusteredComponents_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'C2FEDDD789D5F210555CE26798B60C83',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayNmCluster','Class',NULL,0,NULL,NULL,NULL,'8738314A4A694FA989AD2082A5A41920',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RunnableEntityGroup','Class',NULL,0,NULL,NULL,NULL,'588E44C640B04F21B4473B2EE92246E4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedDataElement_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'342ED568FE1FDBE2E706F16CB4289CE8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswServiceDependency','Dependency',NULL,0,NULL,NULL,NULL,'CD1DAABDB4DC1E7D2FB0E72F6B86B268',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanClusterConditional','Class',NULL,0,NULL,NULL,NULL,'11751D3E6A366A44DB054E2821A33745',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventBswModule','Class',NULL,0,NULL,NULL,NULL,'05FFEA55817F725BB184A596CE9FE609',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyFileProxyInterface','Class',NULL,0,NULL,NULL,NULL,'D1706BC0382460A37FF6C2573CE71C72',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SystemMemoryUsage','Class',NULL,0,NULL,NULL,NULL,'ACB73EB4B3499A0FE20A642F9A120C65',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_refinedEvent_contextComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'2649ECBF0D4A81FD76CB903048FD2E02',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_testId','Dependency',NULL,0,NULL,NULL,NULL,'821046440AAE3F62D35874B6D8ECE2D8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_referencedTDEventSwc','Dependency',NULL,0,NULL,NULL,NULL,'AAFBDC1586A5B686CC72C0B991E45E6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransmissionModeDeclaration','Class',NULL,0,NULL,NULL,NULL,'81C4DD7E8C6180313507B5DA4A19EAAA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_containedPackageElements','Dependency',NULL,0,NULL,NULL,NULL,'8E827F348B4773C14E8BFEF9E67FD02C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceInstances_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'05D8570F8C7EA2E7C431CF8A07C97CFB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticFreezeFrame','Dependency',NULL,0,NULL,NULL,NULL,'6416756130C4C18793C3B90CE16BAF6B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Linker','Class',NULL,0,NULL,NULL,NULL,'B2E267C738560474E2EC1A14CCCA3038',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticFimAliasEventMapping','Class',NULL,0,NULL,NULL,NULL,'BA6157D71A71DD46CBC23620CC82E73B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LifeCycleStateDefinitionGroup','Class',NULL,0,NULL,NULL,NULL,'E841C71BF9076AE11C3B75D1D3CAB2E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TransformationPropsToServiceInterfaceElementMapping','Class',NULL,0,NULL,NULL,NULL,'91FC2B78E3F919FFD31802BEE2373953',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_package','Dependency',NULL,0,NULL,NULL,NULL,'D55914AAF49110565194FFB7F29FD934',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_packagerSignature','Dependency',NULL,0,NULL,NULL,NULL,'E784763A76786B95297DB5BF9C20CD87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_connectors','Dependency',NULL,0,NULL,NULL,NULL,'E16502775EDAB50253259AA0BE36F410',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompositionPPortToExecutablePPortMapping','Class',NULL,0,NULL,NULL,NULL,'17CAD617854D46D5BB42ED33E6604F11',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_exitedMode','Dependency',NULL,0,NULL,NULL,NULL,'55A018ABBDDBD4B41E8B9526C73D40B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_entryModeDeclaration','Dependency',NULL,0,NULL,NULL,NULL,'6855427CDB44B18F704DB8F70A3D5F13',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventVfbReference','Class',NULL,0,NULL,NULL,NULL,'223D4531E0F3F8641B3E20D06CF2422C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_innerGroups_contexts','Dependency',NULL,0,NULL,NULL,NULL,'3F43D8C7B8E2A13D905D5C2C13C336FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_expression','Dependency',NULL,0,NULL,NULL,NULL,'18323F84BBB3B8A015810DAD50923A70',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessPoint','Dependency',NULL,0,NULL,NULL,NULL,'67532768B22AF6A172E317FB9D811217',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpAddress','Class',NULL,0,NULL,NULL,NULL,'84017CD4CEF62E9029308D8D063D6F3B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_networkEndpoint','Dependency',NULL,0,NULL,NULL,NULL,'A4EB2DBFAB3E4DA1BD9301E9D412651F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getterCall','Dependency',NULL,0,NULL,NULL,NULL,'03A720B2D85DCD3904D90F22BF3EA8A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dependentSoftwareClusterDesign','Dependency',NULL,0,NULL,NULL,NULL,'BA8973F4FD3D1BC93A3FD6BBC3438F6F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticControlDTCSetting','Class',NULL,0,NULL,NULL,NULL,'92D8494DD5B43C592C1BFFA00B043A21',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ieee1722TpEthernetFrame','Class',NULL,0,NULL,NULL,NULL,'0AFCA40931FBA3CC70CF11A8394C63F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Trigger','Class',NULL,0,NULL,NULL,NULL,'9E94AC416981A3CF8510C50C9AF33FE5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_substitutedFrames','Dependency',NULL,0,NULL,NULL,NULL,'5BD645D486A3F835E5994AFC961F966E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_indexDataType','Dependency',NULL,0,NULL,NULL,NULL,'C6840546630135D421F1908C88C48E8F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Prms','Class',NULL,0,NULL,NULL,NULL,'3DC9215363DADE459BF7E67A99107F50',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PhysConstrs','Class',NULL,0,NULL,NULL,NULL,'061A2974595908BB610F51C5EB3A2D82',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readNvData_autosarVariable_portPrototype','Dependency',NULL,0,NULL,NULL,NULL,'E3FF4CBADD382D0E81CD409C33896DD4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataFormatTailoring','Class',NULL,0,NULL,NULL,NULL,'85C3A53097660E4D1EFC716305362E75',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_trigger_contextRPort','Dependency',NULL,0,NULL,NULL,NULL,'588D66415E88CFA6DEED4E8EC4C1BD6E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConsumedServiceInstanceRefConditional','Class',NULL,0,NULL,NULL,NULL,'4C406B576DC739FCCD446E5D8634B18F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PortInterfaceMappingSet','Class',NULL,0,NULL,NULL,NULL,'A43E4878A14C49D4214D8C27804C35EE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DdsServiceInterfaceDeployment','Class',NULL,0,NULL,NULL,NULL,'38C806DCFAAF0E81F5F11A18B25FE6B6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BurstPatternEventTriggering','Class',NULL,0,NULL,NULL,NULL,'C732BFC2FE95664380855E84A5ACBA0B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_field_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'0CE4F37B5658264ACD4B4EC977C6A6E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinConfigurableFrame','Class',NULL,0,NULL,NULL,NULL,'ACB7C24B5981CE7B62B5F0045BF97377',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ViewMapSet','Class',NULL,0,NULL,NULL,NULL,'933B9D203A6306E3C5A9EAF54E7F44C9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PrmCharMinTypMax','Class',NULL,0,NULL,NULL,NULL,'F50620EAE7A702E73B0C847B2A90F1FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CheckpointTransition','Class',NULL,0,NULL,NULL,NULL,'47B22BECCC23F9935EA05A806063DC1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ServiceInterfaceMappingSet','Class',NULL,0,NULL,NULL,NULL,'DDF95206661070C9BB22C858D257C65B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TopicContent','Class',NULL,0,NULL,NULL,NULL,'C951CC668299E1AD48F1595BA768F5A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetVariableAccess','Dependency',NULL,0,NULL,NULL,NULL,'17DC47C8E3F2CFEBA9B5A75FF19E0C7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanControllerConfigurationRequirements','Class',NULL,0,NULL,NULL,NULL,'9F1BF75704039F64621D82BB3534EEBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_localSupervisions','Dependency',NULL,0,NULL,NULL,NULL,'FF1859F0863F381A26B0BDA89D4D23F0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_participatingJ1939Clusters','Dependency',NULL,0,NULL,NULL,NULL,'C4A1E08B4F6C26B5DDFB52AE5D2ED8FE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TriggerIPduSendCondition','Class',NULL,0,NULL,NULL,NULL,'43444DA684268CAD443BDA4C08CB1040',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ProcessDesign','Class',NULL,0,NULL,NULL,NULL,'821F20512B047925CEFA754EF300D92A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_End2EndMethodProtectionProps','Class',NULL,0,NULL,NULL,NULL,'5D42F2BF1400D9115EF04BA13A22AF9B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsPskIdentity','Class',NULL,0,NULL,NULL,NULL,'0C7B1563F3D62A8CFD9EC7CF554997E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticEvent','Dependency',NULL,0,NULL,NULL,NULL,'A23052CB58BB11B21B122F5D42751FA0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aggregation','Dependency',NULL,0,NULL,NULL,NULL,'538900E62E84469E5367FC43FBE7A62A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticControlDTCSettingClass','Class',NULL,0,NULL,NULL,NULL,'BF322A9FB10F732D08C30E7D803CB534',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextSwcPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'26E90CD44FA8923E913E497CB67E885E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TlsDeployment','Class',NULL,0,NULL,NULL,NULL,'0C64D7F2F73FFF088B0FBE4A4602E8EB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_customSpecifications','Dependency',NULL,0,NULL,NULL,NULL,'795A7C54486DE52B01A4381F66942B29',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipCollectionProps','Class',NULL,0,NULL,NULL,NULL,'3F71D1D490042B811B7D27B7C9C09FFA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TextualCondition','Class',NULL,0,NULL,NULL,NULL,'696EAADF9D310BE109B914DC71DC8594',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PduToFrameMapping','Class',NULL,0,NULL,NULL,NULL,'21E64A5A5C71299980C91BE5FEC75590',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_externalReplacement','Dependency',NULL,0,NULL,NULL,NULL,'1BBA6B317F61CE2B5A88B94D49291D56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSecurityAccess','Class',NULL,0,NULL,NULL,NULL,'A4AED82C481BB365630346AF5EC3A732',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucLinkerSymbolDefConditional','Class',NULL,0,NULL,NULL,NULL,'63308F6D07A7EA36C439980AAAD003EE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UserDefinedPhysicalChannel','Class',NULL,0,NULL,NULL,NULL,'728D398A4DAB685A7EFEFF818A880CD3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRoutineControlClass','Class',NULL,0,NULL,NULL,NULL,'0A51F8AE4F249536DB50129E6ACED94F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ucm','Dependency',NULL,0,NULL,NULL,NULL,'67536ECD95FB65656826A0A8790C9CEC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rateBasedMonitoredEvent','Dependency',NULL,0,NULL,NULL,NULL,'34FD6D5E0804F55C23409A644D1AB40C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcBswSynchronizedTrigger','Class',NULL,0,NULL,NULL,NULL,'A2D70467E65B82534202F9567788B6E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_verifies','Dependency',NULL,0,NULL,NULL,NULL,'EEB3A16A3EB30BE1322B9DE4F741EBD1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PduTriggering','Class',NULL,0,NULL,NULL,NULL,'D9DE04E9F62CDFE3BD493F271C6C7AA9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestHttpPortPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'7EFDD9B0D6D11232EE75E36B73A23C2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_calledFromWithinExclusiveArea','Dependency',NULL,0,NULL,NULL,NULL,'9E224D7046F33024FAF823FF526695A6',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinMasterConditional','Class',NULL,0,NULL,NULL,NULL,'E5914F162002E06F991B6EDF45FB11E5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_doipConnections','Dependency',NULL,0,NULL,NULL,NULL,'BA15457E26456FE8ECD45D4B7649A6F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptServicePoint','Class',NULL,0,NULL,NULL,NULL,'E2569646D4FC97845D006EFE2BD9D45A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RecoveryViaApplicationAction','Class',NULL,0,NULL,NULL,NULL,'DAC6FAA047D61498B57A3F97FE0AEC25',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Chapter','Class',NULL,0,NULL,NULL,NULL,'515FA6C0918278E4FA61D9A578CC4EDD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswModuleEntryRefConditional','Class',NULL,0,NULL,NULL,NULL,'D278A4F070CA61D996D805B2EDAC0656',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ISignalGroup','Class',NULL,0,NULL,NULL,NULL,'C7497FE4F52502067DCFEA1F25D84C86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SymbolProps','Class',NULL,0,NULL,NULL,NULL,'5676B54F75F41ABE893DD7A5F7ECA969',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SignalBasedMethodToISignalTriggeringMapping','Class',NULL,0,NULL,NULL,NULL,'ACF052D1A581CE388BB8589713524CC3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_feature_contextElements','Dependency',NULL,0,NULL,NULL,NULL,'9C02976DA98E80E0482197EF7D4DBA05',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Map','Class',NULL,0,NULL,NULL,NULL,'696BCF6C2AC6024BCC129B0E703EC997',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependencyInExecutable_target','Dependency',NULL,0,NULL,NULL,NULL,'203D608B11D4148E0F55A180B0FBFFF4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_assignedEntry','Dependency',NULL,0,NULL,NULL,NULL,'11C3A29D0060257408D2F74513E0956B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iPduIdentifierUdps','Dependency',NULL,0,NULL,NULL,NULL,'0C084438963C25AE84C2CA71E22C53FD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AsynchronousServerCallReturnsEvent','Class',NULL,0,NULL,NULL,NULL,'62C2DFC90684BC7605A97A11D5F18DA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMConditionByFeaturesAndAttributes','Class',NULL,0,NULL,NULL,NULL,'18A2F99C4BAD3CB11B85A7A4C5C72BBB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcServiceDependencyInExecutable_context','Dependency',NULL,0,NULL,NULL,NULL,'F34612CE9088C81E004A1B522D92EE7F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceValidationInterface','Class',NULL,0,NULL,NULL,NULL,'15E9139AB581963CFC4632202056257C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_customDocumentation','Dependency',NULL,0,NULL,NULL,NULL,'5D1602ECC6008A98D3BBA684A3C69199',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DefList','Class',NULL,0,NULL,NULL,NULL,'57C1F0CF48DFA6E76C52B0312CDFC32F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clearCondition','Dependency',NULL,0,NULL,NULL,NULL,'A9D111DEC967B75ACDF2345176A2E2DA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_buildActionManifest','Dependency',NULL,0,NULL,NULL,NULL,'5A600B644B577E6A47AD3267FCCF3CC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationSwComponentType','Class',NULL,0,NULL,NULL,NULL,'303A19625DBD4CA49756C91F299A4FC4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Graphic','Class',NULL,0,NULL,NULL,NULL,'05EB786DA426B17EFF0807BB1262C288',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucBooleanParamDef','Class',NULL,0,NULL,NULL,NULL,'6273F80AE632837C867A065E48E52B85',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticClearConditionNeeds','Class',NULL,0,NULL,NULL,NULL,'C3B408B0FBB288334FBCE5653B66504F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_localParameter','Dependency',NULL,0,NULL,NULL,NULL,'7A02A4105A4E2D914A47DF9BA5BCA970',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MultiplicityRestrictionWithSeverity','Class',NULL,0,NULL,NULL,NULL,'FA5E6A17BE5A0C606AE52D3116BE7496',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinTpConnection','Class',NULL,0,NULL,NULL,NULL,'B14110DE5A36C4E9EB536670746F9755',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_followUpActions','Dependency',NULL,0,NULL,NULL,NULL,'E51B520F3507EA14AE5885BEA4B11C57',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnableConditionRefConditional','Class',NULL,0,NULL,NULL,NULL,'C65E01C54FC3204C706AB756EBC6D0B7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticEnvConditionFormula','Class',NULL,0,NULL,NULL,NULL,'01FD6CEA1CA8CD3990A93695D63830D5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariableInImplDatatype_context','Dependency',NULL,0,NULL,NULL,NULL,'E46AF0DDB2F2E48E81644EBDC456F02F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PRPortPrototype','Class',NULL,0,NULL,NULL,NULL,'DAEE16ACBAFD489DCE6B920E9C15A1F2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerOperation_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'361F09A7BBEEA2184EF7046AE2A1DB7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTroubleCodeUds','Class',NULL,0,NULL,NULL,NULL,'88448DD6032AA34EC45537EE9C8E22DF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swAddrMethod','Dependency',NULL,0,NULL,NULL,NULL,'A7A2C2EAE15F7420D6BB882022D372A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayArTpConfig','Class',NULL,0,NULL,NULL,NULL,'F9194A9CF9AD433EB411C6399CDE51BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_innerGroups_target','Dependency',NULL,0,NULL,NULL,NULL,'1901168FFFB09AA99589A93AFC5F13A9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticTransferExit','Class',NULL,0,NULL,NULL,NULL,'028219AC1BE23FC3C2FF4288ED163590',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwPinGroupConnector','Class',NULL,0,NULL,NULL,NULL,'5AEEC10502E18E361B141D831A18FE9C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetDataElement','Dependency',NULL,0,NULL,NULL,NULL,'E75EDE8E2DF0327C71200C676B3B0EDB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FunctionInhibitionNeeds','Class',NULL,0,NULL,NULL,NULL,'A9E561DEF67BE47F2CAAD1D5D477F771',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_deferringFids','Dependency',NULL,0,NULL,NULL,NULL,'C503D22738035E5EB0C954DFC9C33A2F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerInterfaceToBswModuleEntryBlueprintMapping','Class',NULL,0,NULL,NULL,NULL,'6CC31A948813C0281D302B703DD27108',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_routine','Dependency',NULL,0,NULL,NULL,NULL,'2369A7851C460A3485587C839F0C0E7C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_operations_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'EB6421B1FBFC073D3F69E6ED64FD5968',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swClusterDesignRequiredPort_context','Dependency',NULL,0,NULL,NULL,NULL,'D0FC3433CAE74838AE351C3E7C63E793',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_setterReturn','Dependency',NULL,0,NULL,NULL,NULL,'E8DAD120625A72D0BCD4A7634BF6463C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swComponentPrototype_contextComposition','Dependency',NULL,0,NULL,NULL,NULL,'90B98199A52CC78BA1C7DD6749BCC5C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NvRequireComSpec','Class',NULL,0,NULL,NULL,NULL,'6CE5AF81FEE7132677B5828763CECAAB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwarePackageStoring','Class',NULL,0,NULL,NULL,NULL,'E2E8032A1AEE54BFD59FB7A817421F25',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdClientServiceInstanceConfigRefConditional','Class',NULL,0,NULL,NULL,NULL,'36E260E6531EEF1013F5D9D5BA84C257',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariableInImplDatatype_target','Dependency',NULL,0,NULL,NULL,NULL,'822FC24C531A7EE50F3A7007DC7AC7E9',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApApplicationError','Class',NULL,0,NULL,NULL,NULL,'7B05ED62B0768946AC4B6041E7297E58',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ttCanCluster','Dependency',NULL,0,NULL,NULL,NULL,'EABB830F496CAED66F3A00DF5E789E96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcuAbstractionSwComponentType','Class',NULL,0,NULL,NULL,NULL,'E61A3640C4C6EFC4DB55C9815258BE53',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwTextProps','Class',NULL,0,NULL,NULL,NULL,'5E8F8F01A3D088CEE0FBF69815CC47DB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hardwareElements','Dependency',NULL,0,NULL,NULL,NULL,'9BAA3B0D1385A36DD850B9C92722754F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataPrototypeMapping','Class',NULL,0,NULL,NULL,NULL,'281672A7C4953E57C8D1D3C3F4260FDF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticConditionInterface','Class',NULL,0,NULL,NULL,NULL,'42BFBAB9744B0C3178E8FE605054AF42',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgPrimitiveAttribute','Class',NULL,0,NULL,NULL,NULL,'C09156C559DC6C8B8A43C4EEBC7A258D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_vfcs_target','Dependency',NULL,0,NULL,NULL,NULL,'DBA26A44E0444801B3E135831564174C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetSignal','Dependency',NULL,0,NULL,NULL,NULL,'44846B5A6604DCCD1719C301AFB075CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PlatformHealthManagementContribution','Class',NULL,0,NULL,NULL,NULL,'42C6BE4F0A89BF8969F0C92B7F7AC00A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AclObjectSet','Class',NULL,0,NULL,NULL,NULL,'F283E4A8E1B72C2929100E5B78B748C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transformationProps','Dependency',NULL,0,NULL,NULL,NULL,'4917BEC9EE02D274CED4E9D8E2BCBA7C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Tbody','Class',NULL,0,NULL,NULL,NULL,'EBD458F6AFB2E063FE3D329553062BDB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextSwComponentPrototypes','Dependency',NULL,0,NULL,NULL,NULL,'6F4AEB74CA78DDB9D8983F38A4477943',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticProvidedDataMapping','Class',NULL,0,NULL,NULL,NULL,'DB17240288ED558467C94CD94A999161',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticResponseOnEventClass','Class',NULL,0,NULL,NULL,NULL,'160DD21FA97C977FF0C78D815C92DE87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swCompToEcuMappings','Dependency',NULL,0,NULL,NULL,NULL,'4B9B22B843414966347758C9767E8220',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_firstOperation','Dependency',NULL,0,NULL,NULL,NULL,'E95352A67EABBFC3E435A6D81CFF8A9E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_bswModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'EFB2E6C4F295732D386B9FC67A48E7DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_hwCategories','Dependency',NULL,0,NULL,NULL,NULL,'6D88C7B84905E8DCEFD0E029C467073E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticRequestDownloadClass','Class',NULL,0,NULL,NULL,NULL,'E0262783A01C416890A00C52C02505A3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdServerConfig','Class',NULL,0,NULL,NULL,NULL,'C587E00350E8AE1004496CE461CC260C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PduActivationRoutingGroup','Class',NULL,0,NULL,NULL,NULL,'B5C49B43EFAE26E85296290412709D22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_certificate','Dependency',NULL,0,NULL,NULL,NULL,'D83C7473D9099E5CD67761958032FC5C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RestEndpointDelete','Class',NULL,0,NULL,NULL,NULL,'6627E30F6372CDAB03288D24AAD9BBBF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_physicalRequest','Dependency',NULL,0,NULL,NULL,NULL,'01389D6D7A05C2F67D4FF4AA7EEA8A85',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthernetRawDataStreamMapping','Class',NULL,0,NULL,NULL,NULL,'DD4E416EC2025EEE283E6B6EF38B727C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_collectedInstances_target','Dependency',NULL,0,NULL,NULL,NULL,'396817F6F3E2D1A9C8272AA80BD024F3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticSecurityAccessClass','Class',NULL,0,NULL,NULL,NULL,'33BAEBE288DB1F0B5BC2F67607DFFF10',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataElements','Dependency',NULL,0,NULL,NULL,NULL,'EB76EACEE9EBBD66BD9752FA1FDAC14C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AggregationTailoring','Class',NULL,0,NULL,NULL,NULL,'AD798A2B4F92ADABE69411E2F74FC6C4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ConditionalChangeNad','Class',NULL,0,NULL,NULL,NULL,'549346B2257E6CC672687F963C32E83E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VehiclePackage','Package',NULL,0,NULL,NULL,NULL,'C7A82536ADD46EFBB8107F657A3264CC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tdPduTriggeringFilters','Dependency',NULL,0,NULL,NULL,NULL,'D7C96E293EA7C718B450C6805624DC87',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeDeclarationGroupPrototype','Class',NULL,0,NULL,NULL,NULL,'35BAD40B1FD0AEC3C64118C72CD6810C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SenderReceiverCompositeElementToSignalMapping','Class',NULL,0,NULL,NULL,NULL,'513C1113AFE7C69193391BB6E5FB5001',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secureComConfig','Dependency',NULL,0,NULL,NULL,NULL,'4D90D989E842A668D6DF5624B7DF414C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sdgCaptionRef','Dependency',NULL,0,NULL,NULL,NULL,'A0EB7A1E6754A026C24E34C899EB734E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_diagnosticSession','Dependency',NULL,0,NULL,NULL,NULL,'8EAD44644E2CEE1C121F1A8F560C348D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StartupConfig','Class',NULL,0,NULL,NULL,NULL,'60F629EB7F17FCF86060C7343D75E9AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CryptoServicePrimitive','Class',NULL,0,NULL,NULL,NULL,'9D2BF71296A46F89B85CC5608B4C5822',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_runnableEntityGroups_target','Dependency',NULL,0,NULL,NULL,NULL,'81730513A79EFBC0338D6D63D0060799',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mappedOperation_contextComponents','Dependency',NULL,0,NULL,NULL,NULL,'58DFF7E36ACDF6C89257EE94EE5B9E32',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requiredModeGroup','Dependency',NULL,0,NULL,NULL,NULL,'ABA2A8C30978AB592E32F6F49FB473E0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeEthSlave','Class',NULL,0,NULL,NULL,NULL,'E61FE3E28A62A51B3B12D7353FEB043F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerInterface','Class',NULL,0,NULL,NULL,NULL,'330811FCBC59DCD6E1099799622769A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_method_contextRootSwComponentPrototype','Dependency',NULL,0,NULL,NULL,NULL,'1991029F77049A2E0CF4CF862FB4D1B5',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndTransformationISignalPropsConditional','Class',NULL,0,NULL,NULL,NULL,'C812E1ED8FCF3EF3BB33DAF64D7BF368',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_consumedProvidedServiceInstanceGroup','Dependency',NULL,0,NULL,NULL,NULL,'2793845860DA93AA02DD4BCBFB3D51B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_aclObjects','Dependency',NULL,0,NULL,NULL,NULL,'F5B24133551ED9D7DBE29F3E524C44BB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarVariable_autosarVariable_root','Dependency',NULL,0,NULL,NULL,NULL,'EDEFA86C88BF6FFC2ADB4CF3E723E62D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_secondApplicationError','Dependency',NULL,0,NULL,NULL,NULL,'2307C82ED46ED8113D2A20071E984D7E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureMapElement','Class',NULL,0,NULL,NULL,NULL,'706AC736DF02CE00387C8C1F32A26880',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_rootDataPrototypeInCs','Dependency',NULL,0,NULL,NULL,NULL,'4510C08EFEE75FDD87AC0A8329530BB4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_mapping','Dependency',NULL,0,NULL,NULL,NULL,'B0F76F6A3576F366653038491CEEBA56',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureDecomposition','Class',NULL,0,NULL,NULL,NULL,'9638888CDE4DEAE0C22AD2990CFF9790',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AdaptiveSwcInternalBehavior','Class',NULL,0,NULL,NULL,NULL,'DC07D41498B915976183433DAB1F90F1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedMemory','Dependency',NULL,0,NULL,NULL,NULL,'5314EE026CAFEE12F44B3C2C5FDBD300',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_readClass','Dependency',NULL,0,NULL,NULL,NULL,'1253E38F586EF5F7B8C8B4C9E2DDD393',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype_rootDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'54D5F8DBE7A68789D92CF8C184CA4534',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_UcmStep','Class',NULL,0,NULL,NULL,NULL,'246043789A614D84CBBA9847B5DE1EFC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_cryptoKeySlot','Dependency',NULL,0,NULL,NULL,NULL,'45E444AD626998194CD97BA67CD07A86',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessPermission','Dependency',NULL,0,NULL,NULL,NULL,'96B6B5B319262D3F879A96F3F9918544',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticServiceDataMapping','Class',NULL,0,NULL,NULL,NULL,'1068AECDBFA90EBC07D0437CEA6F443C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyFileArray','Class',NULL,0,NULL,NULL,NULL,'0EE4BFA05FA27EDE4F6B1D13486F44B1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_someipSdClientServiceInstanceConfig','Dependency',NULL,0,NULL,NULL,NULL,'CBAF11AFA6559B2C9C5017C299CE661E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_socketConnections','Dependency',NULL,0,NULL,NULL,NULL,'A42F05E307D343C7B50925E83A418890',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetIPdu','Dependency',NULL,0,NULL,NULL,NULL,'62FF3E00B0C421F8CC4A66A6E02A09CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FlexrayTpConfig','Class',NULL,0,NULL,NULL,NULL,'6588EE116D086E89EB2C86F4B09DD58F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipServiceVersion','Class',NULL,0,NULL,NULL,NULL,'B805062CBE32C4242CB838421ACA4492',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_arParameter_localParameter','Dependency',NULL,0,NULL,NULL,NULL,'84224CE335F3048F3D2BFDA5A803E3F7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HealthChannelExternalStatus','Class',NULL,0,NULL,NULL,NULL,'245DFAB4832A8F4F3D36899484D76CE1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NonqueuedSenderComSpec','Class',NULL,0,NULL,NULL,NULL,'4A4070C476C18BAD3EDA5E4D8A28068C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyPortPrototypeToFileArrayMapping','Class',NULL,0,NULL,NULL,NULL,'0E52BF9587BB8AE258C616D46D96D6AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwAxisGrouped','Class',NULL,0,NULL,NULL,NULL,'5A108FE42C3892A40791234D2B13AAEF',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_transmitter','Dependency',NULL,0,NULL,NULL,NULL,'37B4400E7002F1F38D385DBDAFD7D930',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CompuConstFormulaContent','Class',NULL,0,NULL,NULL,NULL,'7053652B79C885838D432A32E13A2364',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwGenericAxisParam','Class',NULL,0,NULL,NULL,NULL,'6ACA3D86337ADE7E793BFABDC5133F5B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ModeAccessPoint','Class',NULL,0,NULL,NULL,NULL,'046A966966A1BD2EBCC6C8C1A3D48C84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SynchronizationTimingConstraint','Class',NULL,0,NULL,NULL,NULL,'9642013D8FEB162E1115510907A4D2E7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_sourceEvents','Dependency',NULL,0,NULL,NULL,NULL,'1FE1E3273D3A7112C312CD4A03EA9EE3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_txPduTriggering','Dependency',NULL,0,NULL,NULL,NULL,'0D00B689450B494EC05E2915DDFA15AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_cryptoServiceKey','Dependency',NULL,0,NULL,NULL,NULL,'3C8CA881DE8C7341B15594C25B4F2199',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EthTSynCrcFlags','Class',NULL,0,NULL,NULL,NULL,'52EA05CB5A2D897FAE0FFF7A9E03BA4A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticComControl','Class',NULL,0,NULL,NULL,NULL,'F680898E8D5DD107C9556C6E33A23F9B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientServerToSignalGroupMapping','Class',NULL,0,NULL,NULL,NULL,'E04DBBB25D25D89BB7D50E7AC313A181',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BusMirrorChannelMappingIp','Class',NULL,0,NULL,NULL,NULL,'0ECD39F5D4007F3C6D32EF3109A764AD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_LinErrorResponse','Class',NULL,0,NULL,NULL,NULL,'B2292413BABB4636C2012BC880650586',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanTpConfig','Class',NULL,0,NULL,NULL,NULL,'DE3DE3BE5A344E48F6B8C651F0EF712E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RunnableEntity','Class',NULL,0,NULL,NULL,NULL,'6986C5B2B56EE88EB618DD5BF13BCF06',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedServicePort_targetPPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'1B41AD465E313A9359317ADE9D2DB679',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_inhibitingFid','Dependency',NULL,0,NULL,NULL,NULL,'55E00717CF9CC623EB8F3985AD703983',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SdgCaption','Class',NULL,0,NULL,NULL,NULL,'A0FD509A598A2A4022882FB2112F7DBE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RptHook','Class',NULL,0,NULL,NULL,NULL,'2416441C353A5E78734919E6AC51DFCE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_RuleBasedAxisCont','Class',NULL,0,NULL,NULL,NULL,'8C8D23BEFAD4A33132D9AC1DD0FEF380',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_providedServicePort_context','Dependency',NULL,0,NULL,NULL,NULL,'DABD874AF4DA3A886C3CE946721FAF34',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_StateDependentStartupConfig','Class',NULL,0,NULL,NULL,NULL,'ED43C2B0CEC8C72DC1A1BBD25ACCF12F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DhcpServerConfiguration','Class',NULL,0,NULL,NULL,NULL,'34A8E2C88FF65D69CC987302F6A2257C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EndToEndProtectionVariablePrototype','Class',NULL,0,NULL,NULL,NULL,'B27C398107379B545E9A20979D2C61A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_status_contextRPortPrototype','Dependency',NULL,0,NULL,NULL,NULL,'07234AF95EA3179694848697E8DB04E3',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_VariationPointProxy','Class',NULL,0,NULL,NULL,NULL,'7B5875BF3F839E26EB5B4F984000EC9A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DataTypeMappingSet','Class',NULL,0,NULL,NULL,NULL,'A8EB6B3F9AE28D7B83A45C70966A5677',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TDEventOccurrenceExpression','Class',NULL,0,NULL,NULL,NULL,'403F69BEF3C34E3F2BEB55D53CE0C09D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SpecificationDocumentScope','Class',NULL,0,NULL,NULL,NULL,'D244505E4897493229A9F42E18AE87D1',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_NumericalOrText','Class',NULL,0,NULL,NULL,NULL,'12B3EC9320DE6DB3F54F5319ACD04B96',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_WorstCaseStackUsage','Class',NULL,0,NULL,NULL,NULL,'7E524873A010A37741528E82F6ED4953',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ClientIdMapping','Class',NULL,0,NULL,NULL,NULL,'BCCDC3CF04F2BCAF25E2D6C6846223A0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticReadDTCInformation','Class',NULL,0,NULL,NULL,NULL,'482501345594D8E9FD5A11FF8D2E3787',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetEvent','Dependency',NULL,0,NULL,NULL,NULL,'66C066ABE0A9DE61E70D1A08447B37C7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_requestUploadClass','Dependency',NULL,0,NULL,NULL,NULL,'A1F9FBE1D9FC060EAF5BCBB3F482ADF0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SomeipSdServerServiceInstanceConfigRefConditional','Class',NULL,0,NULL,NULL,NULL,'8175580D0077AE86DA89BC92D4AD8DC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_reference','Dependency',NULL,0,NULL,NULL,NULL,'DE7C500EBE1A25DBF9B33B84F88D33C2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_constantMappings','Dependency',NULL,0,NULL,NULL,NULL,'B5D46B05D76E6EA99DCDD12B08310E1D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableInstance_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'31BE6386A5AA941344661A70444494AA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucReferenceDef','Class',NULL,0,NULL,NULL,NULL,'85BFB232A2EA8B0A9B5C44D186498899',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_translationTarget_contextPort','Dependency',NULL,0,NULL,NULL,NULL,'4711F5A26B5161F20B88755A1B436422',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_J1939RmIncomingRequestServiceNeeds','Class',NULL,0,NULL,NULL,NULL,'50E9A03FF2D6F4C414F3A5BAFDDE0FD8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_AssemblySwConnector','Class',NULL,0,NULL,NULL,NULL,'8F81C22D89DDADF823395F247C9ED1CB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_associatedComIPduGroups','Dependency',NULL,0,NULL,NULL,NULL,'84B448F134111A62BFB5D225A329E7B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DeterministicClient','Class',NULL,0,NULL,NULL,NULL,'89862D36610BCE14A98AD6F1172263E2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_clientServerOperation','Dependency',NULL,0,NULL,NULL,NULL,'9EEF1BCB5959B1153C75A8BB40514E7B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextBswImplementation','Dependency',NULL,0,NULL,NULL,NULL,'E37CA08E870F350DD1D3338D2F84F5B4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_HwAttributeLiteralDef','Class',NULL,0,NULL,NULL,NULL,'FE262A713F737EEB98B8DC07090FF74A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ParameterPortAnnotation','Class',NULL,0,NULL,NULL,NULL,'184F485F1EB6107248C137EA10261757',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_subNodeChannel','Dependency',NULL,0,NULL,NULL,NULL,'7EA6CABC4D90AC7440C003F762CCCC4A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_CanCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'D52F1074CEC204399BFD13AB285AD32A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TtcanCommunicationConnector','Class',NULL,0,NULL,NULL,NULL,'69F2E2515BABBF744E284D60354D37B8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyFileProxy','Class',NULL,0,NULL,NULL,NULL,'E20DCC48DCD7D5D96CF4586D5030C831',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_GlobalTimeCanMaster','Class',NULL,0,NULL,NULL,NULL,'A38D5F3D344CACB947F22958DF241BBA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_IPv6ExtHeaderFilterSet','Class',NULL,0,NULL,NULL,NULL,'EF8298B9BA14DE269DC436177E7E60DE',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_modeGroup_contextPPort','Dependency',NULL,0,NULL,NULL,NULL,'9E15FABD8879F8ECA13D55B63AFBF96E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_MsrQueryP2','Class',NULL,0,NULL,NULL,NULL,'80F98F96F8DE2E1720ADDD7272E0627E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Xfile','Class',NULL,0,NULL,NULL,NULL,'0C30831AC2817EC55A00AFC1868EA79E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SwcToApplicationPartitionMapping','Class',NULL,0,NULL,NULL,NULL,'72AD2492816FCB6545DFA169AEEACB0B',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_TimeSynchronizationMasterInterface','Class',NULL,0,NULL,NULL,NULL,'F59D8B88F99E511D9B8B739B11BE52FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_dataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'2F668DF206737B9CFF944DFF10D225DC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ApplicationModeRequestPhmActionItem','Class',NULL,0,NULL,NULL,NULL,'11236948BC946B47E2ABF3F7C99426CD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDataChangeTrigger','Class',NULL,0,NULL,NULL,NULL,'DA0B2838AFC3F02DA0486BA996D3377C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswPerInstanceMemoryPolicy','Class',NULL,0,NULL,NULL,NULL,'CAC4D7B922C3B85D1097E29169C8E36A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_swcRunnable','Dependency',NULL,0,NULL,NULL,NULL,'4715F594959D0739BA0A3FD31607E628',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_ExternalTriggeringPointIdent','Class',NULL,0,NULL,NULL,NULL,'6E0F9B935AC2703215CEEC0A98F62BC0',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_FMFeatureRestriction','Class',NULL,0,NULL,NULL,NULL,'B6ECC7B01AFE34B9691A9BD8541256A4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_autosarDataType','Dependency',NULL,0,NULL,NULL,NULL,'3CF36605381E3FEC8EB89F42A52037A2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_allowedTcpOptions','Dependency',NULL,0,NULL,NULL,NULL,'13554D2B6312E02CA00C729C9A7F9C5E',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_contextRPort','Dependency',NULL,0,NULL,NULL,NULL,'72393B08D09BA4DFF67EBEA9086039BC',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_tailorings','Dependency',NULL,0,NULL,NULL,NULL,'23F9BBB6FEE698CCD9954C22600C1985',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DoIpTpConfig','Class',NULL,0,NULL,NULL,NULL,'58C4CFF35A95B43F0ED67560694EDC16',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_SoftwarePackage','Package',NULL,0,NULL,NULL,NULL,'11EB55A6EF62B9A7CC14FE743C8201D2',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucChoiceContainerDef','Class',NULL,0,NULL,NULL,NULL,'ACE6851535D0996B5CD37D2B89CBB12F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable_localVariable','Dependency',NULL,0,NULL,NULL,NULL,'A512DFF0570F631793440AEFF5A2D6DD',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_methodCall','Dependency',NULL,0,NULL,NULL,NULL,'375AF198CF7D76C9206071A2D839C4A8',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_implicitDataAccess_variationPoint','Dependency',NULL,0,NULL,NULL,NULL,'99A2FCE75CCD7FB2E299374FBCA9AF62',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_someipSdServerServiceInstanceConfig','Dependency',NULL,0,NULL,NULL,NULL,'3377BEB1DE015450F25B4F4E71C2CB23',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_variableAccess_targetVariableAccess','Dependency',NULL,0,NULL,NULL,NULL,'B50981684373AB7A85824DF1F5820E5F',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticJ1939Node','Class',NULL,0,NULL,NULL,NULL,'4D25C9BBAD114D0BFDA7A812AA0CE864',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_accessedVariable_autosarVariable_target','Dependency',NULL,0,NULL,NULL,NULL,'3D829ECDE84D80C8EB62F5A99B1AAC84',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DcmIPdu','Class',NULL,0,NULL,NULL,NULL,'FF0E4DD7D9E59F95B26C6558808B9AA7',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_inhibitingSecondaryFids','Dependency',NULL,0,NULL,NULL,NULL,'FFBC341B21D6AED0748BE9D6E476FF22',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_targetSwcServiceDependency','Dependency',NULL,0,NULL,NULL,NULL,'5F1CC668415A123A8022C71FA326E31C',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_leafElement_rootDataPrototype','Dependency',NULL,0,NULL,NULL,NULL,'803507B057536E209701432DD377010A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_DiagnosticDTCInformationInterface','Class',NULL,0,NULL,NULL,NULL,'A7C18423E22C55749FE33B50DDB954FA',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_initialMode','Dependency',NULL,0,NULL,NULL,NULL,'B8B4ABC65A0C2D3D2F5DBBA2A2847288',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_valueDataType','Dependency',NULL,0,NULL,NULL,NULL,'0196E0DE2DD0B002A59881C09D4EC648',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_getter','Dependency',NULL,0,NULL,NULL,NULL,'F75747F229B9A6E4D3AEE1B8C64FB6AB',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_EcucInstanceReferenceValue','Class',NULL,0,NULL,NULL,NULL,'D1C408FC009974459AAE6D5EE4121198',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_iSignalPorts','Dependency',NULL,0,NULL,NULL,NULL,'CD04C67999EB8B00544B73D3FFC81461',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_PersistencyRedundancyCrc','Class',NULL,0,NULL,NULL,NULL,'E4A772A9D3F34101A616C3086FE0784D',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_perInstanceParameter','Dependency',NULL,0,NULL,NULL,NULL,'54310CB5EA785C7EE6713F2A9417BCA4',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_Ipv6DhcpServerConfiguration','Class',NULL,0,NULL,NULL,NULL,'95F95B121C1FB9443A4A651B0F9F957A',NULL);
INSERT INTO t_stereotypes VALUES('AUTOSAR_BswInternalTriggeringPointPolicy','Class',NULL,0,NULL,NULL,NULL,'729028F3B577449FB668C2466BA0270A',NULL);
INSERT INTO t_stereotypes VALUES('define','Attribute','define',0,NULL,NULL,NULL,'{5C76E3F2-3A44-42dc-8F22-593272BE4B20}',NULL);
INSERT INTO t_stereotypes VALUES('generated','EnumerationLiteral','generated',0,NULL,NULL,NULL,'{7F415A5F-E3A7-48e9-968C-EB8A8C904FD9}',NULL);
INSERT INTO t_stereotypes VALUES('executable entry point','Class','executable entry point',0,NULL,NULL,NULL,'{3BA17B11-B54F-48b5-BB01-8CEE7768C51C}',NULL);
INSERT INTO t_stereotypes VALUES('LL Embedded','Package','LL Embedded',0,NULL,NULL,NULL,'{63FB55EF-6ED0-446c-8252-583E78E65D4D}',NULL);
INSERT INTO t_stereotypes VALUES('functionPointer','Attribute','functionPointer',0,NULL,NULL,NULL,'{DD86F6E0-1320-4c18-A28C-76902E0CF340}',NULL);
INSERT INTO t_stereotypes VALUES('typedef','Operation','typedef',0,NULL,NULL,NULL,'{9CB6297A-2040-46a9-8EAE-74C9B2C80D8F}',NULL);
INSERT INTO t_stereotypes VALUES('extend','UCExtend','extend',0,NULL,NULL,NULL,'{5373558A-13EF-408f-9213-E7622DD9C6C3}',NULL);
INSERT INTO t_stereotypes VALUES('Project','Package','Project',0,NULL,NULL,NULL,'{ECB0E83D-1648-4314-96C1-2D7834822FDC}',NULL);
INSERT INTO t_stereotypes VALUES('CMP','Package','CMP',0,NULL,NULL,NULL,'{325B342D-709C-49b5-A12D-D7288741FEF2}',NULL);
INSERT INTO t_stereotypes VALUES('TXT','Requirement','TXT',0,NULL,NULL,NULL,'{8FEB5753-6544-4493-8320-12D7AA642795}',NULL);
INSERT INTO t_stereotypes VALUES('SET','Package','SET',0,NULL,NULL,NULL,'{424695B0-7C2A-4c4a-8A14-B29C21D16A40}',NULL);
INSERT INTO t_stereotypes VALUES('FLD','Package','FLD',0,NULL,NULL,NULL,'{33984859-93E8-441b-B8E1-9DA43FFD6B69}',NULL);
INSERT INTO t_stereotypes VALUES('STK','Requirement','STK',0,NULL,NULL,NULL,'{4F2429B5-A01A-4ccc-883F-AE80640DAEB4}',NULL);
INSERT INTO t_stereotypes VALUES('SYS','Requirement','SYS',0,NULL,NULL,NULL,'{658D44C8-CF68-4915-98D9-75AFFB240C0C}',NULL);
INSERT INTO t_stereotypes VALUES('ARCH','Requirement','ARCH',0,NULL,NULL,NULL,'{03248F08-3228-42e1-877D-5BAD8A68E4B9}',NULL);
CREATE TABLE t_taggedvalue
(
	PropertyID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	ElementID TEXT NULL COLLATE NOCASE,
	BaseClass TEXT NULL COLLATE NOCASE,
	TagValue TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_taggedvalue VALUES('{A27F1A9D-6BBA-49b0-A2DC-AD0FAF395D83}','{550F6A21-C8EC-496e-9090-AB9CEF63F2FB}','PACKAGE','LastImportFileDate',NULL);
INSERT INTO t_taggedvalue VALUES('{574DA75E-3FA2-435c-97D0-A30650CA08E8}','{5174722E-9461-46cf-819A-C37367850E8C}','PACKAGE','LastImportFileDate',NULL);
INSERT INTO t_taggedvalue VALUES('{D544CD22-3DF3-44e7-B443-6679BC74FD5C}','{561D3B21-487F-46ca-81A6-02EF79BF483B}','PACKAGE','LastImportFileDate','10/07/2022 10:10:22');
INSERT INTO t_taggedvalue VALUES('{856F0F3E-8145-43a2-8286-7471936AD834}','{DBA83A3D-2731-467f-8CDF-875D85877AB9}','PACKAGE','LastImportFileDate',NULL);
INSERT INTO t_taggedvalue VALUES('{9D8B46FE-A285-4255-A69B-219EA6F99AD4}','{A23778A1-A8AA-491c-BBED-95181C57FB99}','PACKAGE','LastImportFileDate',NULL);
INSERT INTO t_taggedvalue VALUES('{8F4D1DD6-2523-4cf1-B6F9-BA5A0ECF808B}','{89396D51-E49F-4067-9056-DE678528613D}','PACKAGE','LastImportFileDate',NULL);
INSERT INTO t_taggedvalue VALUES('{01DA601E-E971-4e24-8309-94D990382C7A}','{A73A195A-2585-4fda-BF62-CCF6ABEE490A}','PACKAGE','LastImportFileDate',NULL);
CREATE TABLE t_tasks
(
	TaskID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NULL COLLATE NOCASE,
	TaskType TEXT NULL COLLATE NOCASE,
	NOTES TEXT NULL COLLATE NOCASE,
	Priority TEXT NULL COLLATE NOCASE,
	Status TEXT NULL COLLATE NOCASE,
	Owner TEXT NULL COLLATE NOCASE,
	StartDate TEXT NULL COLLATE NOCASE,
	EndDate TEXT NULL COLLATE NOCASE,
	Phase TEXT NULL COLLATE NOCASE,
	History TEXT NULL COLLATE NOCASE,
	Percent INTEGER NULL,
	TotalTime INTEGER NULL,
	ActualTime INTEGER NULL,
	AssignedTo TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_tcf
(
	TCFID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Technical Factor Code
	Description TEXT NULL COLLATE NOCASE,	-- Description of TCF
	Weight REAL NULL DEFAULT 1,	-- Weighting
	Value REAL NULL DEFAULT 0,
	Notes TEXT NULL COLLATE NOCASE	-- Comment
);
INSERT INTO t_tcf VALUES('TCF01','Distributed System',2.0,5.0,'1');
INSERT INTO t_tcf VALUES('TCF02','Response or throughput performance objectives',1.0,4.0,'1');
INSERT INTO t_tcf VALUES('TCF03','End user efficiency (online)',1.0,2.0,'1');
INSERT INTO t_tcf VALUES('TCF04','Complex internal processing',1.0,4.0,'1');
INSERT INTO t_tcf VALUES('TCF05','Code must be re-usable',1.0,2.0,'1');
INSERT INTO t_tcf VALUES('TCF06','Easy to install',0.5,5.0,'1');
INSERT INTO t_tcf VALUES('TCF07','Easy to use',0.5,3.0,'1');
INSERT INTO t_tcf VALUES('TCF08','Portable',2.0,3.0,'1');
INSERT INTO t_tcf VALUES('TCF09','Easy to change',1.0,3.0,'1');
INSERT INTO t_tcf VALUES('TCF10','Concurrent',1.0,2.0,'1');
INSERT INTO t_tcf VALUES('TCF11','Includ special security features',1.0,2.0,'1');
INSERT INTO t_tcf VALUES('TCF12','Provide direct access for third parties',1.0,5.0,'1');
INSERT INTO t_tcf VALUES('TCF13','Special user training faciities are required',1.0,3.0,'1');
CREATE TABLE t_template
(
	TemplateID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	TemplateType TEXT NULL COLLATE NOCASE,
	TemplateName TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Style TEXT NULL COLLATE NOCASE,
	Template TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_testclass
(
	TestClass TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Description TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_testplans
(
	PlanID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Category TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	Author TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	TestPlan TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_testtypes
(
	TestType TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,	-- Test Type code
	Description TEXT NULL COLLATE NOCASE,
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE
);
INSERT INTO t_testtypes VALUES('Load','Performance under load',1.0,'Stress testing');
INSERT INTO t_testtypes VALUES('Regression','Regression Testing',1.0,'Regression');
INSERT INTO t_testtypes VALUES('Standard','Simple Test procedure',1.0,'Used to test basic path');
CREATE TABLE t_trxtypes
(
	Description TEXT NULL COLLATE NOCASE,	-- Description of transaction type
	NumericWeight REAL NULL DEFAULT 1,	-- Numeric factor to apply to metric - accepts decimal fractions
	Notes TEXT NULL COLLATE NOCASE,
	TRX TEXT NULL COLLATE NOCASE,
	TRX_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,	-- Transaction ID
	Style TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_umlpattern
(
	PatternID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	PatternCategory TEXT NULL COLLATE NOCASE,
	PatternName TEXT NULL COLLATE NOCASE,
	Style TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	PatternXML TEXT NULL COLLATE NOCASE,
	Version TEXT NULL COLLATE NOCASE
);
CREATE TABLE t_version
(
	ElementID TEXT NOT NULL COLLATE NOCASE,
	VersionID TEXT NOT NULL COLLATE NOCASE,
	ElementType TEXT NULL COLLATE NOCASE,
	Flags TEXT NULL COLLATE NOCASE,
	ExternalFile TEXT NULL COLLATE NOCASE,
	Notes TEXT NULL COLLATE NOCASE,
	Owner TEXT NULL COLLATE NOCASE,
	VersionDate TEXT NULL DEFAULT (datetime('now','localtime')) COLLATE NOCASE,
	Branch TEXT NULL COLLATE NOCASE,
	ElementXML TEXT NULL COLLATE NOCASE,
	CONSTRAINT pk_version PRIMARY KEY (ElementID,VersionID)
);
CREATE TABLE t_xref
(
	XrefID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Visibility TEXT NULL COLLATE NOCASE,
	Namespace TEXT NULL COLLATE NOCASE,
	Requirement TEXT NULL COLLATE NOCASE,
	'Constraint' TEXT NULL COLLATE NOCASE,
	Behavior TEXT NULL COLLATE NOCASE,
	'Partition' TEXT NULL COLLATE NOCASE,
	Description TEXT NULL COLLATE NOCASE,
	Client TEXT NULL COLLATE NOCASE,
	Supplier TEXT NULL COLLATE NOCASE,
	Link TEXT NULL COLLATE NOCASE
);
INSERT INTO t_xref VALUES('{1d116753-faf0-4f46-9813-f8b35a1ef8f6}','ProlaborateServerURL','ProlaborateServer',NULL,NULL,NULL,NULL,NULL,NULL,'<Configuration URL="llpcs.westeurope.cloudapp.azure.com" RepositoryGUID="1148e788-082f-4c8b-95f9-c7a27f74dcdf" Protocol="http://" ShowSummaryWindow="False" client_id="ProlaborateAddin" client_secret="vty4yKmn8jZY9aczj5sfTHqCraXhv2poRha9DPHX" /><Discussion Low = *False* Medium = *False* High = *False* Open = *False* Closed = *False* ShowDiscussionsOnDiagram = *False*/>',NULL,NULL,NULL);
INSERT INTO t_xref VALUES('{C2B812B0-EB67-46a8-9CD1-EFAEA5D6DD92}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{1039802A-673D-4a2b-A9A0-C8246DBEBDA7}','<none>',NULL);
INSERT INTO t_xref VALUES('{208D9977-FDB1-4c9c-9F06-24C33FE57E45}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{3B30D2D1-BC93-4466-98D1-2698BBE7C938}','<none>',NULL);
INSERT INTO t_xref VALUES('{90821309-893F-4cbb-8293-5FC002EE07CF}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{486E39B5-2A01-4d32-ADD5-8B621B57125F}','<none>',NULL);
INSERT INTO t_xref VALUES('{036EA909-690C-40e0-8F2A-49E731003CFA}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{C6F55942-5FAF-44ce-9EF9-E36D305E11F4}','<none>',NULL);
INSERT INTO t_xref VALUES('{DAECA3EB-446E-4efe-920F-A89A058652EA}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{572C7CCB-8447-455e-843C-44653181BEB1}','<none>',NULL);
INSERT INTO t_xref VALUES('{BDC0F9F9-658C-4c78-8EF4-EDF78D67503D}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{A5F15A7F-576F-415f-80DB-8B699D5303F7}','<none>',NULL);
INSERT INTO t_xref VALUES('{966E5641-2E79-407d-82F5-70AA751F6F42}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{654E2AF2-B21A-4e6d-A903-1F2318299491}','<none>',NULL);
INSERT INTO t_xref VALUES('{75B0AA32-ACDD-4532-AC4F-1F4F3BE0AD94}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{0A9D1378-4F60-4f3b-BFD3-441CD165F0C8}','<none>',NULL);
INSERT INTO t_xref VALUES('{CC6B71FE-9DDA-433e-A790-C042BB8A91B6}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{1E2E7B1F-E2CB-4251-8432-610D88B19AC6}','<none>',NULL);
INSERT INTO t_xref VALUES('{C47BFA0D-AD95-4895-9A50-B13AEA16A054}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{1EFD1AA4-7513-468a-A1DE-9282E6B7E31D}','<none>',NULL);
INSERT INTO t_xref VALUES('{517DA6E4-B470-4d8c-99D4-FB16380C16E5}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{F094E5C3-68CC-4b26-92FA-27E0F1A930F4}','<none>',NULL);
INSERT INTO t_xref VALUES('{F9231DC8-582A-4e42-B197-E087C327C10D}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{80F5312B-4CB3-430a-BCA2-564220675181}','<none>',NULL);
INSERT INTO t_xref VALUES('{B1831279-9320-417f-9208-6CD010171D87}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{41B789E7-A1AA-4814-BB2F-639FB778FD62}','<none>',NULL);
INSERT INTO t_xref VALUES('{4F77BB7C-1A58-4654-9CD0-E65FC5E4888C}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{88FFD86F-E23B-45a4-A1BF-9051659E77C3}','<none>',NULL);
INSERT INTO t_xref VALUES('{BFDE9F36-DAE5-48c7-AF51-C9C3E2A02725}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{8CF4AAF0-9BF7-4b81-8227-4CCE50C1C6BF}','<none>',NULL);
INSERT INTO t_xref VALUES('{D19F3308-F5BA-44e1-B677-A5482F9EE562}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{7374134D-3862-4866-8354-3045BABB7DDC}','<none>',NULL);
INSERT INTO t_xref VALUES('{4F4C1A77-4DFB-4e3f-A002-7662439AB42F}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{2CDC5992-D8D1-4b5a-A87B-8698C5B7510A}','<none>',NULL);
INSERT INTO t_xref VALUES('{3D9F0DC9-C7B8-4ed5-B4B0-A470573D7267}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{C35F024F-AFA5-414c-BC28-447170B50D71}','<none>',NULL);
INSERT INTO t_xref VALUES('{F2B4BFEF-868B-47e8-B32D-A48849D9FC2D}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{D3F982C7-AD00-4501-BCAA-250F0C6DEC41}','<none>',NULL);
INSERT INTO t_xref VALUES('{36373FF9-6D5B-4955-8A2B-A02B761A7A8B}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{7382CEF9-0AEC-4761-8B44-B73CC763F7A3}','<none>',NULL);
INSERT INTO t_xref VALUES('{02E05ACB-929A-4f3f-B363-97C95518CE81}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{E226DADE-7775-4810-B0B3-B92281637941}',NULL,NULL);
INSERT INTO t_xref VALUES('{6E7A8863-63C2-4e6b-A972-CAC372702829}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=1;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=0;bold=false;fcol=0;tcol=12370374;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{30A8AA95-7198-49b3-B01B-F3F9BEA0173C}',NULL,NULL);
INSERT INTO t_xref VALUES('{27926675-4954-43da-9AAE-6AA0CA517B25}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{4A463400-CCA9-403c-BF13-130C9877FC56}','<none>',NULL);
INSERT INTO t_xref VALUES('{0EF648C3-BF0E-4a0b-AA54-4FE15AF5046F}','MOFProps','connector property','Public',NULL,NULL,NULL,'extensionLocation','0','-1;0;0','{3537D88D-288D-4b31-BF5C-0D98E7A68B1E}','<none>',NULL);
INSERT INTO t_xref VALUES('{400C195C-DCE7-4c08-B25C-7938E4EE8401}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{281ECBA6-627C-436f-BDEC-9CAE3030B744}',NULL,NULL);
INSERT INTO t_xref VALUES('{847F6F80-8B10-4d33-880D-070C9C9D40E5}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{FED5756D-E548-48ad-809B-7252829C35D3}','<none>',NULL);
INSERT INTO t_xref VALUES('{E598D594-A494-41b9-9016-DC14A11726C0}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.1::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{023D17E4-F907-43c2-8F21-E24BF4B2AD48}','<none>',NULL);
INSERT INTO t_xref VALUES('{85FB28C6-8D98-4e46-9346-9A50BFB914C4}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{6961D52D-64E2-446a-9314-C5B1BF9CE4F6}','{5728E050-D144-4b0b-BEAC-3283D1ACF343}',NULL);
INSERT INTO t_xref VALUES('{3AA228AB-1E6F-4207-A01B-795FF3BFF8F7}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{88BCD405-A82E-44d8-B3FA-8914C2CF557F}','<none>',NULL);
INSERT INTO t_xref VALUES('{B0755DAD-FD7D-4179-BC18-B41A54E70A20}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{6CB1935B-F7CD-4729-8B03-741EF72A6F7D}','<none>',NULL);
INSERT INTO t_xref VALUES('{45A63EB9-6EB7-46e6-86FC-5159ED0FC3F4}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{5545D653-46C3-4fc0-8F21-3A9392F98D01}','{B39FD505-0BF6-47da-B6CB-9A747A4835BE}',NULL);
INSERT INTO t_xref VALUES('{54F6AF35-9551-4d37-B77B-82ECAC8D4611}','DefaultDiagram','element property','Public',NULL,NULL,NULL,NULL,'0',NULL,'{FED5756D-E548-48ad-809B-7252829C35D3}','{3A74187E-2C2F-4dd4-B701-E2521EB26A36}',NULL);
INSERT INTO t_xref VALUES('{56FB99EB-8C1E-4b28-9DFA-85D909D7B7CC}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{3A74187E-2C2F-4dd4-B701-E2521EB26A36}',NULL,NULL);
INSERT INTO t_xref VALUES('{21409A35-AEBB-43d8-94A0-887DD69F5E73}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{BE9557DD-906A-408a-A872-2C64C1DF1253}','<none>',NULL);
INSERT INTO t_xref VALUES('{C296D0F8-ABC2-49f8-B303-F20F4BEC9611}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{4A452622-4601-44fe-BDA5-56338080B85F}','{B51A5802-8F86-410a-B4E1-5576885BD3EB}',NULL);
INSERT INTO t_xref VALUES('{2EBCC01D-488B-4f0a-8339-B82E9664D114}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{0DA3AF90-426B-4f95-9589-380171E8ACD7}','{43F94CEE-783A-4fc4-BC86-65FEFE282066}',NULL);
INSERT INTO t_xref VALUES('{7CC06EA1-93A8-4640-9ABC-B45DA9A3160D}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{B38BB303-1A84-4fe2-AC44-7C6C61EA796C}','{F7E54EAF-E8C2-41f5-8E4A-97097A3604FB}',NULL);
INSERT INTO t_xref VALUES('{9FF85327-FC23-4e5d-9635-4B9423864914}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{8C2FFCBD-DC9E-4cc9-8EE2-49067A15CD3C}','{20CE0FA4-E86E-4073-8E54-BD777EC13C87}',NULL);
INSERT INTO t_xref VALUES('{303A5D94-2D63-41b7-A079-EF75C9468933}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{76558EE7-1494-47d6-9D4B-A45CE3231F7D}','<none>',NULL);
INSERT INTO t_xref VALUES('{22990321-2DAC-48b6-BC97-8142BB7A565F}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{85F962D5-6453-4f26-AF6A-2067C6D31FCD}','<none>',NULL);
INSERT INTO t_xref VALUES('{8BA3A9D9-4B94-4dcd-9371-86150168D07F}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{4E6EA462-3F9C-42c5-942B-03DF48C34846}','<none>',NULL);
INSERT INTO t_xref VALUES('{CF7A9839-08F0-4ce5-9595-4EF6A1143E4A}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{91D06922-76DD-4756-85C4-FAF4A50518F2}','<none>',NULL);
INSERT INTO t_xref VALUES('{157AE381-E341-431e-A51A-D00169325E0D}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{571EB965-0438-470b-A314-5832B3A75D84}','<none>',NULL);
INSERT INTO t_xref VALUES('{5F05CC5B-B010-4c10-84EE-A979FF02E4E6}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{9503D238-8EDD-4368-898B-78300D3CAEDF}','{00D93178-A94C-42e1-8C15-22B663D86ED7}',NULL);
INSERT INTO t_xref VALUES('{98567E5D-0936-4cb4-A0BC-45F3DD19F5EF}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{B935B105-9442-4700-BA2B-3B0AB0601E85}','{CAF8E858-BF84-43a1-9D39-528A6893C772}',NULL);
INSERT INTO t_xref VALUES('{B212B2C2-DC5E-42f1-8A78-6E88D14BACC4}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{12510C7C-0FA6-4c67-9F55-7FE72B287E6D}','{943716DA-4602-4b40-AB0C-AE2CBA8DDF92}',NULL);
INSERT INTO t_xref VALUES('{103EEB45-F646-42ae-B046-49B4733BC311}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{4259BBC3-3C39-4d9e-BFD4-E35894CDBE52}','<none>',NULL);
INSERT INTO t_xref VALUES('{29558A7C-FED4-4437-BBAB-BA9773A90994}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=isReference@ENDNAME;@TYPE=boolean@ENDTYPE;@VALU=0@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{DF5F8647-D4D5-4d85-9088-AD04097DA47C}','<none>',NULL);
INSERT INTO t_xref VALUES('{757D9195-2B94-423d-AD1F-1E3A3485192F}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-10,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{BD0B2F44-586C-4906-9500-F45C24ED0E49}',NULL,NULL);
INSERT INTO t_xref VALUES('{086b5dc1-dbee-c36a-3c20-c49267b5ae94}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{3AC8AB61-E8D0-4a11-8D19-C1A5C0CE7B2E}','<none>',NULL);
INSERT INTO t_xref VALUES('{9f495399-703d-9e38-6189-4dcc84300c2f}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{2A72CE0F-03EC-4de4-857C-21BE46845E70}','{B9B478CF-30C3-4d51-AACC-9FD34A673173}',NULL);
INSERT INTO t_xref VALUES('{b1e5bbce-d487-c3eb-e0be-52116feb251f}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_defaultDiagramType@ENDNAME;@TYPE=string@ENDTYPE;@VALU=SysML1.4::InternalBlock@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{4FBD0E7C-2883-4ad6-A3B4-49FF1F7C48DD}','<none>',NULL);
INSERT INTO t_xref VALUES('{01bfdf48-787a-809b-4ac2-889a2843d74b}','CustomProperties','element property','Public',NULL,NULL,NULL,NULL,'0','@PROP=@NAME=_connectorRef@ENDNAME;@TYPE=string@ENDTYPE;@VALU=<SOURCE>@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=aggregation@ENDNAME;@TYPE=AggregationKind@ENDTYPE;@VALU=none@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;@PROP=@NAME=default@ENDNAME;@TYPE=String@ENDTYPE;@VALU=@ENDVALU;@PRMT=@ENDPRMT;@ENDPROP;','{20EAE8D0-9071-4d0d-8CBC-763C528D748C}','{C9C0BEE1-95AD-4d53-BD2F-7BE816C04FD0}',NULL);
INSERT INTO t_xref VALUES('{7526BD71-C276-4e75-B2A2-D905B114AF77}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{57A1E586-6578-4031-A590-A2918DFBAC3C}',NULL,NULL);
INSERT INTO t_xref VALUES('{522BF19D-2FB3-47bc-B089-226C9CB5D17D}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-16,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{D0BC5BD0-BFF3-4821-B8A6-F42C0B6E8F82}',NULL,NULL);
INSERT INTO t_xref VALUES('{BD47DA78-2BE7-41bf-B6D5-FDB0F308EBF9}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Configuration;GUID={5ffeebba-abc5-e0f4-3ea2-cd01e58c0147};@ENDSTEREO;','{f753cac4-e9bd-4a77-a844-66a0d822b092}','<none>',NULL);
INSERT INTO t_xref VALUES('{31415D22-6776-4743-81B0-584CDD87A8C1}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{FED5756D-E548-48ad-809B-7252829C35D3}','<none>',NULL);
INSERT INTO t_xref VALUES('{76C3A810-8DF1-4b7a-8640-FB810CFED141}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{023D17E4-F907-43c2-8F21-E24BF4B2AD48}','<none>',NULL);
INSERT INTO t_xref VALUES('{AEC6FE3B-0170-41b5-AA91-B578B2A2A193}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{88BCD405-A82E-44d8-B3FA-8914C2CF557F}','<none>',NULL);
INSERT INTO t_xref VALUES('{625B6F4F-88DE-4243-A686-4FF38FE120EF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{6CB1935B-F7CD-4729-8B03-741EF72A6F7D}','<none>',NULL);
INSERT INTO t_xref VALUES('{CC47E7B1-64B3-46be-89D3-FF7EE1EABF07}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{BE9557DD-906A-408a-A872-2C64C1DF1253}','<none>',NULL);
INSERT INTO t_xref VALUES('{D979A1A9-EF3F-45c3-9A59-EF41ACCDCC86}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec;GUID={ca9963d3-753c-6215-6037-19b8d39a1232};@ENDSTEREO;','{65460cc6-e2e4-64a5-f6dc-38ad4481a7e9}','<none>',NULL);
INSERT INTO t_xref VALUES('{D6D4CFE2-89D4-4b34-9A12-BE6E667E8983}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Model Dependency;GUID={e84eb4c8-5415-e9e8-fcdd-096713c4d576};@ENDSTEREO;','{8bab8a9f-e100-b248-7506-ebc331e2cec1}','<none>',NULL);
INSERT INTO t_xref VALUES('{82022F29-5118-4818-B90F-C852CB4330C5}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec Metadata;GUID={a81560c2-4888-7147-a2a7-90e3a8ec934d};@ENDSTEREO;','{d94b5d49-9e70-a013-604e-c262b883b42b}','<none>',NULL);
INSERT INTO t_xref VALUES('{54C3509C-0F23-4cc9-B42F-39F6E641B8B6}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{571EB965-0438-470b-A314-5832B3A75D84}','<none>',NULL);
INSERT INTO t_xref VALUES('{CCE54DB0-56F8-4015-9A0E-A929137ABF8A}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Dependency;GUID={98bced8a-4176-3865-4070-c9a60e1a9b1c};@ENDSTEREO;','{4528f0b7-fa9c-999e-87dc-2cc021fdb5e8}','<none>',NULL);
INSERT INTO t_xref VALUES('{6AB3617E-D445-47c1-A960-E72214AB4D2E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec;GUID={ca9963d3-753c-6215-6037-19b8d39a1232};@ENDSTEREO;','{82789660-0f01-66a1-4553-5f09bb604a78}','<none>',NULL);
INSERT INTO t_xref VALUES('{09ADFF55-51F7-4e99-9275-47965F8BA82D}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Model Dependency;GUID={e84eb4c8-5415-e9e8-fcdd-096713c4d576};@ENDSTEREO;','{fb805dc7-8b06-c725-518e-23a3e8958a78}','<none>',NULL);
INSERT INTO t_xref VALUES('{A66F0230-4127-4660-82CB-B79DCAC57479}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Dependency;GUID={98bced8a-4176-3865-4070-c9a60e1a9b1c};@ENDSTEREO;','{d61c7ca4-0b5e-dfbf-8624-758fa589a8f3}','<none>',NULL);
INSERT INTO t_xref VALUES('{5F0DD13D-F63D-4cb5-87D5-0C47F3E2EAE8}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec Metadata;GUID={a81560c2-4888-7147-a2a7-90e3a8ec934d};@ENDSTEREO;','{87d30233-3ba7-38b2-bd07-8c72a81e998f}','<none>',NULL);
INSERT INTO t_xref VALUES('{C2421E50-1D54-41e6-A57B-A230AE7FC4D9}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec;GUID={ca9963d3-753c-6215-6037-19b8d39a1232};@ENDSTEREO;','{85cee827-0063-a24a-2b72-8c03835841cb}','<none>',NULL);
INSERT INTO t_xref VALUES('{E455E775-7CB4-41aa-ABE0-3CE734029AB1}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec Metadata;GUID={a81560c2-4888-7147-a2a7-90e3a8ec934d};@ENDSTEREO;','{095fff78-53e1-a470-71b6-8fd1f254c7fd}','<none>',NULL);
INSERT INTO t_xref VALUES('{F920C668-BA94-4fae-84C9-163EE72DF343}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Model Dependency;GUID={e84eb4c8-5415-e9e8-fcdd-096713c4d576};@ENDSTEREO;','{66f76c4f-27e9-5320-fa09-c723ea101a74}','<none>',NULL);
INSERT INTO t_xref VALUES('{18D98F8C-02FB-4c9d-8DA1-C834966E1D3B}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec;GUID={ca9963d3-753c-6215-6037-19b8d39a1232};@ENDSTEREO;','{38a81e41-5f41-23f7-230e-8824931a9982}','<none>',NULL);
INSERT INTO t_xref VALUES('{720F7E36-9858-443e-9DD6-189F6E7CDFFF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec Metadata;GUID={a81560c2-4888-7147-a2a7-90e3a8ec934d};@ENDSTEREO;','{5c17c1c3-6e81-0007-d70a-48f83545886a}','<none>',NULL);
INSERT INTO t_xref VALUES('{B10AFFBF-D255-4d7f-A56F-E419A7EBC81C}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Model Dependency;GUID={e84eb4c8-5415-e9e8-fcdd-096713c4d576};@ENDSTEREO;','{d30e0c91-a973-a2ca-c79b-851036a9a206}','<none>',NULL);
INSERT INTO t_xref VALUES('{8BE49E95-3717-48f8-8BA3-9AC9A51FCCD5}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{3AC8AB61-E8D0-4a11-8D19-C1A5C0CE7B2E}','<none>',NULL);
INSERT INTO t_xref VALUES('{6F8D4F5D-AC08-4edf-BE27-61192E2746B3}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=block;FQName=SysML1.1::block;@ENDSTEREO;','{4FBD0E7C-2883-4ad6-A3B4-49FF1F7C48DD}','<none>',NULL);
INSERT INTO t_xref VALUES('{EE3647E1-9602-48e8-A65F-CF3954E0C75E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=Project;GUID={ECB0E83D-1648-4314-96C1-2D7834822FDC};@ENDSTEREO;','{B08ECE39-3D2C-433f-8960-F5E8F44D07C3}','<none>',NULL);
INSERT INTO t_xref VALUES('{DDC93A63-0EEF-4562-9E07-9AFBBD61154E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{d4cd2d58-3526-7ce4-4f5c-9665f874e304}','<none>',NULL);
INSERT INTO t_xref VALUES('{14DEFA21-507F-4cd8-A052-F744D4B95B10}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{8f010db8-3261-8e41-d6a1-06ddaeabca9c}','<none>',NULL);
INSERT INTO t_xref VALUES('{6C741A25-D5C4-4597-862B-B7CED4886CFF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{74f865c3-6dde-ddde-1617-cb721796fd44}','<none>',NULL);
INSERT INTO t_xref VALUES('{2E299891-E14D-40ca-96E4-F0627FDAB3BB}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{403d091c-262a-4841-1051-546b2023d7fc}','<none>',NULL);
INSERT INTO t_xref VALUES('{05FDD8DB-8738-4ab0-A041-87AA7D190963}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{7feb9f4a-dbcc-d777-a364-2f1b38f82c03}','<none>',NULL);
INSERT INTO t_xref VALUES('{C716300C-C54F-4b73-9809-F760EACABB84}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{a1557144-39c8-1a49-a269-fd608b5b3a91}','<none>',NULL);
INSERT INTO t_xref VALUES('{ACDA5BEB-A7FA-4450-863C-25FF95C1A7B9}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{4c79d980-3bd8-92ba-aa25-a66112801b61}','<none>',NULL);
INSERT INTO t_xref VALUES('{05346376-B6F2-4fe8-A6A7-F228604B9627}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=CMP;GUID={325B342D-709C-49b5-A12D-D7288741FEF2};@ENDSTEREO;','{96285456-a8a3-1dbb-cabb-19b5f0993155}','<none>',NULL);
INSERT INTO t_xref VALUES('{28695E52-888B-403b-890D-DCE297AC4C64}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{4313a910-ea89-9c52-cf2a-cea9dceaa05e}','<none>',NULL);
INSERT INTO t_xref VALUES('{449D9B1D-8ACD-42ce-BC8F-6B9E83929CE1}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{b1996dc4-444c-4edf-acd3-c13dbaad3c4b}','<none>',NULL);
INSERT INTO t_xref VALUES('{E9A5E94C-FA1F-434b-AEB6-9EA1CEBDE07C}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{fdbb311b-993d-49f3-f89e-be4268cd766e}','<none>',NULL);
INSERT INTO t_xref VALUES('{F102FF7B-F220-43b3-B05E-B23BE0C6FAED}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{c43a6c49-5576-2d3f-a8d8-cf5749092d02}','<none>',NULL);
INSERT INTO t_xref VALUES('{5F4A7F15-97CE-4e7f-BCCC-3B4B0FD18440}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{f6b570e4-946a-928d-7e7e-2c7bfd0a904a}','<none>',NULL);
INSERT INTO t_xref VALUES('{F6AE53D6-1128-4242-9F2F-EF4E5E018CE5}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{a2a29df1-52a4-f4b2-d989-5eebda30f3af}','<none>',NULL);
INSERT INTO t_xref VALUES('{A90A784F-4CAC-409f-B952-F71B714C0EEF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{210e2ee0-4a13-3243-1a51-d679bbe7ee10}','<none>',NULL);
INSERT INTO t_xref VALUES('{8FF6CD95-053F-4e6b-A991-FE89C19E8254}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{3523213a-2193-8def-a717-f761624fad8e}','<none>',NULL);
INSERT INTO t_xref VALUES('{6B1DB283-9ADB-4ed4-ACB5-B16AF821CDC0}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{494e3170-0c78-1daa-2468-bff4163c02a4}','<none>',NULL);
INSERT INTO t_xref VALUES('{94A84F6A-F5E0-4c94-92D5-38C469530A0F}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{53552ea6-2a46-2a9d-5f22-e8cb7e51e1f2}','<none>',NULL);
INSERT INTO t_xref VALUES('{347065F6-24CE-4479-8943-D85C2136411F}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{66bc4614-4a7e-c534-27fa-e8262afa1c8c}','<none>',NULL);
INSERT INTO t_xref VALUES('{F59561FB-1EEF-4b64-B183-9AAD4DE24B5C}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{7082c07b-fb71-bf57-682b-41840489c4ab}','<none>',NULL);
INSERT INTO t_xref VALUES('{47B90D86-5203-4911-9021-111CA688E458}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SET;GUID={424695B0-7C2A-4c4a-8A14-B29C21D16A40};@ENDSTEREO;','{427a365c-7dda-3f88-8516-8969fc1b2f8b}','<none>',NULL);
INSERT INTO t_xref VALUES('{0CB7438E-2DB8-40b1-86A5-A434824406EF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=FLD;GUID={33984859-93E8-441b-B8E1-9DA43FFD6B69};@ENDSTEREO;','{418e41da-c8f2-1dfd-2cdc-a5ca91ff1bec}','<none>',NULL);
INSERT INTO t_xref VALUES('{60D39844-A707-488f-ABAC-6D892CBEC8B4}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=FLD;GUID={33984859-93E8-441b-B8E1-9DA43FFD6B69};@ENDSTEREO;','{7546b482-3d35-4dd0-53be-2de1478ffce6}','<none>',NULL);
INSERT INTO t_xref VALUES('{1175F598-FFBF-4c86-9910-054D4491CE4B}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{c8e3d602-944c-a537-fb6f-b632c33c1ecb}','<none>',NULL);
INSERT INTO t_xref VALUES('{E110AB9B-5CDB-4e70-A2BD-DA6AB7A0250C}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=STK;GUID={4F2429B5-A01A-4ccc-883F-AE80640DAEB4};@ENDSTEREO;','{f345c23c-00df-c0f3-3fa2-30c5a065afa1}','<none>',NULL);
INSERT INTO t_xref VALUES('{11817633-1E50-4cbb-9A83-77DC8DF70DDB}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{7ab9ed9e-30a0-000b-2d25-692fcfb28eef}','<none>',NULL);
INSERT INTO t_xref VALUES('{814544BE-36E8-40e1-8FF0-8800C8773842}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{5716373c-4b9a-00e2-8c1c-59e35436b73b}','<none>',NULL);
INSERT INTO t_xref VALUES('{C339A0FA-021A-4fc4-BE54-DFACEAC24C3E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{b78080bc-53b5-4fe2-523f-421e1f1d913f}','<none>',NULL);
INSERT INTO t_xref VALUES('{61D6CE20-DD2C-4bed-8565-EFCFFE09B926}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=FLD;GUID={33984859-93E8-441b-B8E1-9DA43FFD6B69};@ENDSTEREO;','{b0cd4ea7-0928-328c-9498-686e6e55da34}','<none>',NULL);
INSERT INTO t_xref VALUES('{A4D34076-5F16-4180-9629-DD5A1F6EA795}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{17c1e2da-11e3-09ab-4cad-8049f4d7d9da}','<none>',NULL);
INSERT INTO t_xref VALUES('{F8CCDC18-CFC5-4165-A886-18990816D0FC}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{99dcf550-6808-9dd4-0393-2222e0471d00}','<none>',NULL);
INSERT INTO t_xref VALUES('{0207F5ED-6948-4c6d-9FD3-DEA088191015}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{0eb5eebf-febd-e1e1-f34f-9d663f7002a0}','<none>',NULL);
INSERT INTO t_xref VALUES('{3070F9B7-CEC4-4c61-BB41-125D14200B20}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{04d2235c-126a-613b-162d-3a423cb109c1}','<none>',NULL);
INSERT INTO t_xref VALUES('{D72563B3-6F95-41bc-851C-5BC766A5677E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{4db2efee-f956-3607-2278-b9f97c1bbfd9}','<none>',NULL);
INSERT INTO t_xref VALUES('{DCF157A9-B4A7-4123-8E64-61B57402EA27}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{be02e17c-92c8-66a2-501d-b99a127ea55a}','<none>',NULL);
INSERT INTO t_xref VALUES('{C905185B-56C3-4c92-96C7-9820175C0FEF}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{af9f56c3-1346-c026-ee20-6a036017eec0}','<none>',NULL);
INSERT INTO t_xref VALUES('{A42EC723-0E56-4226-91F9-0CA041B872FE}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{f51194c4-7cb9-3a93-98fd-892d4dec639b}','<none>',NULL);
INSERT INTO t_xref VALUES('{D2A7E30C-8EBE-4049-9805-A24CA78CFF46}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{459c8bef-a73d-c1f8-63ff-563139bb3746}','<none>',NULL);
INSERT INTO t_xref VALUES('{95E060AA-D218-4889-AF3F-EA044F1D7E65}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{431292bd-4caa-0423-71f2-221d98e53521}','<none>',NULL);
INSERT INTO t_xref VALUES('{95CB8ACC-54A9-4311-A721-89EE2945910F}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{e605b2a2-dd06-e17a-8826-f17d87035533}','<none>',NULL);
INSERT INTO t_xref VALUES('{7BD5C9C6-81CF-4b63-A9A3-79133EF3A269}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{02f6aa42-f346-af50-5fed-79ccff474b5f}','<none>',NULL);
INSERT INTO t_xref VALUES('{AD0328F1-1F07-43cb-90F6-46F27775D00E}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{1fb96379-dbbd-f4e3-58c9-3f6ef0b03e0f}','<none>',NULL);
INSERT INTO t_xref VALUES('{ABF16F89-8EE7-4455-82F7-F0C31529B9F4}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{47b2ab3b-b047-9e85-65eb-5e98e9ba72b8}','<none>',NULL);
INSERT INTO t_xref VALUES('{7E27F7DF-3280-4aa6-B4AA-ED2702FB3CC8}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{1cf7e07e-5b80-0ec8-5995-674436122ee8}','<none>',NULL);
INSERT INTO t_xref VALUES('{B0BDD88A-3EBA-4de9-A7FF-94B3AE20F07D}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=FLD;GUID={33984859-93E8-441b-B8E1-9DA43FFD6B69};@ENDSTEREO;','{c988efff-4ab8-1038-3dbc-c78c97de3031}','<none>',NULL);
INSERT INTO t_xref VALUES('{F542EBFB-7B0C-4f76-A8A3-EB51604940DB}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=FLD;GUID={33984859-93E8-441b-B8E1-9DA43FFD6B69};@ENDSTEREO;','{7d2eb185-7360-9ffc-c736-dac12c16c282}','<none>',NULL);
INSERT INTO t_xref VALUES('{664DCD1F-C712-4f58-9669-90F3A40A97A5}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{ad8a2aa0-82bb-30da-3053-e70be7b235e0}','<none>',NULL);
INSERT INTO t_xref VALUES('{C19B4414-C889-4f4a-B766-63CFD20026B8}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=SYS;GUID={658D44C8-CF68-4915-98D9-75AFFB240C0C};@ENDSTEREO;','{37282c81-c296-0bbf-14a7-a3268dc50839}','<none>',NULL);
INSERT INTO t_xref VALUES('{BA71BC01-E9AA-4ab3-A07E-D9DB69C38339}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{99907b3c-a012-6468-3c14-c4dc6419592f}','<none>',NULL);
INSERT INTO t_xref VALUES('{536EDD4F-9D7D-4961-956D-FD248063B2CB}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=TXT;GUID={8FEB5753-6544-4493-8320-12D7AA642795};@ENDSTEREO;','{771ad3ba-3dfd-d8c6-3ef3-1cfbf95847b2}','<none>',NULL);
INSERT INTO t_xref VALUES('{08B1FF84-4F59-47a3-BAC6-762B8B30F0FB}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=ARCH;GUID={03248F08-3228-42e1-877D-5BAD8A68E4B9};@ENDSTEREO;','{2d63b543-1b9c-dda1-a316-48e8908aa57f}','<none>',NULL);
INSERT INTO t_xref VALUES('{A7826C9E-0D64-422b-AEA6-8CAD3F516D67}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=STK;GUID={4F2429B5-A01A-4ccc-883F-AE80640DAEB4};@ENDSTEREO;','{bf8d6f36-84b9-387d-3135-d2bb7c43e287}','<none>',NULL);
INSERT INTO t_xref VALUES('{97F0C1F4-433D-45c8-8FAB-2CC0B4430FE8}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=ARCH;GUID={03248F08-3228-42e1-877D-5BAD8A68E4B9};@ENDSTEREO;','{fb89ed55-30d4-3ede-9dd5-a58fb23acfe8}','<none>',NULL);
INSERT INTO t_xref VALUES('{D0025BCA-9D18-4035-B04D-0222EC4CED73}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=ARCH;GUID={03248F08-3228-42e1-877D-5BAD8A68E4B9};@ENDSTEREO;','{50e8834d-3959-c17d-9833-cfe18abaa070}','<none>',NULL);
INSERT INTO t_xref VALUES('{776226E0-E5BC-4966-AF47-8FB6BD50DE08}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=ARCH;GUID={03248F08-3228-42e1-877D-5BAD8A68E4B9};@ENDSTEREO;','{8c0d21c9-fadd-a9ff-95f2-bedb27ef7a6f}','<none>',NULL);
INSERT INTO t_xref VALUES('{C585A44C-B4E9-468e-A93D-BF16CFB06ABA}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=ModelView;FQName=EAUML::ModelView;@ENDSTEREO;','{D8B44F85-AEA2-437c-B122-BFB22CEED5AF}','<none>',NULL);
INSERT INTO t_xref VALUES('{5504ACE9-BF57-4317-A956-0B9AAA584A9F}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{1039802A-673D-4a2b-A9A0-C8246DBEBDA7}','<none>',NULL);
INSERT INTO t_xref VALUES('{ED232F37-D6B2-485e-B692-D9B8D8C5F561}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{3B30D2D1-BC93-4466-98D1-2698BBE7C938}','<none>',NULL);
INSERT INTO t_xref VALUES('{82443753-3E11-44b9-83C6-832D1E199092}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{486E39B5-2A01-4d32-ADD5-8B621B57125F}','<none>',NULL);
INSERT INTO t_xref VALUES('{4083171B-FC79-47e4-B015-919EC65C69FD}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{4A463400-CCA9-403c-BF13-130C9877FC56}','<none>',NULL);
INSERT INTO t_xref VALUES('{F7BCB066-5BD3-4579-B0E1-B446590B61C1}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{C6F55942-5FAF-44ce-9EF9-E36D305E11F4}','<none>',NULL);
INSERT INTO t_xref VALUES('{F8835840-7622-4467-9E82-BEA2CD981B72}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{572C7CCB-8447-455e-843C-44653181BEB1}','<none>',NULL);
INSERT INTO t_xref VALUES('{3B92A3C2-9928-48fc-AA1C-3E04C29F2436}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{A5F15A7F-576F-415f-80DB-8B699D5303F7}','<none>',NULL);
INSERT INTO t_xref VALUES('{09F574B5-3E57-4f79-9CA3-715DF483B77F}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{654E2AF2-B21A-4e6d-A903-1F2318299491}','<none>',NULL);
INSERT INTO t_xref VALUES('{85B0136F-9890-4e9d-B968-60235D22A6C0}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{0A9D1378-4F60-4f3b-BFD3-441CD165F0C8}','<none>',NULL);
INSERT INTO t_xref VALUES('{BD2E942E-1F84-4653-A289-F2D717B80C0C}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{1E2E7B1F-E2CB-4251-8432-610D88B19AC6}','<none>',NULL);
INSERT INTO t_xref VALUES('{33A77997-38EA-4bc6-B145-15355B517807}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{1EFD1AA4-7513-468a-A1DE-9282E6B7E31D}','<none>',NULL);
INSERT INTO t_xref VALUES('{C11D8855-B84C-4c08-8B10-C9F5F3F4E648}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{F094E5C3-68CC-4b26-92FA-27E0F1A930F4}','<none>',NULL);
INSERT INTO t_xref VALUES('{B7E93401-D3D7-46cf-B917-42A0FDC12878}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{80F5312B-4CB3-430a-BCA2-564220675181}','<none>',NULL);
INSERT INTO t_xref VALUES('{C8D33E9F-786C-40e3-8C03-8934519299F3}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{41B789E7-A1AA-4814-BB2F-639FB778FD62}','<none>',NULL);
INSERT INTO t_xref VALUES('{FC0162E7-9A29-4854-9562-E72834862C63}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{88FFD86F-E23B-45a4-A1BF-9051659E77C3}','<none>',NULL);
INSERT INTO t_xref VALUES('{D5FB33AD-D023-4233-AE8F-4FB0E598DB8F}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{8CF4AAF0-9BF7-4b81-8227-4CCE50C1C6BF}','<none>',NULL);
INSERT INTO t_xref VALUES('{4AD7F5F0-3469-4bce-8D41-C43C21A38A88}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{7374134D-3862-4866-8354-3045BABB7DDC}','<none>',NULL);
INSERT INTO t_xref VALUES('{CF3E6697-1EA4-470e-A457-3A47059CB80F}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{2CDC5992-D8D1-4b5a-A87B-8698C5B7510A}','<none>',NULL);
INSERT INTO t_xref VALUES('{37B04EEB-F40D-4026-AB34-C5BDBEB396D3}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{C35F024F-AFA5-414c-BC28-447170B50D71}','<none>',NULL);
INSERT INTO t_xref VALUES('{C7BC5584-2D45-40ba-8CF4-450A208398E5}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{3537D88D-288D-4b31-BF5C-0D98E7A68B1E}','<none>',NULL);
INSERT INTO t_xref VALUES('{B36661F2-7BD2-4fbc-B838-F190295FEA8C}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{D3F982C7-AD00-4501-BCAA-250F0C6DEC41}','<none>',NULL);
INSERT INTO t_xref VALUES('{3F5D0977-873D-45ad-8DE3-F75ED1B7CFFA}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=extend;GUID={5373558A-13EF-408f-9213-E7622DD9C6C3};@ENDSTEREO;','{7382CEF9-0AEC-4761-8B44-B73CC763F7A3}','<none>',NULL);
INSERT INTO t_xref VALUES('{36659674-761F-457b-AD70-0E1D59A400AC}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=interfaceRequirement;FQName=SysML1.4::interfaceRequirement;@ENDSTEREO;','{5B29C0B6-DA74-44e9-B7FA-1B3F02063618}','<none>',NULL);
INSERT INTO t_xref VALUES('{1F1B0DD4-D939-4a03-9FE2-9EA13A44D493}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=satisfy;FQName=SysML1.4::satisfy;@ENDSTEREO;','{29A70ED9-41A9-43df-9984-B49970F8332C}','<none>',NULL);
INSERT INTO t_xref VALUES('{061371BE-E108-4079-B716-8E34A4485855}','CustomProperties','diagram properties','Public',NULL,NULL,NULL,NULL,'0','DGS=On=0:CNT=8:W=120:H=40:SG=0:SGH=0:AEB=0:;AR=0;DCL=0;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;Swimlanes=locked=false;orientation=0;width=0;inbar=false;names=false;color=-1;bold=false;fcol=0;tcol=-1;ofCol=-1;ufCol=-1;hl=1;ufh=0;hh=0;cls=0;bw=0;hli=0;bro=0;SwimlaneFont=lfh:-18,lfw:0,lfi:0,lfu:0,lfs:0,lfface:Calibri,lfe:0,lfo:0,lfchar:1,lfop:0,lfcp:0,lfq:0,lfpf=0,lfWidth=0;;','{AE39919A-2A00-40d0-87F6-A1A868FD6E95}',NULL,NULL);
INSERT INTO t_xref VALUES('{C07404D0-7F27-4ff5-85BB-B46AD638EF92}','Stereotypes','connector property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=trace;FQName=EAUML::trace;@ENDSTEREO;','{276766B5-651C-4a15-8ECF-92B9FB8C58F5}','<none>',NULL);
INSERT INTO t_xref VALUES('{8b42082c-9b9d-5435-7e9f-99065a7a1009}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec;GUID={ca9963d3-753c-6215-6037-19b8d39a1232};@ENDSTEREO;','{7812f569-a3c4-54de-5091-08d6754ecee4}','<none>',NULL);
INSERT INTO t_xref VALUES('{c7a64823-df82-0a94-49ae-14a7bc6abc02}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Spec Metadata;GUID={a81560c2-4888-7147-a2a7-90e3a8ec934d};@ENDSTEREO;','{9d6cf570-3eb6-aec3-7891-924cb9dbd163}','<none>',NULL);
INSERT INTO t_xref VALUES('{c377a1eb-2891-3460-08f2-623844d588d4}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Model Dependency;GUID={e84eb4c8-5415-e9e8-fcdd-096713c4d576};@ENDSTEREO;','{696e4e17-8bc7-d56b-cfeb-e4a4bb27fd45}','<none>',NULL);
INSERT INTO t_xref VALUES('{bc09c08f-6cd9-3a4f-3b83-974f962dab0e}','Stereotypes','element property','Public',NULL,NULL,NULL,NULL,'0','@STEREO;Name=MPMS Dependency;GUID={98bced8a-4176-3865-4070-c9a60e1a9b1c};@ENDSTEREO;','{df414273-02b0-ca1f-a484-9e14fa418d81}','<none>',NULL);
CREATE TABLE t_xrefsystem
(
	XrefID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	ToolID TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Visibility TEXT NULL COLLATE NOCASE,
	Namespace TEXT NULL COLLATE NOCASE,
	Requirement TEXT NULL COLLATE NOCASE,
	'Constraint' TEXT NULL COLLATE NOCASE,
	Behavior TEXT NULL COLLATE NOCASE,
	'Partition' TEXT NULL COLLATE NOCASE,
	Description TEXT NULL COLLATE NOCASE,
	Client TEXT NULL COLLATE NOCASE,
	Supplier TEXT NULL COLLATE NOCASE,
	Link TEXT NULL COLLATE NOCASE
);
INSERT INTO t_xrefsystem VALUES('{6E5FED3A-DF6C-40db-BEEC-4528AB8C8A2E}','1','Model Views','PView','1','8','1','1','1','1','1','0','ModelRoot','NULL');
CREATE TABLE t_xrefuser
(
	XrefID TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	ToolID TEXT NULL COLLATE NOCASE,
	Name TEXT NULL COLLATE NOCASE,
	Type TEXT NULL COLLATE NOCASE,
	Visibility TEXT NULL COLLATE NOCASE,
	Namespace TEXT NULL COLLATE NOCASE,
	Requirement TEXT NULL COLLATE NOCASE,
	'Constraint' TEXT NULL COLLATE NOCASE,
	Behavior TEXT NULL COLLATE NOCASE,
	'Partition' TEXT NULL COLLATE NOCASE,
	Description TEXT NULL COLLATE NOCASE,
	Client TEXT NULL COLLATE NOCASE,
	Supplier TEXT NULL COLLATE NOCASE,
	Link TEXT NULL COLLATE NOCASE
);
CREATE TABLE usys_schema
(
	V1558 TEXT NOT NULL COLLATE NOCASE PRIMARY KEY
);
CREATE TABLE usys_system
(
	Property TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	Value TEXT NULL COLLATE NOCASE
);
INSERT INTO usys_system VALUES('310_Category','1');
INSERT INTO usys_system VALUES('310_Columns','1');
INSERT INTO usys_system VALUES('310_FileTable','1');
INSERT INTO usys_system VALUES('310_Generalization','1');
INSERT INTO usys_system VALUES('310_Images','1');
INSERT INTO usys_system VALUES('310_Metafile','2');
INSERT INTO usys_system VALUES('310_Palette','1');
INSERT INTO usys_system VALUES('310_QObject','1');
INSERT INTO usys_system VALUES('310_TableList','1');
INSERT INTO usys_system VALUES('310_TableList2','1');
INSERT INTO usys_system VALUES('310_Tasks','1');
INSERT INTO usys_system VALUES('310_XREF','1');
INSERT INTO usys_system VALUES('350_AttGUID','1');
INSERT INTO usys_system VALUES('350_DataTypes','1');
INSERT INTO usys_system VALUES('350_DiagramConnectorID','1');
INSERT INTO usys_system VALUES('350_DiagramObjectID','1');
INSERT INTO usys_system VALUES('350_DocumentEX','1');
INSERT INTO usys_system VALUES('350_FeaturePos','1');
INSERT INTO usys_system VALUES('350_Flags','1');
INSERT INTO usys_system VALUES('350_IssueEx','1');
INSERT INTO usys_system VALUES('350_OpGUID','1');
INSERT INTO usys_system VALUES('350_Package','1');
INSERT INTO usys_system VALUES('350_ParamGUID','1');
INSERT INTO usys_system VALUES('350_Phases','1');
INSERT INTO usys_system VALUES('350_ResourceHours','1');
INSERT INTO usys_system VALUES('350_ResourceTables','1');
INSERT INTO usys_system VALUES('350_RoleExtra','1');
INSERT INTO usys_system VALUES('350_Scenario','1');
INSERT INTO usys_system VALUES('350_Snapshot','1');
INSERT INTO usys_system VALUES('350_Stereotype','1');
INSERT INTO usys_system VALUES('350_Styles','1');
INSERT INTO usys_system VALUES('350_SystemTaggedValues','1');
INSERT INTO usys_system VALUES('350_TableList','1');
INSERT INTO usys_system VALUES('350_TableListEx','1');
INSERT INTO usys_system VALUES('350_Tables','1');
INSERT INTO usys_system VALUES('350_TestTables','1');
INSERT INTO usys_system VALUES('350_TRXTypes','1');
INSERT INTO usys_system VALUES('350_UserSecurity','1');
INSERT INTO usys_system VALUES('Association','1');
INSERT INTO usys_system VALUES('AttID','1');
INSERT INTO usys_system VALUES('CheckObjectTypes','1');
INSERT INTO usys_system VALUES('Classifier','1');
INSERT INTO usys_system VALUES('ClassifierGUID','1');
INSERT INTO usys_system VALUES('CodeGen','1');
INSERT INTO usys_system VALUES('Const','1');
INSERT INTO usys_system VALUES('DDL','1');
INSERT INTO usys_system VALUES('DiagramLink','1');
INSERT INTO usys_system VALUES('DiagramObjectStyle','1');
INSERT INTO usys_system VALUES('EA1000Updates','1');
INSERT INTO usys_system VALUES('EA300Classifier','1');
INSERT INTO usys_system VALUES('EA300MSAccessDT','1');
INSERT INTO usys_system VALUES('EA300VBDT','1');
INSERT INTO usys_system VALUES('EA3FieldSizes','3');
INSERT INTO usys_system VALUES('EA3TableNames','1');
INSERT INTO usys_system VALUES('EA600Updates','1');
INSERT INTO usys_system VALUES('EA610Updates','1');
INSERT INTO usys_system VALUES('EA650Updates','1');
INSERT INTO usys_system VALUES('EA800Updates','1');
INSERT INTO usys_system VALUES('EA900Updates','1');
INSERT INTO usys_system VALUES('EAGUID','1');
INSERT INTO usys_system VALUES('Elem300','1');
INSERT INTO usys_system VALUES('FileDir','$EAPDIR');
INSERT INTO usys_system VALUES('Gen25Fixes','1');
INSERT INTO usys_system VALUES('GenericDataType','1');
INSERT INTO usys_system VALUES('GUID','2');
INSERT INTO usys_system VALUES('IsNavigable','1');
INSERT INTO usys_system VALUES('LangDT25','1');
INSERT INTO usys_system VALUES('LastUpdate','3B58F782F406:123456789012');
INSERT INTO usys_system VALUES('Namespace','1');
INSERT INTO usys_system VALUES('NodeStereo','1');
INSERT INTO usys_system VALUES('ObjectParent','1');
INSERT INTO usys_system VALUES('ObjectScope','1');
INSERT INTO usys_system VALUES('OperationCode','1');
INSERT INTO usys_system VALUES('OpPos','1');
INSERT INTO usys_system VALUES('OpsClean','1');
INSERT INTO usys_system VALUES('Orphans30','1');
INSERT INTO usys_system VALUES('PackageControl','3');
INSERT INTO usys_system VALUES('Packages','1');
INSERT INTO usys_system VALUES('ParamIDX','1');
INSERT INTO usys_system VALUES('QDF_25','1');
INSERT INTO usys_system VALUES('QueryDefs_116','1');
INSERT INTO usys_system VALUES('RoleConstraints','1');
INSERT INTO usys_system VALUES('RTFFIELDS','1');
INSERT INTO usys_system VALUES('RunState','1');
INSERT INTO usys_system VALUES('Seq_Gap','35');
INSERT INTO usys_system VALUES('Stereotypes','1');
INSERT INTO usys_system VALUES('Styles','1');
INSERT INTO usys_system VALUES('TaggedVals','1');
INSERT INTO usys_system VALUES('TPos','2');
INSERT INTO usys_system VALUES('Version','4.01');
INSERT INTO usys_system VALUES('VersionDate','Jan-31-2004');
INSERT INTO usys_system VALUES('WebStereo','1');
INSERT INTO usys_system VALUES('ProjectGUID','{9FE82ED7-1D01-4ed8-8601-79AA824CFCC1}');
INSERT INTO usys_system VALUES('EA1310Updates','1');
INSERT INTO usys_system VALUES('Integration-Enable','1');
INSERT INTO usys_system VALUES('TransAllowEdit','1');
INSERT INTO usys_system VALUES('TransAuto','0');
CREATE TABLE usysOldTables
(
	TableName TEXT NULL COLLATE NOCASE,
	NewName TEXT NULL COLLATE NOCASE,
	RelOrder INTEGER NULL DEFAULT 0,
	FixCode INTEGER NULL
);
CREATE TABLE usysQueries
(
	QueryName TEXT NULL COLLATE NOCASE,
	NewName TEXT NULL COLLATE NOCASE,
	FixCode INTEGER NULL
);
CREATE TABLE usysTables
(
	TableName TEXT NOT NULL COLLATE NOCASE PRIMARY KEY,
	RelOrder INTEGER NULL DEFAULT 0,
	DisplayName TEXT NULL COLLATE NOCASE,
	FromVer TEXT NULL COLLATE NOCASE,
	ToVer TEXT NULL COLLATE NOCASE
);
INSERT INTO usysTables VALUES('t_attribute',6,'Object Attributes','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_attributeconstraints',7,'Attribute Constraints','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_attributetag',7,'Attribute Tag','3.0.0','9.9.9');
INSERT INTO usysTables VALUES('t_authors',1,'Project Authors','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_cardinality',1,'Object Cardinality','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_category',1,'Category','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_clients',1,'Project Clients','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_complexitytypes',1,'Complexity Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_connector',6,'Connectors','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_connectorconstraint',7,'Connector Constraints','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_connectortag',7,'Connector Tag','3.0.0','9.9.9');
INSERT INTO usysTables VALUES('t_connectortypes',1,'Connector Types','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_constants',1,'Constants','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_constrainttypes',1,'Constraint Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_datatypes',1,'Data Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_diagram',5,'Diagrams','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_diagramlinks',6,'Diagram Links','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_diagramobjects',6,'Diagram Objects','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_diagramtypes',2,'Diagram Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_document',7,'Document','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_ecf',1,'ECF Values','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_efforttypes',1,'Effort Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_files',7,'Files','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_genopt',1,'Generation Options','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_glossary',2,'Glossary','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_html',7,'HTML','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_image',7,'Images','3.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_implement',2,'Implementation Details','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_issues',6,'Issue Details','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_lists',1,'Lists','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_mainttypes',1,'Maintenance Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_method',5,'Methods','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_metrictypes',1,'Metric Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_object',3,'Object Details','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectconstraint',5,'Object Constraints','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objecteffort',5,'Object Effort','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectfiles',5,'Object Files','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectmetrics',5,'Object Metrics','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectproblems',5,'Object Problems','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectproperties',5,'Object Properties','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectrequires',5,'Object Requires','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectresource',5,'Object Resources','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectrisks',5,'Object Risks','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objectscenarios',5,'Object Scenarios','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objecttests',5,'Object Tests','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objecttrx',5,'Object TRX','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_objecttypes',1,'Object Types','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_ocf',1,'OCF Values','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_operation',5,'Operations','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_operationparams',6,'Operation Parameters','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_operationposts',6,'Operation Post Conditions','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_operationpres',6,'Operation Pre Conditions','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_operationtag',7,'Operation Tag','3.0.0','9.9.9');
INSERT INTO usysTables VALUES('t_package',1,'Packages','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_palette',5,'Palettes','3.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_paletteitem',7,'Palette Items','3.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_phase',7,'Phases','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_problemtypes',1,'Problem Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_projectroles',1,'Project Roles','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_propertytypes',1,'Property Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_requiretypes',1,'Require Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_resources',1,'Resources','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_risktypes',1,'Risk Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_roleconstraint',0,'Role Constraints','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_rtf',7,'RTF','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_rtfreport',1,'RTF Reports','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_rules',7,'Rules','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_scenariotypes',1,'Scenario Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_script',7,'Scripts','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secgroup',3,'Security Groups','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secgrouppermission',7,'Group Permissions','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_seclocks',7,'Security Locks','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secpermission',3,'Permissions','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secpolicies',1,'Security Policies','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secuser',3,'Security User','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secusergroup',7,'User Group','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_secuserpermission',7,'User Permissions','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_snapshot',7,'Snapshots','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_statustypes',1,'Status Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_stereotypes',1,'Stereotypes','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_taggedvalue',7,'Model Tagged Values','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_tasks',7,'To Do List','3.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_tcf',1,'TCF Values','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_template',7,'Templates','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_testclass',1,'Test Classes','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_testplans',7,'Test Plans','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_testtypes',1,'Test Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_trxtypes',1,'TRX Types','1.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_umlpattern',7,'UML Patterns','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_version',7,'Files','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_xref',7,'XRef','3.1.0','9.9.9');
INSERT INTO usysTables VALUES('t_xrefsystem',7,'System XRef','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('t_xrefuser',7,'User XRef','3.5.0','9.9.9');
INSERT INTO usysTables VALUES('usys_system',7,'System Settings','3.1.0','9.9.9');
CREATE INDEX ix_attribute_classifier
 ON t_attribute (Classifier ASC);
CREATE INDEX ix_attribute_name
 ON t_attribute (Name ASC);
CREATE INDEX ix_attribute_objectid
 ON t_attribute (Object_ID ASC);
CREATE INDEX ix_attribute_type
 ON t_attribute (Type ASC);
CREATE UNIQUE INDEX uq_attribute_eaguid
 ON t_attribute (ea_guid ASC);
CREATE INDEX ix_attributeconstraints_objid
 ON t_attributeconstraints (Object_ID ASC);
CREATE INDEX ix_attributetag_eaguid
 ON t_attributetag (ea_guid ASC);
CREATE INDEX ix_attributetag_elementid
 ON t_attributetag (ElementID ASC);
CREATE INDEX ix_attributetag_elementidprop
 ON t_attributetag (ElementID ASC,Property ASC);
CREATE INDEX ix_attributetag_property
 ON t_attributetag (Property ASC);
CREATE INDEX ix_attributetag_value
 ON t_attributetag (VALUE ASC);
CREATE INDEX ix_complexitytypes_numweight
 ON t_complexitytypes (NumericWeight ASC);
CREATE INDEX ix_connector_connectortype
 ON t_connector (Connector_Type ASC);
CREATE INDEX ix_connector_diagramid
 ON t_connector (DiagramID ASC);
CREATE INDEX ix_connector_endobjectid
 ON t_connector (End_Object_ID ASC);
CREATE INDEX ix_connector_endobjidconnid
 ON t_connector (End_Object_ID ASC,Connector_ID ASC);
CREATE INDEX ix_connector_pdata1
 ON t_connector (PDATA1 ASC);
CREATE INDEX ix_connector_pdata3
 ON t_connector (PDATA3 ASC);
CREATE INDEX ix_connector_pdata5
 ON t_connector (PDATA5 ASC);
CREATE INDEX ix_connector_seqno
 ON t_connector (SeqNo ASC);
CREATE INDEX ix_connector_startobjectid
 ON t_connector (Start_Object_ID ASC);
CREATE INDEX ix_connector_startobjidconnid
 ON t_connector (Start_Object_ID ASC,Connector_ID ASC);
CREATE INDEX ix_connector_subtype
 ON t_connector (SubType ASC);
CREATE UNIQUE INDEX uq_connector_eaguid
 ON t_connector (ea_guid ASC);
CREATE INDEX ix_connectorconstraint_connid
 ON t_connectorconstraint (ConnectorID ASC);
CREATE INDEX ix_connectorconstraint_constr
 ON t_connectorconstraint ('Constraint' ASC);
CREATE INDEX ix_connectortag_eaguid
 ON t_connectortag (ea_guid ASC);
CREATE INDEX ix_connectortag_elementid
 ON t_connectortag (ElementID ASC);
CREATE INDEX ix_connectortag_property
 ON t_connectortag (Property ASC);
CREATE INDEX ix_connectortag_value
 ON t_connectortag (VALUE ASC);
CREATE INDEX ix_datatypes_datatype
 ON t_datatypes (DataType ASC);
CREATE INDEX ix_datatypes_productname
 ON t_datatypes (ProductName ASC);
CREATE INDEX ix_diagram_diagramtype
 ON t_diagram (Diagram_Type ASC);
CREATE INDEX ix_diagram_packageid
 ON t_diagram (Package_ID ASC);
CREATE INDEX ix_diagram_parentid
 ON t_diagram (ParentID ASC);
CREATE UNIQUE INDEX uq_diagram_eaguid
 ON t_diagram (ea_guid ASC);
CREATE INDEX ix_diagramlinks_connectorid
 ON t_diagramlinks (ConnectorID ASC);
CREATE INDEX ix_diagramlinks_diagramid
 ON t_diagramlinks (DiagramID ASC);
CREATE INDEX ix_diagramobjects_diagramid
 ON t_diagramobjects (Diagram_ID ASC);
CREATE INDEX ix_diagramobjects_objectid
 ON t_diagramobjects (Object_ID ASC);
CREATE INDEX ix_diagramobjects_sequence
 ON t_diagramobjects (Sequence ASC);
CREATE INDEX ix_diagramtypes_packageid
 ON t_diagramtypes (Package_ID ASC);
CREATE INDEX ix_document_author
 ON t_document (Author ASC);
CREATE INDEX ix_document_doctype
 ON t_document (DocType ASC);
CREATE INDEX ix_document_elementid
 ON t_document (ElementID ASC);
CREATE INDEX ix_document_style
 ON t_document (Style ASC);
CREATE INDEX ix_document_version
 ON t_document (Version ASC);
CREATE INDEX ix_ecf_weight
 ON t_ecf (Weight ASC);
CREATE INDEX ix_efforttypes_numericweight
 ON t_efforttypes (NumericWeight ASC);
CREATE INDEX ix_files_appliesto
 ON t_files (AppliesTo ASC);
CREATE INDEX ix_files_appliestoname
 ON t_files (AppliesTo ASC,Name ASC);
CREATE INDEX ix_files_appliestonamedatesize
 ON t_files (AppliesTo ASC,Name ASC,FileDate ASC,FileSize ASC);
CREATE INDEX ix_files_appliestonamesize
 ON t_files (AppliesTo ASC,Name ASC,FileSize ASC);
CREATE INDEX ix_files_category
 ON t_files (Category ASC);
CREATE INDEX ix_files_filesize
 ON t_files (FileSize ASC);
CREATE INDEX ix_files_name
 ON t_files (Name ASC);
CREATE INDEX ix_glossary_term
 ON t_glossary (Term ASC);
CREATE INDEX ix_glossary_type
 ON t_glossary (Type ASC);
CREATE INDEX ix_mainttypes_numericweight
 ON t_mainttypes (NumericWeight ASC);
CREATE INDEX ix_method_objectid
 ON t_method (Object_ID ASC);
CREATE INDEX ix_metrictypes_numericweight
 ON t_metrictypes (NumericWeight ASC);
CREATE INDEX ix_object_classifier
 ON t_object (Classifier ASC);
CREATE INDEX ix_object_classifierguid
 ON t_object (Classifier_guid ASC);
CREATE INDEX ix_object_eaguidclassifier
 ON t_object (ea_guid ASC,Classifier ASC);
CREATE INDEX ix_object_eventflags
 ON t_object (EventFlags ASC);
CREATE INDEX ix_object_name
 ON t_object (Name ASC);
CREATE INDEX ix_object_ntype
 ON t_object (NType ASC);
CREATE INDEX ix_object_objecttype
 ON t_object (Object_Type ASC);
CREATE INDEX ix_object_packageid
 ON t_object (Package_ID ASC);
CREATE INDEX ix_object_pdata1
 ON t_object (PDATA1 ASC);
CREATE INDEX ix_object_pdata2
 ON t_object (PDATA2 ASC);
CREATE INDEX ix_object_pdata3
 ON t_object (PDATA3 ASC);
CREATE INDEX ix_object_pdata4
 ON t_object (PDATA4 ASC);
CREATE INDEX ix_object_pdata5
 ON t_object (PDATA5 ASC);
CREATE INDEX ix_object_pkgidpdata1class
 ON t_object (Package_ID ASC,PDATA1 ASC,Classifier ASC);
CREATE UNIQUE INDEX uq_object_eaguid
 ON t_object (ea_guid ASC);
CREATE INDEX ix_objectconstraint_constr
 ON t_objectconstraint ('Constraint' ASC);
CREATE INDEX ix_objectconstraint_objectid
 ON t_objectconstraint (Object_ID ASC);
CREATE INDEX ix_objecteffort_objectid
 ON t_objecteffort (Object_ID ASC);
CREATE INDEX ix_objectmetrics_metric
 ON t_objectmetrics (Metric ASC);
CREATE INDEX ix_objectmetrics_metrictype
 ON t_objectmetrics (MetricType ASC);
CREATE INDEX ix_objectmetrics_objectid
 ON t_objectmetrics (Object_ID ASC);
CREATE INDEX ix_objectproblems_objectid
 ON t_objectproblems (Object_ID ASC);
CREATE INDEX ix_objectproblems_problem
 ON t_objectproblems (Problem ASC);
CREATE INDEX ix_objectproperties_eaguid
 ON t_objectproperties (ea_guid ASC);
CREATE INDEX ix_objectproperties_objectid
 ON t_objectproperties (Object_ID ASC);
CREATE INDEX ix_objectproperties_objidprop
 ON t_objectproperties (Object_ID ASC,Property ASC);
CREATE INDEX ix_objectproperties_property
 ON t_objectproperties (Property ASC);
CREATE INDEX ix_objectproperties_value
 ON t_objectproperties (Value ASC);
CREATE INDEX ix_objectrequires_objectid
 ON t_objectrequires (Object_ID ASC);
CREATE INDEX ix_objectrequires_reqid
 ON t_objectrequires (ReqID ASC);
CREATE INDEX ix_objectrequires_requirement
 ON t_objectrequires (Requirement ASC);
CREATE INDEX ix_objectresource_objectid
 ON t_objectresource (Object_ID ASC);
CREATE INDEX ix_objectrisks_objectid
 ON t_objectrisks (Object_ID ASC);
CREATE INDEX ix_objectscenarios_objectid
 ON t_objectscenarios (Object_ID ASC);
CREATE INDEX ix_objectscenarios_oidevalscen
 ON t_objectscenarios (Object_ID ASC,EValue ASC,Scenario ASC);
CREATE INDEX ix_objecttests_objectid
 ON t_objecttests (Object_ID ASC);
CREATE INDEX ix_objecttests_objidtclassstat
 ON t_objecttests (Object_ID ASC,TestClass ASC,Status ASC);
CREATE INDEX ix_objecttrx_objectid
 ON t_objecttrx (Object_ID ASC);
CREATE INDEX ix_objecttrx_trx
 ON t_objecttrx (TRX ASC);
CREATE INDEX ix_objecttypes_imageid
 ON t_objecttypes (ImageID ASC);
CREATE INDEX ix_operation_classifier
 ON t_operation (Classifier ASC);
CREATE INDEX ix_operation_name
 ON t_operation (Name ASC);
CREATE INDEX ix_operation_objectid
 ON t_operation (Object_ID ASC);
CREATE INDEX ix_operation_objectidopid
 ON t_operation (Object_ID ASC,OperationID ASC);
CREATE INDEX uq_operation_eaguid
 ON t_operation (ea_guid ASC);
CREATE INDEX ix_operationparams_classifier
 ON t_operationparams (Classifier ASC);
CREATE INDEX ix_operationparams_operationid
 ON t_operationparams (OperationID ASC);
CREATE INDEX ix_operationparams_opidpos
 ON t_operationparams (OperationID ASC,Pos ASC);
CREATE UNIQUE INDEX uq_operationparams_eaguid
 ON t_operationparams (ea_guid ASC);
CREATE INDEX ix_operationposts_operationid
 ON t_operationposts (OperationID ASC);
CREATE INDEX ix_operationpres_operationid
 ON t_operationpres (OperationID ASC);
CREATE INDEX ix_operationtag_eaguid
 ON t_operationtag (ea_guid ASC);
CREATE INDEX ix_operationtag_elementid
 ON t_operationtag (ElementID ASC);
CREATE INDEX ix_operationtag_elementidprop
 ON t_operationtag (ElementID ASC,Property ASC);
CREATE INDEX ix_operationtag_property
 ON t_operationtag (Property ASC);
CREATE INDEX ix_operationtag_value
 ON t_operationtag (VALUE ASC);
CREATE INDEX ix_package_name
 ON t_package (Name ASC);
CREATE INDEX ix_package_packageid
 ON t_package (Package_ID ASC);
CREATE INDEX ix_package_parentid
 ON t_package (Parent_ID ASC);
CREATE UNIQUE INDEX uq_package_eaguid
 ON t_package (ea_guid ASC);
CREATE INDEX ix_problemtypes_numericweight
 ON t_problemtypes (NumericWeight ASC);
CREATE INDEX ix_requiretypes_numericweight
 ON t_requiretypes (NumericWeight ASC);
CREATE INDEX ix_risktypes_numericweight
 ON t_risktypes (NumericWeight ASC);
CREATE INDEX ix_roleconstraint_connectorid
 ON t_roleconstraint (ConnectorID ASC);
CREATE INDEX ix_roleconstraint_constraint
 ON t_roleconstraint ('Constraint' ASC);
CREATE INDEX ix_scenariotypes_numericweight
 ON t_scenariotypes (NumericWeight ASC);
CREATE INDEX ix_script_scriptcategory
 ON t_script (ScriptCategory ASC);
CREATE INDEX ix_seclocks_entityidtype
 ON t_seclocks (EntityID ASC,EntityType ASC);
CREATE INDEX ix_seclocks_entityiduserid
 ON t_seclocks (EntityID ASC,UserID ASC);
CREATE INDEX ix_seclocks_entityidusrtype
 ON t_seclocks (EntityID ASC,UserID ASC,EntityType ASC);
CREATE INDEX ix_seclocks_groupid
 ON t_seclocks (GroupID ASC);
CREATE INDEX ix_seclocks_groupiduserid
 ON t_seclocks (GroupID ASC,UserID ASC);
CREATE INDEX ix_snapshot_position
 ON t_snapshot (Position ASC);
CREATE INDEX ix_snapshot_seriesid
 ON t_snapshot (SeriesID ASC);
CREATE INDEX ix_stereotypes_eaguid
 ON t_stereotypes (ea_guid ASC);
CREATE INDEX ix_stereotypes_stereotype
 ON t_stereotypes (Stereotype ASC);
CREATE INDEX ix_taggedvalue_elementid
 ON t_taggedvalue (ElementID ASC);
CREATE INDEX ix_tcf_weight
 ON t_tcf (Weight ASC);
CREATE INDEX ix_testtypes_numericweight
 ON t_testtypes (NumericWeight ASC);
CREATE INDEX ix_trxtypes_description
 ON t_trxtypes (Description ASC);
CREATE INDEX ix_trxtypes_numericweight
 ON t_trxtypes (NumericWeight ASC);
CREATE INDEX ix_trxtypes_trx
 ON t_trxtypes (TRX ASC);
CREATE INDEX ix_version_elementid
 ON t_version (ElementID ASC);
CREATE INDEX ix_xref_client
 ON t_xref (Client ASC);
CREATE INDEX ix_xref_name
 ON t_xref (Name ASC);
CREATE INDEX ix_xref_nametype
 ON t_xref (Name ASC,Type ASC);
CREATE INDEX ix_xref_supplier
 ON t_xref (Supplier ASC);
CREATE INDEX ix_xref_type
 ON t_xref (Type ASC);
CREATE INDEX ix_xrefsystem_client
 ON t_xrefsystem (Client ASC);
CREATE INDEX ix_xrefsystem_supplier
 ON t_xrefsystem (Supplier ASC);
CREATE INDEX ix_xrefsystem_type
 ON t_xrefsystem (Type ASC);
CREATE INDEX ix_xrefuser_client
 ON t_xrefuser (Client ASC);
CREATE INDEX ix_xrefuser_supplier
 ON t_xrefuser (Supplier ASC);
CREATE INDEX ix_xrefuser_type
 ON t_xrefuser (Type ASC);
CREATE INDEX 'ix_xref_clientname'
 ON 't_xref' ('Client' ASC,'Name' ASC);
CREATE INDEX idx_ea_guid ON t_objectproperties(ea_guid);
COMMIT;
