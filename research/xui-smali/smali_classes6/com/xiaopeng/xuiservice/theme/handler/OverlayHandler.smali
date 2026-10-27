.class public Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;
.super Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.source "OverlayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpTheme_OverlayHandler"


# instance fields
.field private final overlayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    return-void
.end method

.method private static deleteIdmap(Ljava/lang/String;)V
    .locals 15
    .param p0, "packageName"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "resourceCacheDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, "idmaps":[Ljava/io/File;
    if-eqz v1, :cond_5

    .line 167
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 168
    .local v5, "idmap":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 169
    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "fileName":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "splits":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    .line 174
    goto :goto_1

    .line 176
    :cond_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x3

    aget-object v8, v7, v8

    .line 177
    .local v8, "rroApkName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "splits2":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 182
    goto :goto_1

    .line 184
    :cond_3
    aget-object v10, v9, v3

    .line 185
    .local v10, "packageNameParsed":Ljava/lang/String;
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 186
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v11

    .line 188
    .local v11, "deleted":Z
    const-string/jumbo v12, "xpTheme_OverlayHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "find idmap path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", packageName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", deleted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v5    # "idmap":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "splits":[Ljava/lang/String;
    .end local v8    # "rroApkName":Ljava/lang/String;
    .end local v9    # "splits2":[Ljava/lang/String;
    .end local v10    # "packageNameParsed":Ljava/lang/String;
    .end local v11    # "deleted":Z
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "idmaps":[Ljava/io/File;
    :cond_5
    goto :goto_2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "xpTheme_OverlayHandler"

    const-string v3, "deleteIdmap"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private disableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 151
    .local v0, "overlayApks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    const-string/jumbo v1, "xpTheme_OverlayHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableOverlays theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", overlayApks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;

    .line 158
    .local v2, "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/theme/utils/CMD;->disableOverlay(Ljava/lang/String;)V

    .line 159
    .end local v2    # "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method private enableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 136
    .local v0, "overlayApks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    const-string/jumbo v1, "xpTheme_OverlayHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableOverlays theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", overlayApks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;

    .line 143
    .local v2, "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/theme/utils/CMD;->enableOverlay(Ljava/lang/String;)V

    .line 144
    .end local v2    # "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method private installOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 100
    .local v0, "overlayApks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    const-string/jumbo v1, "xpTheme_OverlayHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installOverlays, theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", overlayApks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;

    .line 107
    .local v2, "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->apkPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/theme/utils/CMD;->install(Ljava/lang/String;)V

    .line 108
    .end local v2    # "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method private loadThemeOverlay(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 90
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeOverlayJsonParser;->parseOverlayJson(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    .local v0, "overlayApks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method

.method private uninstallOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    .local v0, "overlayApks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;>;"
    const-string/jumbo v1, "xpTheme_OverlayHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallOverlays, theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", overlayApks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;

    .line 122
    .local v2, "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/theme/utils/CMD;->uninstall(Ljava/lang/String;)V

    .line 128
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->deleteIdmap(Ljava/lang/String;)V

    .line 129
    .end local v2    # "overlayApk":Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler$OverlayApk;
    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 3

    .line 25
    const-string/jumbo v0, "xpTheme_OverlayHandler"

    const-string v1, "doInit load overlay info"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getThemes()Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/Theme;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 29
    .local v2, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->loadThemeOverlay(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 30
    .end local v2    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 32
    return-void
.end method

.method protected doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 37
    const-string/jumbo v0, "xpTheme_OverlayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnThemeAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->loadThemeOverlay(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->installOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 41
    return-void
.end method

.method protected doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 46
    const-string/jumbo v0, "xpTheme_OverlayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnThemeDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->uninstallOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 49
    return-void
.end method

.method protected doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 75
    const-string/jumbo v0, "xpTheme_OverlayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnThemeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->disableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->enableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 87
    return-void
.end method

.method protected doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 54
    const-string/jumbo v0, "xpTheme_OverlayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnThemeUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->disableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->uninstallOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->overlayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->loadThemeOverlay(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->installOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;->enableOverlays(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 70
    :cond_1
    return-void
.end method
