<#-- @formatter:off -->
{
  "type": "content",
  "modid": "${settings.getModID()}",
  "version": "${settings.getVersion()}",
  "name": "${settings.getModName()}",
  <#if settings.getDescription()?has_content>
  "description": "${settings.getDescription()}",
  <#else>
  "description": "",
  </#if>
  "author": "${settings.getAuthor()}",
  "dependency": {
    "game": ""
  }
}
<#-- @formatter:on -->
