MSDeploy.exe
  -source:package="[path]\ContactManager.Mvc.zip"
  -dest:auto,
        computerName="https://stageweb1:8172/MSDeploy.axd?site=DemoSite",
        username="FABRIKAM\stagingdeployer",
        $CREDENTIAL_PLACEHOLDER$,
        authtype="Basic",
        includeAcls="False"
  -verb:sync
  -disableLink:AppPoolExtension
  -disableLink:ContentExtension
  -disableLink:CertificateExtension
  -setParamFile:"[path]\ContactManager.Mvc.SetParameters.xml"
  -allowUntrusted