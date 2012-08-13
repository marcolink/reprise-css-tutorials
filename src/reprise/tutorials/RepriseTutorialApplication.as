package reprise.tutorials
{

	import reprise.controls.SimpleButton;
	import reprise.core.Application;
	import reprise.core.UIRendererFactory;
	import reprise.external.XMLResource;

	public class RepriseTutorialApplication extends Application
	{
		private var _xmlResource : XMLResource;

		override protected function loadResources() : void
		{
			super.loadResources();
			_xmlResource = new XMLResource(stage.loaderInfo.parameters.structure_url);
			addResource(_xmlResource);
		}

		override protected function startApplication() : void
		{
			registerRenderer();
			m_rootElement.initFromXML(_xmlResource.content());
		}

		private function registerRenderer () : void
		{
			var renderFactory : UIRendererFactory = m_rootElement.uiRendererFactory();
			renderFactory.registerTagRenderer("div", SimpleButton);
		}
	}
}