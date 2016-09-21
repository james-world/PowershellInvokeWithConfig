function RunDemo {
	Push-Location $PSScriptRoot
		$path = "$PSScriptRoot\PowershellInvokeWithConfig.dll";
		[System.AppDomain]::CurrentDomain.SetData("APP_CONFIG_FILE", "$($path).config")
		[Reflection.Assembly]::LoadFrom($path)
		$demo = [PowershellInvokeWithConfig.Demo]::Foo();
	Pop-Location
}

RunDemo