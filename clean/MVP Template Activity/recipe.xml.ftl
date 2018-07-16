<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/view/${viewContract}.kt" />
    <instantiate from="src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/view/activity/${className}Activity.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/view/presenter/${viewPresenter}.kt" />
    

    <#if createViewModel>
        <instantiate from="src/app_package/ViewModel.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/presentation/view/model/${viewModel}.kt" />
        <instantiate from="src/app_package/ViewModelMapper.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/presentation/view/mapper/${viewModel}Mapper.kt" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/layout/activity_mvp.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${srcOut}/presentation/view/presenter/${className}Presenter.kt"/>
</recipe>
