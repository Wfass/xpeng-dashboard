.class public Lcom/xiaopeng/xuiservice/theme/parser/ThemeOverlayJsonParser;
.super Ljava/lang/Object;
.source "ThemeOverlayJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeOverlayJsonParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseOverlayJson(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "overlayDir":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getOverlayJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v1

    .line 42
    .local v1, "overlayJsonPath":Ljava/nio/file/Path;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "content":Ljava/lang/String;
    const-string/jumbo v3, "xpTheme_ThemeOverlayJsonParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseOverlayJson "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", content=\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 50
    const-string/jumbo v4, "xpTheme_ThemeOverlayJsonParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " not exist, ignore overlay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v3

    .line 55
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "overlays"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 57
    .local v5, "overlays":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 58
    .local v6, "size":I
    if-lez v6, :cond_2

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    add-int/lit8 v8, v6, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    const/4 v8, 0x0

    move v9, v8

    .line 60
    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_1

    .line 61
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 62
    .local v10, "overlay":Lorg/json/JSONObject;
    new-instance v11, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;

    invoke-direct {v11}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;-><init>()V

    .line 63
    .local v11, "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "apk"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v0, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-interface {v12}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->apkPath:Ljava/lang/String;

    .line 64
    const-string v12, "packageName"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->packageName:Ljava/lang/String;

    .line 65
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v12, "xpTheme_ThemeOverlayJsonParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parse overlay apk: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v10    # "overlay":Lorg/json/JSONObject;
    .end local v11    # "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 72
    .end local v9    # "i":I
    :cond_1
    const-string/jumbo v8, "xpTheme_ThemeOverlayJsonParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "overlay.json parse finish, count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object v7

    .line 80
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "overlays":Lorg/json/JSONArray;
    .end local v6    # "size":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    :cond_2
    goto :goto_1

    .line 77
    :catch_0
    move-exception v4

    .line 78
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "xpTheme_ThemeOverlayJsonParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse overlay json, overlayJsonPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v3
.end method
