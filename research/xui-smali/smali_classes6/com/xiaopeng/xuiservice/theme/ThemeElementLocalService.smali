.class public Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;
.super Ljava/lang/Object;
.source "ThemeElementLocalService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeElement;


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeElementLocalService"


# instance fields
.field private final registerAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

.field private final registerAndNotifyWithMap:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotifyWithMap:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    .line 55
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$2;-><init>(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService$1;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotifyWithMap:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;)Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;

    return-object v0
.end method


# virtual methods
.method public addThemeElement(ILjava/lang/String;)V
    .locals 1
    .param p1, "elementType"    # I
    .param p2, "themeElementPath"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 326
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadThemeElement: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeElementToOperationResource(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 328
    return-void
.end method

.method public deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 296
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteThemeElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 11
    .param p1, "elementType"    # I

    .line 241
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLastSelectionTime(I)J

    move-result-wide v0

    .line 242
    .local v0, "elementSelectTime":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v2

    const v3, 0x107b24

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLastSelectionTime(I)J

    move-result-wide v2

    .line 244
    .local v2, "themeSelectTime":J
    const/4 v4, 0x0

    .line 246
    .local v4, "current":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v4

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v5

    .line 252
    .local v5, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/theme/Themes;->isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    invoke-static {v5, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getDirByElementType(Lcom/xiaopeng/xuimanager/theme/Theme;I)Ljava/nio/file/Path;

    move-result-object v6

    .line 254
    .local v6, "path":Ljava/nio/file/Path;
    if-eqz v6, :cond_2

    .line 255
    invoke-interface {v6}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    .line 256
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "id":Ljava/lang/String;
    new-instance v9, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-direct {v9, v8, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;-><init>(Ljava/lang/String;I)V

    .line 260
    .local v9, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->setPath(Ljava/lang/String;)V

    .line 261
    move-object v4, v9

    .line 266
    .end local v5    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    .end local v6    # "path":Ljava/nio/file/Path;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :cond_2
    :goto_0
    const-string/jumbo v5, "xpTheme_ThemeElementLocalService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentAppliedThemeElement: elementSelectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 267
    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", themeSelectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 268
    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-object v4
.end method

.method public getRemoteThemeElements(I)V
    .locals 3
    .param p1, "elementType"    # I

    .line 213
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteThemeElements: elementType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->queryRemoteResources(ILjava/util/Map;)V

    .line 215
    return-void
.end method

.method public getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 5
    .param p1, "elementType"    # I

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v1

    .line 232
    .local v1, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v1, :cond_0

    .line 233
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->resourceInfoToThemeElement(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object v0

    .line 235
    :cond_0
    const-string/jumbo v2, "xpTheme_ThemeElementLocalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedThemeElement: elementType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-object v0
.end method

.method public getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 4
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getDownloadStatus(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v0

    .line 333
    .local v0, "info":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeElementDownloadStatusInfo: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-object v0
.end method

.method public getThemeElements(I)Ljava/util/List;
    .locals 4
    .param p1, "elementType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLocalResourceList(I)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$bMcs6xRzSUR6cG-gjP2ax6cqVbc;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$bMcs6xRzSUR6cG-gjP2ax6cqVbc;

    .line 222
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 223
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/ThemeElement;>;"
    const-string/jumbo v1, "xpTheme_ThemeElementLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeElements: elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 314
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadThemeElement: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeElementToOperationResource(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 316
    return-void
.end method

.method public register(Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 202
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public registerThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 3
    .param p1, "elementType"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 191
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerThemeElementListener: elementType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotifyWithMap:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 320
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownloadThemeElement: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeElementToOperationResource(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 322
    return-void
.end method

.method public selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 275
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectThemeElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-nez p1, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->selectOperationResource(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 303
    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 3
    .param p1, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 307
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadThemeElement: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", useSystemTraffic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", openAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeElementToOperationResource(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 310
    return-void
.end method

.method public unregister(Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 207
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotify:Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeElementListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public unregisterThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 3
    .param p1, "elementType"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeElementListener;

    .line 197
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterThemeElementListener: elementType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeElementLocalService;->registerAndNotifyWithMap:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotifyWithMap;->unregister(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public unselectThemeElement(I)V
    .locals 3
    .param p1, "elementType"    # I

    .line 284
    const-string/jumbo v0, "xpTheme_ThemeElementLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unselectThemeElement: elementType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->clearSelection(I)V

    .line 286
    return-void
.end method
