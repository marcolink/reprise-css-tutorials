package reprise.tutorials
{

	import reprise.core.Application;
	import reprise.external.XMLResource;

	public class RepriseTutorialApplication extends Application
	{
		private const STRUCTURE_URL : String = "structure.xml";
		private var _xmlResource : XMLResource;

		override protected function loadResources() : void
		{
			super.loadResources();
			_xmlResource = new XMLResource(stage.loaderInfo.parameters.structure_xml || STRUCTURE_URL);
			addResource(_xmlResource);
		}

		override protected function startApplication() : void
		{
			m_rootElement.initFromXML(_xmlResource.content());
		}
	}
}