.class public Lcom/xiaopeng/xuiservice/theme/ThemeService;
.super Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;
.source "ThemeService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeService"


# instance fields
.field private final iThemeElementListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;

.field private final iThemeListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;

.field private final themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

.field private final themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;

    const-string/jumbo v1, "xpTheme_ThemeService_IThemeListener"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;

    .line 34
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;

    const-string/jumbo v1, "xpTheme_ThemeService_IThemeElementListener"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeElementListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    .line 38
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    .line 39
    return-void
.end method

.method private static toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 210
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addTheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addTheme(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public addThemeElement(ILjava/lang/String;)V
    .locals 1
    .param p1, "elementType"    # I
    .param p2, "themeElementPath"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->addThemeElement(ILjava/lang/String;)V

    .line 342
    return-void
.end method

.method public cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 130
    return-void
.end method

.method public cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 367
    return-void
.end method

.method public deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 99
    return-void
.end method

.method public deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 347
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 61
    return-void
.end method

.method public getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromSelectedTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Z

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getBooleanArrayFromSelectedTheme(Ljava/lang/String;)[Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getBooleanFromSelectedTheme(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # I

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getColorArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getColorFromSelectedTheme(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 1
    .param p1, "elementType"    # I

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # I

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDimensionArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDimensionFromSelectedTheme(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFileBytesFromSelectedTheme(Ljava/lang/String;)[B
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileTextFromSelectedTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # D

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getFloatArrayFromSelectedTheme(Ljava/lang/String;)[D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getFloatFromSelectedTheme(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # I

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getIntegerArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getIntegerFromSelectedTheme(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRemoteThemeElements(I)V
    .locals 1
    .param p1, "elementType"    # I

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getRemoteThemeElements(I)V

    .line 312
    return-void
.end method

.method public getRemoteThemes()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getRemoteThemes()V

    .line 74
    return-void
.end method

.method public getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 1
    .param p1, "elementType"    # I

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "ThemeService"

    return-object v0
.end method

.method public getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeService;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getStringArrayFromSelectedTheme(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeService;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getStringFromSelectedTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Ljava/lang/String;
    .locals 2
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v0

    .line 372
    .local v0, "downloadStatusInfo":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    if-eqz v0, :cond_0

    .line 373
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 375
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getThemeElements(I)Ljava/util/List;
    .locals 1
    .param p1, "elementType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getThemeElements(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getThemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 46
    const-string/jumbo v0, "xpTheme_ThemeService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 120
    return-void
.end method

.method public pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 357
    return-void
.end method

.method public registerThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeElementListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 302
    return-void
.end method

.method public registerThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 104
    return-void
.end method

.method public release()V
    .locals 2

    .line 54
    const-string/jumbo v0, "xpTheme_ThemeService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 125
    return-void
.end method

.method public resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 362
    return-void
.end method

.method public selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 89
    return-void
.end method

.method public selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 332
    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 114
    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 352
    return-void
.end method

.method public unregisterThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeElementListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeElementListenerServiceRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 307
    return-void
.end method

.method public unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->iThemeListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/IThemeListenerServiceRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 109
    return-void
.end method

.method public unselectThemeElement(I)V
    .locals 1
    .param p1, "elementType"    # I

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeService;->themeElementLocalService:Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->unselectThemeElement(I)V

    .line 337
    return-void
.end method
