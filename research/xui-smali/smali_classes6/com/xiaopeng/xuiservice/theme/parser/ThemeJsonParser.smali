.class public Lcom/xiaopeng/xuiservice/theme/parser/ThemeJsonParser;
.super Ljava/lang/Object;
.source "ThemeJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeJsonParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseThemeJson(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)V
    .locals 6
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p1, "path"    # Ljava/lang/String;

    .line 31
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    .line 36
    .local v0, "file":Ljava/nio/file/Path;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "themeJsonContent":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "author"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/Theme;->setAuthor(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/Theme;->setVersion(I)V

    .line 44
    const-string/jumbo v3, "xpTheme_ThemeJsonParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse theme json success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xpTheme_ThemeJsonParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse theme.json error, theme: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 32
    .end local v0    # "file":Ljava/nio/file/Path;
    .end local v1    # "themeJsonContent":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method
