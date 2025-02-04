<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Galeria Responsiva</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="container-fluid cardFlicker">
        <div class="galeria">
            <h1>Álbuns</h1>
            <#if entries?has_content>
                <div class="albuns">
                    <#list entries as entry>
                        <#assign assetRenderer=entry.getAssetRenderer() />
                        <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                        <a href="${viewURL}" class="adt-link">
                            <div class="box-foto">
                                <div class="thumb">
                                    <img src="${assetRenderer.getThumbnailPath()}" class="card-img-top" alt="Imagem do álbum">
                                </div>
                                <h2>
                                    ${htmlUtil.escape(assetRenderer.getTitle(locale))}
                                </h2>
                            </div>
                        </a>
                    </#list>
                </div>
                <#else>
                    <p>Nenhum conteúdo disponível no momento.</p>
            </#if>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>

</html>