.class public Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;
.super Ljava/lang/Object;
.source "ThemeLocalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$SingleInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeLocalService"


# instance fields
.field private final operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

.field private final themeResourceHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final valuesHandler:Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->valuesHandler:Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->themeResourceHandlers:Ljava/util/ArrayList;

    .line 62
    const-string v0, "theme"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->valuesHandler:Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/handler/OverlayHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 86
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 91
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/handler/IconsHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/handler/IconsHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$1;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;-><init>()V

    return-void
.end method

.method private dumpTheme(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    if-nez p1, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 509
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v0, :cond_1

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    :cond_1
    return-void
.end method

.method private dumpThemes(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 515
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getThemes()Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/Theme;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    .line 517
    .local v1, "selectedTheme":Lcom/xiaopeng/xuimanager/theme/Theme;
    const-string v2, "Themes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v2, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;-><init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 519
    const-string v2, "Selected:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->dumpTheme(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/io/PrintWriter;)V

    .line 521
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    return-object v0
.end method

.method private getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->valuesHandler:Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->getValues(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dumpThemes$1(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;Ljava/io/PrintWriter;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 518
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->dumpTheme(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 314
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 428
    :pswitch_0
    invoke-static {p3, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadError(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 429
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 430
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_ERROR but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    goto/16 :goto_0

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    .line 434
    goto/16 :goto_0

    .line 417
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Integer;>;"
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 419
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_1

    .line 420
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_CANCEL but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    goto/16 :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 425
    goto/16 :goto_0

    .line 406
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 408
    .restart local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_2

    .line 409
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_PAUSED but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    goto/16 :goto_0

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 414
    goto/16 :goto_0

    .line 397
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_3
    invoke-static {p3, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 398
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Float;>;"
    if-nez v0, :cond_3

    .line 399
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_IN_PROGRESS but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    .line 403
    goto/16 :goto_0

    .line 386
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/Float;>;"
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 388
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_4

    .line 389
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_DOWNLOAD_START but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    goto/16 :goto_0

    .line 393
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 394
    goto/16 :goto_0

    .line 382
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-static {p4, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getQueryRemoteError(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onQueryRemoteThemeFailed(I)V

    .line 383
    goto/16 :goto_0

    .line 358
    :pswitch_6
    const/4 v0, 0x0

    .line 360
    .local v0, "previousSelected":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    .line 363
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->loadSelectedTheme()V

    .line 364
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    .line 367
    .local v1, "currentSelected":Lcom/xiaopeng/xuimanager/theme/Theme;
    const-string/jumbo v2, "xpTheme_ThemeLocalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CODE_RESOURCE_SELECTION_CHANGED: current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 371
    goto/16 :goto_0

    .line 330
    .end local v0    # "previousSelected":Lcom/xiaopeng/xuimanager/theme/Theme;
    .end local v1    # "currentSelected":Lcom/xiaopeng/xuimanager/theme/Theme;
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 332
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_5

    .line 333
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_UPDATE but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    goto/16 :goto_0

    .line 337
    :cond_5
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    .line 338
    .local v1, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->updateTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 340
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 341
    goto/16 :goto_0

    .line 344
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    :cond_6
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 346
    .restart local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_7

    .line 347
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_DELETE but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    goto :goto_0

    .line 351
    :cond_7
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    .line 352
    .restart local v1    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 354
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 355
    goto :goto_0

    .line 374
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    :cond_8
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;

    .line 377
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 378
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 376
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onQueryRemoteThemeSuccess(Ljava/util/List;)V

    .line 379
    goto :goto_0

    .line 316
    .end local v0    # "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    :cond_9
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 318
    .local v0, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_a

    .line 319
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CODE_RESOURCE_ADD but parse resource fail, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    goto :goto_0

    .line 323
    :cond_a
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    .line 324
    .restart local v1    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/theme/Themes;->addTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 326
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 327
    nop

    .line 439
    .end local v0    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v1    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addTheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->themeResourceHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->themeResourceHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->themeResourceHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Tu2voy-dc3PImyNWGiYo5Y2wvNs;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Tu2voy-dc3PImyNWGiYo5Y2wvNs;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 155
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadTheme: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeToOperationResource(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 157
    return-void
.end method

.method public debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 452
    if-eqz p2, :cond_c

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 456
    :cond_0
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    move v1, v0

    .line 457
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 458
    aget-object v2, p2, v1

    .line 459
    .local v2, "arg":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x5db

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5

    const/16 v5, 0x5df

    if-eq v4, v5, :cond_4

    const/16 v5, 0x5e6

    if-eq v4, v5, :cond_3

    const v5, 0x2acd24b

    if-eq v4, v5, :cond_2

    const v5, 0x16779f69    # 2.0002802E-25f

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-select"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const-string v4, "-list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "-s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x3

    goto :goto_1

    :cond_4
    const-string v4, "-l"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v6

    goto :goto_1

    :cond_5
    const-string v4, "-h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v0

    :cond_6
    :goto_1
    packed-switch v3, :pswitch_data_0

    .end local v2    # "arg":Ljava/lang/String;
    goto/16 :goto_4

    .line 475
    .restart local v2    # "arg":Ljava/lang/String;
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_a

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 477
    aget-object v3, p2, v1

    .line 478
    .local v3, "themeId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "themeid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const/4 v4, 0x0

    .line 480
    .local v4, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    sget-object v5, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 481
    sget-object v4, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 482
    const-string v5, "select default theme!"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 484
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v5

    .line 485
    .local v5, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    if-eqz v5, :cond_8

    .line 487
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/theme/Themes;->resourceInfoToTheme(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v4

    .line 490
    .end local v5    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 491
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_3

    .line 493
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found theme id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    .end local v3    # "themeId":Ljava/lang/String;
    .end local v4    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    :goto_3
    goto :goto_4

    .line 496
    :cond_a
    const-string v3, "input theme id"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .end local v2    # "arg":Ljava/lang/String;
    goto :goto_4

    .line 471
    .restart local v2    # "arg":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->dumpThemes(Ljava/io/PrintWriter;)V

    .line 472
    goto :goto_4

    .line 461
    :pswitch_2
    const-string v3, "Support cmd:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    const-string v3, "-l/-list: List operation resource"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    const-string v3, "-add $id $type $name $path"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    const-string v3, "-delete $id"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    nop

    .line 457
    .end local v2    # "arg":Ljava/lang/String;
    :goto_4
    add-int/2addr v1, v6

    goto/16 :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_b
    return-void

    .line 453
    :cond_c
    :goto_5
    const-string v0, "please input params! use -h too list supported cmd"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 179
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "value":Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemImagePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 281
    .local v1, "path":Ljava/nio/file/Path;
    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 283
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    const-string/jumbo v2, "xpTheme_ThemeLocalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v0
.end method

.method public getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Boolean;

    .line 192
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 193
    .local v0, "value":Ljava/lang/Boolean;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v0
.end method

.method public getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 228
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 229
    .local v0, "array":[Z
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v0
.end method

.method public getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Integer;

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getColor(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/Integer;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColor: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object v0
.end method

.method public getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 246
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getColorArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 247
    .local v0, "array":[I
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v0
.end method

.method public getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Integer;

    .line 216
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getDimension(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 217
    .local v0, "value":Ljava/lang/Integer;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimension: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v0
.end method

.method public getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 252
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getDimensionArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 253
    .local v0, "array":[I
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimensionArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method public getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x107b24

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getDownloadStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "value":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemImagePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 268
    .local v1, "path":Ljava/nio/file/Path;
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    const-string/jumbo v2, "xpTheme_ThemeLocalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object v0
.end method

.method public getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 300
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemFilePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readBytesFromPath(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 301
    .local v0, "value":[B
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileBytes: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method public getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 294
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemFilePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromPath(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileText: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0
.end method

.method public getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Double;

    .line 204
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getFloat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 205
    .local v0, "value":Ljava/lang/Double;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v0
.end method

.method public getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getFloatArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 241
    .local v0, "array":[D
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloatArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method public getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Integer;

    .line 198
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    .local v0, "value":Ljava/lang/Integer;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInteger: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v0
.end method

.method public getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 234
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getIntegerArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 235
    .local v0, "array":[I
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntegerArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-object v0
.end method

.method public getRemoteThemes()V
    .locals 3

    .line 117
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    const-string v1, "getRemoteThemes"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    const v1, 0x107b24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->queryRemoteResources(ILjava/util/Map;)V

    .line 119
    return-void
.end method

.method public getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 4

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    .line 129
    .local v0, "selected":Lcom/xiaopeng/xuimanager/theme/Theme;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/theme/Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method public getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "key"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getValuesOf(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/theme/Values;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "array":[Ljava/lang/String;
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringArray: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getThemes()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/Theme;>;"
    const-string/jumbo v1, "xpTheme_ThemeLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 446
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 309
    const v0, 0x107b24

    if-eq p3, v0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;-><init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 160
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadTheme: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeToOperationResource(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 162
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 107
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 165
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownloadTheme: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeToOperationResource(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 167
    return-void
.end method

.method public selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 134
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107b24

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 137
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->unselectOperationResource(Ljava/lang/String;)V

    .line 140
    .end local v0    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->selectOperationResource(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 152
    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 3
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 146
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadTheme: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

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

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->themeToOperationResource(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 148
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/theme/ThemeListener;

    .line 112
    const-string/jumbo v0, "xpTheme_ThemeLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
