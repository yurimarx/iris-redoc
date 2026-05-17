Class dc.redoc.RedocPage Extends %CSP.Page
{

/// Este método é chamado pelo servidor CSP para gerar o conteúdo da página.
ClassMethod OnPage() As %Status
{
    Set specUrl = %request.Get("url", "http://petstore.swagger.io/v2/swagger.json")
    Set specUrl = $ZCONVERT(specUrl, "O", "HTML")

    &html<
    <!DOCTYPE html>
    <html>
      <head>
        <title>Redoc CE</title>
        <!-- needed for adaptive design -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
          href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700|Roboto:300,400,700"
          rel="stylesheet"
        />

        <!--
        Redoc CE doesn't change outer page styles
        -->
        <style>
          body {
            margin: 0;
            padding: 0;
          }
        </style>
      </head>
      <body>
        <!--
        Redoc CE element with link to your OpenAPI description
        -->
    >
    Write "        <redoc spec-url=""" _ specUrl _ """></redoc>",!
    &html<
        <!--
        Link to Redoc CE JavaScript on CDN for rendering standalone element
        -->
        <script src="https://cdn.redoc.ly/redoc/latest/bundles/redoc.standalone.js"></script>
      </body>
    </html>
    >
    
    Quit $$$OK
}

}