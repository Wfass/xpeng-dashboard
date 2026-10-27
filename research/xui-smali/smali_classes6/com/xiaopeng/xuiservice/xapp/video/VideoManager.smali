.class public Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.java"


# static fields
.field public static final CODE_FAILED:I = 0x1

.field public static final CODE_NO_MATCH:I = 0x3

.field public static final CODE_NO_X_MEMBER:I = 0x4

.field public static final CODE_PLAYER_ERROR:I = 0x2

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_UN_ANTICIPATE:I = 0x5

.field public static final CODE_VERSION_ERROR:I = 0x6

.field private static final TAG:Ljava/lang/String; = "VideoManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;


# instance fields
.field private mActivityChangedListener:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

.field private mHandlerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestTargetApp:Ljava/lang/String;

.field private mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 86
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mActivityChangedListener:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->initHandlers()V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->registerActivityChangedListener()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;
    .locals 2

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    return-object v0
.end method

.method private initHandlers()V
    .locals 5

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.qiyi.video.iv"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.youku.car"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/YOUKUVideoHandler;

    const-string v3, "IdYouKu"

    const-string v4, "com.youku.car"

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/YOUKUVideoHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.youkuchild.android.car"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/YOUKUVideoHandler;

    const-string v3, "IdYouKuChild"

    const-string v4, "com.youkuchild.android.car"

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/YOUKUVideoHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "cn.cmvideo.car.play"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/MIGUVideoHandler;

    const-string v3, "IdMigu"

    const-string v4, "cn.cmvideo.car.play"

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/MIGUVideoHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private isVideoApp(Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 306
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerActivityChangedListener()V
    .locals 2

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mWindowStatusCallback:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->addWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V

    .line 69
    return-void
.end method


# virtual methods
.method public backward(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 174
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->backward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 177
    :cond_0
    return-void
.end method

.method public clarityDown(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 237
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->clarityDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 240
    :cond_0
    return-void
.end method

.method public claritySet(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 244
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->claritySet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 247
    :cond_0
    return-void
.end method

.method public clarityUP(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 230
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->clarityUP(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 233
    :cond_0
    return-void
.end method

.method public collect(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 265
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->collect(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 268
    :cond_0
    return-void
.end method

.method public collectCancel(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 272
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->collectCancel(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 275
    :cond_0
    return-void
.end method

.method public end(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 223
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->end(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 226
    :cond_0
    return-void
.end method

.method public forward(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 167
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->forward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 170
    :cond_0
    return-void
.end method

.method public getQuerySortPackage(I)Ljava/util/List;
    .locals 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getXpPackageInfo(I)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 336
    .local v1, "topVideoApp":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->isVideoApp(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 338
    .local v2, "topVideoAppName":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    const-string v3, "VideoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQuerySortPackage displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " &topVideoAppName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v2    # "topVideoAppName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    const-string v2, "VideoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQuerySortPackage displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &mLatestTargetApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 350
    const-string v4, "VideoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getQuerySortPackage displayId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " &pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 354
    :cond_3
    return-object v0
.end method

.method public getQuerySortPackageString(I)Ljava/lang/String;
    .locals 5
    .param p1, "displayId"    # I

    .line 358
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getQuerySortPackage(I)Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 367
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public getTargetApp(I)Ljava/lang/String;
    .locals 6
    .param p1, "displayId"    # I

    .line 310
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "primaryPackage":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 312
    .local v1, "curVideoApp":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->isVideoApp(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 314
    .local v2, "curVideoAppName":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    const-string v3, "VideoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTargetApp displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " &curVideoAppName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-object v2

    .line 319
    .end local v2    # "curVideoAppName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "VideoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTargetApp displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &mLatestTargetApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mLatestTargetApp:Ljava/lang/String;

    return-object v2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v2, "VideoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTargetApp displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " &pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-object v3

    .line 329
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 330
    :cond_3
    const-string v2, ""

    return-object v2
.end method

.method public isSupportVideoControl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 110
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public mediaQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "program"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "raw"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;

    .line 371
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getQuerySortPackageString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "sortPkg":Ljava/lang/String;
    return-void
.end method

.method public next(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 153
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->next(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 156
    :cond_0
    return-void
.end method

.method public pause(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 188
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->pause(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 191
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;
    .param p3, "programName"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 115
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    const-wide/16 v1, 0x0

    .line 116
    .local v1, "delayTime":J
    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setPackageScreenId(Ljava/lang/String;I)Z

    move-result v3

    .line 119
    .local v3, "setResult":Z
    if-eqz v3, :cond_0

    .line 120
    const-wide/16 v1, 0xfa

    .line 124
    .end local v1    # "delayTime":J
    .end local v3    # "setResult":Z
    .local v7, "delayTime":J
    :cond_0
    move-wide v7, v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v9

    new-instance v10, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    invoke-virtual {v9, v10, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    move-wide v1, v7

    .end local v7    # "delayTime":J
    .restart local v1    # "delayTime":J
    :cond_1
    return-void
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "programName"    # Ljava/lang/String;
    .param p4, "artistName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 135
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1, p3, p4, p5}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 138
    :cond_0
    return-void
.end method

.method public prev(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 146
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->prev(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 149
    :cond_0
    return-void
.end method

.method public resume(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 195
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->resume(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 198
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;ILcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 160
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->set(ILcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setBarrageClose(Ljava/lang/String;ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 300
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->setBarrageClose(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setMediaPlayMode(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 258
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->setMediaPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 261
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/String;DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # D
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 181
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->setTime(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setVideoPlayMode(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 251
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->setVideoPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 254
    :cond_0
    return-void
.end method

.method public skipAllModeSet(Ljava/lang/String;ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "skip"    # Z
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 293
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->skipAllModeSet(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 296
    :cond_0
    return-void
.end method

.method public skipBegin(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 279
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->skipBegin(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 282
    :cond_0
    return-void
.end method

.method public skipEnd(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 286
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->skipEnd(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 289
    :cond_0
    return-void
.end method

.method public speedDown(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 209
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->speedDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 212
    :cond_0
    return-void
.end method

.method public speedSet(Ljava/lang/String;DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "speed"    # D
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 216
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->speedSet(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 219
    :cond_0
    return-void
.end method

.method public speedUp(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    .line 202
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->speedUp(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 205
    :cond_0
    return-void
.end method
