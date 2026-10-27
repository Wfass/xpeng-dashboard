.class public Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/VuiSceneToolManager$Holder;,
        Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;
    }
.end annotation


# static fields
.field private static REMOVE_FEED_BACK:I = 0x0

.field private static SEND_UPLOAD_MESSAGE:I = 0x0

.field public static final TYPE_ADD:I = 0x2

.field public static final TYPE_BUILD:I = 0x0

.field public static final TYPE_DISPLAY_LOCATION:I = 0x5

.field public static final TYPE_REMOVE:I = 0x3

.field public static final TYPE_UPDATE:I = 0x1

.field public static final TYPE_UPDATEATTR:I = 0x4

.field private static final VUI_RETRY_MAX_COUNT:I = 0x3

.field private static final VUI_SCENE_AUTHORITY:Ljava/lang/String; = "com.xiaopeng.speech.vuiscene"

.field private static final VUI_SCENE_DELETE_URI:Landroid/net/Uri;

.field private static final VUI_SCENE_URI:Landroid/net/Uri;

.field private static final VUI_UPDATE_FAILED_ERRO_CODE:I = -0x1f4


# instance fields
.field private final TAG:Ljava/lang/String;

.field feedbackInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveSceneId:Ljava/lang/String;

.field private mApiRouterHandler:Landroid/os/Handler;

.field private mApiRouterThread:Landroid/os/HandlerThread;

.field private mBinder:Landroid/os/Binder;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsInSpeech:Z

.field private mObserver:Ljava/lang/String;

.field private mObserverPackageName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mProcessName:Ljava/lang/String;

.field private mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field private mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sceneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->SEND_UPLOAD_MESSAGE:I

    .line 93
    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->VUI_SCENE_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene/delete/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    .line 98
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->REMOVE_FEED_BACK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "VuiSceneToolManager"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mBinder:Landroid/os/Binder;

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    .line 755
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    .line 1852
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1853
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    const-string v0, "com.xiaopeng.speechtesttools"

    invoke-static {v0}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->lazyInitThread()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->hasProcessFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Landroid/os/Binder;)Landroid/os/Binder;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Landroid/os/Binder;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->checkUploadScene(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p3, "x3"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 73
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->SEND_UPLOAD_MESSAGE:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "x2"    # Z

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .line 73
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->REMOVE_FEED_BACK:I

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p1
.end method

.method private checkUploadScene(Ljava/lang/String;)V
    .locals 10
    .param p1, "sendSceneId"    # Ljava/lang/String;

    .line 880
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 881
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    .line 882
    .local v0, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v0, :cond_6

    .line 883
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionType(Ljava/lang/String;)I

    move-result v1

    .line 884
    .local v1, "type":I
    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 888
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    .line 887
    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 889
    .local v2, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 890
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 891
    invoke-virtual {p0, v4, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 892
    :cond_1
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 893
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    .line 894
    .local v3, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v3, :cond_2

    .line 895
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 896
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 897
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 898
    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 901
    .end local v3    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    .end local v4    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 902
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    .line 903
    .local v3, "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;
    if-eqz v3, :cond_4

    .line 904
    const/4 v4, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "["

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 906
    .end local v3    # "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;
    :cond_4
    goto :goto_0

    :cond_5
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 907
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    .line 908
    .local v3, "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;
    if-eqz v3, :cond_6

    .line 909
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, "displayLocation":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 911
    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    .line 918
    .end local v0    # "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    .end local v1    # "type":I
    .end local v2    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v3    # "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;
    .end local v5    # "displayLocation":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void
.end method

.method private findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2369
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 2370
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 2371
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v1, :cond_1

    return-object v0

    .line 2372
    :cond_1
    const/4 v0, 0x0

    .line 2373
    .local v0, "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    const/4 v2, 0x0

    .line 2374
    .local v2, "rootView":Landroid/view/View;
    const-string v3, "VuiSceneToolManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findRootView idList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2376
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 2377
    new-instance v3, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v3, v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 2379
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    .line 2380
    .local v3, "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 2381
    const-string v4, "VuiSceneToolManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findRootView subSceneList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    :cond_3
    if-eqz v3, :cond_5

    .line 2384
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2385
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 2386
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object p1, v6

    check-cast p1, Ljava/lang/String;

    .line 2387
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    .line 2388
    if-eqz v0, :cond_4

    .line 2389
    goto :goto_1

    .line 2385
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2394
    .end local v3    # "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_5
    :goto_1
    return-object v0

    .line 2369
    .end local v0    # "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v2    # "rootView":Landroid/view/View;
    :cond_6
    :goto_2
    return-object v0
.end method

.method private findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2342
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 2343
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 2344
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v1, :cond_1

    return-object v0

    .line 2345
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2346
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v2

    .line 2347
    .local v2, "notChildrenViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    if-eqz v2, :cond_4

    .line 2348
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2349
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 2350
    .local v4, "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2351
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 2352
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 2353
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    .line 2355
    :cond_2
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, p2, v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 2356
    if-eqz v5, :cond_3

    .line 2357
    const-string v0, "VuiSceneToolManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findViewWithId:   Tag====  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    .line 2348
    .end local v4    # "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2365
    .end local v2    # "notChildrenViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v3    # "i":I
    :cond_4
    return-object v0

    .line 2342
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_5
    :goto_1
    return-object v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 2535
    const-string v0, "com.xiaopeng.speechtesttools.VuiFusionService"

    return-object v0
.end method

.method private getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2326
    const/4 v0, 0x0

    .line 2327
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 2328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2329
    if-nez v0, :cond_1

    .line 2330
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2331
    if-eqz v0, :cond_0

    .line 2332
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findViewWithId:   Tag====  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2334
    :cond_0
    const-string v1, "VuiSceneToolManager"

    const-string v2, "findViewWithId  View is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2338
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getListView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2457
    if-nez p1, :cond_0

    return-object p1

    .line 2458
    :cond_0
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2461
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 2462
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    .line 2463
    return-object p1

    .line 2465
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2459
    :cond_4
    :goto_0
    return-object p1
.end method

.method private getScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2471
    if-nez p1, :cond_0

    return-object p1

    .line 2472
    :cond_0
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2475
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 2476
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    .line 2477
    return-object p1

    .line 2479
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2473
    :cond_4
    :goto_0
    return-object p1
.end method

.method private handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 246
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 247
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 249
    .local v1, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    .line 251
    .local v2, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v2, :cond_1

    .line 252
    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 255
    .end local v2    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 257
    .end local v1    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    return-void
.end method

.method private hasProcessFeature()Z
    .locals 1

    .line 1777
    const/4 v0, 0x1

    return v0
.end method

.method public static final instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .locals 1

    .line 129
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$Holder;->access$000()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    return-object v0
.end method

.method private isUploadScene(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2485
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUploadScene sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",getTopRunningPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2486
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getTopRunningPackageName()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsInSpeech:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",VuiEngine.sceneMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2485
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2489
    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    const-string v0, "com.xiaopeng.systemui"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2492
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_3

    .line 2493
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2494
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2496
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2497
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v5

    .line 2498
    .local v5, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2499
    return v2

    .line 2501
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 2503
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Dialog"

    .line 2504
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2505
    :cond_4
    return v2

    .line 2507
    :cond_5
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.xiaopeng.carspeechservice"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    .line 2508
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2509
    return v2

    .line 2511
    :cond_6
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.xiaopeng.car.settings"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    .line 2512
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.xiaopeng.carcontrol"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.xiaopeng.chargecontrol"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    .line 2513
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.xiaopeng.napa"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "com.xiaopeng.caraccount"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    .line 2514
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2515
    :cond_8
    return v2

    .line 2517
    :cond_9
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    .line 2518
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2517
    move v1, v2

    goto :goto_1

    .line 2518
    :cond_a
    nop

    .line 2517
    :goto_1
    return v1

    .line 2490
    :cond_b
    :goto_2
    return v2

    .line 2488
    :cond_c
    :goto_3
    return v1
.end method

.method private lazyInitThread()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiSceneToolManager-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mThread:Landroid/os/HandlerThread;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiSceneToolManager-Apirouter-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterThread:Landroid/os/HandlerThread;

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    .line 172
    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$7;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    :cond_0
    return-void
.end method

.method private sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p3, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 2527
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2528
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2529
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    .line 2531
    :cond_0
    return-void
.end method

.method private updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 496
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    const-string v0, "VuiSceneToolManager"

    const-string v1, "updateDisplayLocation  =======   "

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    :cond_1
    return-void
.end method


# virtual methods
.method public addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "parentElementId"    # Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$14;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1038
    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1041
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$15;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1145
    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z

    .line 1918
    return-void
.end method

.method public buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z
    .param p3, "isHardUpload"    # Z

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    :cond_0
    return-void
.end method

.method public checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2004
    move-object/from16 v3, p2

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 2005
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    const-string v0, ""

    return-object v0

    .line 2009
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v0, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 2013
    const-string v4, "elements"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2014
    .local v4, "elements":Lorg/json/JSONArray;
    if-nez v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 2015
    const-string v5, ""

    return-object v5

    .line 2017
    :cond_2
    const/4 v5, 0x0

    .line 2018
    .local v5, "elementStatus":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 2019
    .local v6, "elementsResult":Lorg/json/JSONArray;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 2036
    :cond_3
    move-object v8, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v8, "elementStatus":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_7

    .line 2037
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2038
    .local v9, "element":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 2039
    const-string v10, "elementId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2040
    .local v10, "subViewId":Ljava/lang/String;
    const-string v11, "scrollViewId"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2041
    .local v11, "scrollViewID":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v12

    .line 2042
    const-string v12, "elementId"

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2043
    invoke-virtual {v1, v2, v10}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v12

    .line 2044
    .local v12, "subViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    invoke-virtual {v1, v2, v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v13

    .line 2045
    .local v13, "scrollViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v12, :cond_6

    iget-object v14, v12, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v14, :cond_6

    .line 2046
    const/4 v14, 0x1

    if-eqz v13, :cond_5

    iget-object v15, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 2047
    iget-object v15, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v15, v15, Landroid/widget/ScrollView;

    if-eqz v15, :cond_6

    .line 2049
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 2050
    .local v15, "scrollBounds":Landroid/graphics/Rect;
    iget-object v7, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2051
    iget-object v7, v12, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7, v15}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2053
    const-string v7, "visible"

    invoke-virtual {v8, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2058
    const/4 v14, 0x0

    goto :goto_1

    .line 2056
    :cond_4
    const-string v7, "visible"

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2058
    .end local v15    # "scrollBounds":Landroid/graphics/Rect;
    :goto_1
    nop

    .line 2064
    move v7, v14

    goto :goto_2

    .line 2060
    :cond_5
    const/4 v7, 0x0

    const-string v15, "visible"

    invoke-virtual {v8, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .end local v10    # "subViewId":Ljava/lang/String;
    .end local v11    # "scrollViewID":Ljava/lang/String;
    .end local v12    # "subViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v13    # "scrollViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    goto :goto_2

    .line 2064
    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2036
    .end local v9    # "element":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2067
    .end local v5    # "i":I
    :cond_7
    move-object v5, v8

    .end local v8    # "elementStatus":Lorg/json/JSONObject;
    .local v5, "elementStatus":Lorg/json/JSONObject;
    :goto_3
    const-string v7, "elements"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2068
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 2069
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "elements":Lorg/json/JSONArray;
    .end local v5    # "elementStatus":Lorg/json/JSONObject;
    .end local v6    # "elementsResult":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 2070
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2072
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 2004
    :cond_8
    :goto_4
    const-string v0, ""

    return-object v0
.end method

.method public cleanExpiredSceneTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 1829
    if-nez p1, :cond_0

    return-void

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1831
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$23;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1849
    :cond_1
    return-void
.end method

.method public destroyScene(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 1786
    if-nez p1, :cond_0

    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1788
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$22;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$22;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1826
    :cond_1
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;

    .line 1660
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 1662
    :cond_1
    const-string v0, ""

    .line 1664
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1665
    const-string v1, ""

    return-object v1

    .line 1695
    :cond_2
    if-eqz p3, :cond_4

    .line 1696
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1697
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(Ljava/lang/String;)V

    .line 1699
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;

    invoke-direct {v2, p0, p1, p4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :cond_4
    goto :goto_0

    .line 1760
    :catch_0
    move-exception v1

    .line 1761
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene--------------e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1764
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1765
    const-string v1, ""

    return-object v1

    .line 1767
    :cond_5
    return-object v0

    .line 1660
    .end local v0    # "result":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;

    .line 1781
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 1782
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;
    .param p5, "isTransform"    # Z

    .line 337
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void

    .line 337
    :cond_3
    :goto_0
    return-void
.end method

.method public findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2273
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_9

    .line 2275
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v1

    .line 2277
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v1, :cond_1

    .line 2278
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findViewFromSceneInfo elementId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",sceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    return-object v1

    .line 2282
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v2

    .line 2283
    .local v2, "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    const-string v3, "VuiSceneToolManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findView elementId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",rootView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2286
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, v3, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 2287
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v5, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_8

    .line 2289
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    .line 2290
    .local v3, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const-string v4, "VuiSceneToolManager"

    const-string v5, "findView view by rootview"

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    if-nez v3, :cond_5

    move-object v4, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 2292
    .local v4, "rootView":Landroid/view/View;
    :goto_2
    if-eqz v4, :cond_c

    .line 2293
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 2294
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_b

    .line 2295
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v6

    .line 2296
    .local v6, "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    if-nez v6, :cond_6

    move v8, v7

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 2297
    .local v8, "size":I
    :goto_3
    nop

    .local v7, "i":I
    :goto_4
    if-ge v7, v8, :cond_a

    .line 2298
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2299
    .local v9, "curSceneId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2300
    move-object v10, v0

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v10

    .line 2301
    .local v10, "curSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :goto_5
    if-nez v10, :cond_8

    move-object v11, v0

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v11

    :goto_6
    move-object v4, v11

    .line 2302
    if-eqz v4, :cond_9

    .line 2303
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 2304
    if-eqz v5, :cond_9

    .line 2305
    new-instance v11, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v11, v5, v9}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v0, v11

    .line 2306
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    nop

    .line 2310
    move-object v1, v0

    goto :goto_7

    .line 2297
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v9    # "curSceneId":Ljava/lang/String;
    .end local v10    # "curSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2310
    .end local v6    # "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_a
    :goto_7
    goto :goto_8

    .line 2311
    :cond_b
    new-instance v6, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v6, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 2316
    .end local v3    # "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_c
    :goto_8
    return-object v1

    .line 2317
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v2    # "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :catch_0
    move-exception v1

    .line 2318
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findView e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2319
    return-object v0

    .line 2273
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_9
    return-object v0
.end method

.method public findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 2399
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findViewWithId  ===  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2403
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2405
    const/4 v0, 0x0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2406
    .local v0, "vuiElementId":Ljava/lang/String;
    const-string v1, ""

    .line 2407
    .local v1, "lastElementID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 2408
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-le v2, v4, :cond_6

    .line 2410
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2411
    .local v2, "ids":[Ljava/lang/String;
    const-string v6, ""

    .line 2412
    .local v6, "po":Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 2413
    aget-object v6, v2, v5

    goto :goto_0

    .line 2416
    :cond_1
    const-string v7, "_"

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v5

    const-string v9, "_"

    const-string v10, "_"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2419
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_5

    .line 2421
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 2422
    .local v4, "view_id":I
    const-string v7, "VuiSceneToolManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findViewWithId view tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 2424
    .local v7, "listView":Landroid/view/View;
    if-nez v7, :cond_2

    return-object v3

    .line 2425
    :cond_2
    instance-of v3, v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    .line 2426
    move-object v3, v7

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2428
    :cond_3
    array-length v3, v2

    if-gt v3, v8, :cond_4

    .line 2429
    return-object p2

    .line 2431
    :cond_4
    const-string v3, "_"

    const-string v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2432
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 2435
    .end local v4    # "view_id":I
    .end local v7    # "listView":Landroid/view/View;
    :cond_5
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2436
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 2437
    .local v3, "view_id":I
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2438
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 2441
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "view_id":I
    .end local v6    # "po":Ljava/lang/String;
    :cond_6
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2442
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 2445
    :cond_7
    return-object v3

    .line 2449
    .end local v0    # "vuiElementId":Ljava/lang/String;
    .end local v1    # "lastElementID":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2450
    .local v0, "view_id":I
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2451
    return-object p2

    .line 2400
    .end local v0    # "view_id":I
    :cond_9
    :goto_1
    return-object p2
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    move-object/from16 v1, p1

    .line 2076
    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 2077
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    return-object v3

    .line 2080
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v4

    .line 2081
    .local v4, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    invoke-virtual {v4, v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v5

    .line 2082
    .local v5, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v5, :cond_2

    return-object v3

    .line 2084
    :cond_2
    const/4 v0, 0x0

    .line 2085
    .local v0, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v6

    .line 2086
    .local v6, "is3DApp":Z
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v7

    .line 2087
    .local v7, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v6, :cond_4

    .line 2089
    if-eqz v7, :cond_3

    instance-of v8, v7, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v8, :cond_4

    .line 2090
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    .line 2094
    .end local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .local v8, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_4
    move-object v8, v0

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    .line 2095
    if-eqz v8, :cond_8

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    .line 2096
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    move-object v11, v0

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 2097
    .local v11, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    instance-of v0, v11, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_6

    .line 2098
    move-object v0, v11

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v12

    .line 2099
    .local v12, "props":Lorg/json/JSONObject;
    if-eqz v12, :cond_6

    const-string v0, "disableTpl"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2101
    :try_start_0
    const-string v0, "disableTpl"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2102
    .local v0, "disableTpl":Z
    if-eqz v0, :cond_5

    .line 2103
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 2104
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "canScrollUp"

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2105
    const-string v14, "canScrollDown"

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2106
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v14

    .line 2110
    .end local v0    # "disableTpl":Z
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    goto :goto_0

    .line 2108
    :catch_0
    move-exception v0

    .line 2114
    .end local v12    # "props":Lorg/json/JSONObject;
    :cond_6
    :goto_0
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v12

    .line 2115
    .local v12, "canScrollUp":Z
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v13

    .line 2116
    .local v13, "canScrollDown":Z
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v9

    .line 2117
    .local v9, "canScrollLeft":Z
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    move v10, v0

    .line 2119
    .local v10, "canScrollRight":Z
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2120
    .local v0, "jsonObject":Lorg/json/JSONObject;
    move-object v14, v11

    check-cast v14, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v14}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiAction()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2121
    const-string v14, "canScrollUp"

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2122
    const-string v14, "canScrollDown"

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2124
    :cond_7
    const-string v14, "canScrollLeft"

    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2125
    const-string v14, "canScrollRight"

    invoke-virtual {v0, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2127
    :goto_1
    const-string v14, "VuiSceneToolManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getElementState jsonObject: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sceneId:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",elementId:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 2129
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 2130
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "VuiSceneToolManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getElementState e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2131
    const/4 v3, 0x0

    return-object v3

    .line 2134
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v9    # "canScrollLeft":Z
    .end local v10    # "canScrollRight":Z
    .end local v11    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .end local v12    # "canScrollUp":Z
    .end local v13    # "canScrollDown":Z
    :cond_8
    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2135
    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2138
    :cond_9
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2139
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "canScrollUp"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2140
    const-string v3, "canScrollDown"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2141
    const-string v3, "VuiSceneToolManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getElementState jsonObject: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",sceneId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",elementId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 2143
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 2144
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "VuiSceneToolManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getElementState e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2145
    const/4 v3, 0x0

    return-object v3

    .line 2149
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_a
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2150
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v3

    .line 2151
    .local v3, "extraPage":I
    if-eq v3, v9, :cond_b

    .line 2154
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2155
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "canScrollLeft"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2156
    const-string v9, "canScrollRight"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2157
    const-string v9, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getElementState jsonObject: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",sceneId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",elementId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v9

    .line 2159
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    .line 2160
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getElementState e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    const/4 v9, 0x0

    return-object v9

    .line 2164
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_b
    if-eqz v8, :cond_d

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 2165
    const/4 v0, 0x0

    .line 2166
    .local v0, "viewPager":Landroidx/viewpager/widget/ViewPager;
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v11, v11, Landroidx/viewpager/widget/ViewPager;

    if-nez v11, :cond_c

    .line 2167
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 2171
    .end local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .local v11, "viewPager":Landroidx/viewpager/widget/ViewPager;
    :goto_2
    move-object v11, v0

    goto :goto_3

    .line 2169
    .end local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .restart local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_c
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    move-object v0, v11

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    goto :goto_2

    .line 2171
    .end local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .restart local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :goto_3
    if-eqz v11, :cond_d

    .line 2173
    :try_start_4
    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    .line 2174
    .local v0, "canLeft":Z
    invoke-virtual {v11, v10}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v9

    .line 2175
    .local v9, "canRight":Z
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2176
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "canScrollLeft"

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2177
    const-string v12, "canScrollRight"

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2178
    const-string v12, "VuiSceneToolManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getElementState jsonObject: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",sceneId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",elementId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v12

    .line 2180
    .end local v0    # "canLeft":Z
    .end local v9    # "canRight":Z
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    .line 2181
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getElementState e:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2182
    const/4 v9, 0x0

    return-object v9

    .line 2187
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "extraPage":I
    .end local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_d
    goto/16 :goto_c

    .line 2188
    :cond_e
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 2189
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v9}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 2191
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2192
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2193
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 2194
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_12

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_f

    goto/16 :goto_6

    .line 2211
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 2212
    .local v11, "rect":Landroid/graphics/Rect;
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2215
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2216
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 2217
    .local v12, "scrollY":I
    const-string v13, "canScrollUp"

    if-nez v12, :cond_10

    move v14, v3

    goto :goto_4

    :cond_10
    move v14, v10

    :goto_4
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2218
    const-string v13, "canScrollDown"

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v12

    iget-object v15, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-lt v14, v15, :cond_11

    goto :goto_5

    :cond_11
    move v3, v10

    :goto_5
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2219
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object v3

    .line 2222
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollY":I
    :catch_5
    move-exception v0

    .line 2223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2224
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getElementState e:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2225
    const/4 v12, 0x0

    return-object v12

    .line 2195
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_12
    :goto_6
    const/4 v12, 0x0

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2196
    .local v11, "child":Landroid/view/View;
    if-nez v11, :cond_13

    return-object v12

    .line 2198
    :cond_13
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2199
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 2200
    .restart local v12    # "scrollY":I
    const-string v13, "canScrollUp"

    if-nez v12, :cond_14

    move v14, v3

    goto :goto_7

    :cond_14
    move v14, v10

    :goto_7
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2201
    const-string v13, "canScrollDown"

    iget-object v14, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-ne v14, v15, :cond_15

    goto :goto_8

    :cond_15
    move v3, v10

    :goto_8
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2202
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-object v3

    .line 2205
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollY":I
    :catch_6
    move-exception v0

    .line 2206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2207
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getElementState e:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2208
    const/4 v3, 0x0

    return-object v3

    .line 2229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "child":Landroid/view/View;
    :cond_16
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2230
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 2231
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_17

    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    goto/16 :goto_b

    .line 2234
    .restart local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    :cond_17
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2235
    .local v11, "parent":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    if-ge v0, v12, :cond_1a

    .line 2237
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2238
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 2239
    .local v12, "scrollX":I
    const-string v13, "VuiSceneToolManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view width:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",parent:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",scrollX:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2240
    const-string v13, "canScrollLeft"

    if-nez v12, :cond_18

    move v14, v3

    goto :goto_9

    :cond_18
    move v14, v10

    :goto_9
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2241
    const-string v13, "canScrollRight"

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    iget-object v15, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    if-lt v14, v15, :cond_19

    goto :goto_a

    :cond_19
    move v3, v10

    :goto_a
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2242
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return-object v3

    .line 2245
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollX":I
    :catch_7
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2247
    const-string v3, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getElementState e:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2248
    const/4 v3, 0x0

    return-object v3

    .line 2255
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v11    # "parent":Landroid/view/View;
    :cond_1a
    :goto_b
    nop

    .line 2267
    :cond_1b
    :goto_c
    const/4 v3, 0x0

    return-object v3

    .line 2257
    :cond_1c
    if-eqz v8, :cond_1e

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 2258
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v3, 0x0

    goto :goto_d

    :cond_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_d
    invoke-virtual {v5, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setEnabled(Ljava/lang/Boolean;)V

    .line 2260
    :cond_1e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2261
    .local v0, "mGson":Lcom/google/gson/Gson;
    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2262
    .local v3, "result":Ljava/lang/String;
    const-string v9, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getElementState:  result:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    return-object v3

    .line 2076
    .end local v0    # "mGson":Lcom/google/gson/Gson;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    .end local v5    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v6    # "is3DApp":Z
    .end local v7    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v8    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_1f
    :goto_e
    const/4 v3, 0x0

    return-object v3
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 5

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    return-object v0

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 726
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v1, "main"

    .line 728
    .local v1, "processName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 729
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 730
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 731
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 734
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    const-string v3, "main"

    move-object v1, v3

    goto :goto_0

    .line 737
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 739
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    .line 740
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    nop

    .line 746
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 748
    :catch_0
    move-exception v4

    .line 749
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 750
    :goto_1
    nop

    .line 740
    :goto_2
    return-object v3

    .line 744
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 741
    :catch_1
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 745
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 746
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 748
    :catch_2
    move-exception v2

    .line 749
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 750
    :cond_3
    :goto_3
    nop

    .line 752
    :goto_4
    return-object v1

    .line 744
    :goto_5
    nop

    .line 745
    if-eqz v0, :cond_4

    .line 746
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 748
    :catch_3
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 750
    :cond_4
    :goto_6
    nop

    .line 751
    :goto_7
    throw v2
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPackageVersion()Ljava/lang/String;
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleAllSceneCache(Z)V
    .locals 5
    .param p1, "isAllRemove"    # Z

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 611
    .local v2, "sceneId":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 613
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 614
    .local v3, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v3, :cond_1

    .line 615
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 616
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .end local v3    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_1
    goto :goto_1

    .line 619
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    .line 620
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 621
    .local v3, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    invoke-virtual {v3, v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 622
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeOtherCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAllSceneCache e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public handleSceneDataInfo()V
    .locals 9

    .line 578
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 579
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 580
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 582
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 583
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 586
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 589
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 590
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 591
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 592
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 593
    .restart local v3    # "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 594
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 595
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 596
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 597
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 598
    .local v6, "sceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 599
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v8, "primary"

    invoke-virtual {p0, v6, v7, v1, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 601
    .end local v6    # "sceneId":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 603
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 604
    :cond_4
    return-void
.end method

.method public initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subSceneId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;

    .line 1921
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSubSceneInfo subSceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1922
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 1923
    .local v0, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 1926
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 1927
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 1928
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    return-void
.end method

.method public isInSpeech()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    return v0
.end method

.method public isNaviTop()Z
    .locals 3

    .line 401
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 402
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "isNaviTop"

    .line 403
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 405
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_1
    return-void

    .line 311
    :cond_2
    :goto_0
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementGroupId"    # Ljava/lang/String;
    .param p3, "handleCache"    # Z

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1299
    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "upload"    # Z
    .param p3, "keepCache"    # Z
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 1981
    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    :cond_0
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "handleCache"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    .line 921
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 922
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "handleCache"    # Z
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "isSendVuiProvider"    # Z

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 927
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 928
    sget v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->SEND_UPLOAD_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 929
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 930
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 931
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 932
    return-void
.end method

.method public declared-synchronized sendSceneData(Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 833
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    goto :goto_0

    .line 831
    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 872
    .restart local p1    # "sceneId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 874
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSceneData e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 831
    .end local p1    # "sceneId":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 2000
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    .line 2001
    return-void
.end method

.method public setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p1, "engine"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 114
    return-void
.end method

.method public setFeatureState(Z)V
    .locals 8
    .param p1, "b"    # Z

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eq v0, p1, :cond_7

    .line 204
    if-eqz p1, :cond_6

    .line 205
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 206
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 210
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 213
    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 218
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .restart local v3    # "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 223
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 224
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 225
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 227
    .local v6, "sceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 228
    invoke-direct {p0, v6, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v6    # "sceneId":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 232
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    goto :goto_1

    .line 233
    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_5
    goto :goto_3

    .line 234
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handleAllSceneCache(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handleSceneDataInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_7
    :goto_3
    goto :goto_4

    .line 238
    :catch_0
    move-exception v0

    .line 242
    :goto_4
    return-void
.end method

.method public setInSpeech(Z)V
    .locals 1
    .param p1, "inSpeech"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    .line 107
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setObserverPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 433
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    .line 759
    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 1984
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    .line 1985
    return-void
.end method

.method public setmPackageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageVersion"    # Ljava/lang/String;

    .line 1988
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    .line 1989
    return-void
.end method

.method public storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "soundArea"    # I
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeFeedbackInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",soundArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v0, p3

    .line 263
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 265
    .local v1, "msg":Landroid/os/Message;
    sget v2, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->REMOVE_FEED_BACK:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 266
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 268
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/apirouter/Utils;->isCorrectObserver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "VuiSceneToolManager"

    const-string v1, "\u6ce8\u518cobserver\u4e0d\u5408\u6cd5,observer\u662fapp\u7684\u5305\u540d\u52a0observer\u7684\u7c7b\u540d\u7ec4\u6210"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserver:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->registerReceiver()V

    .line 159
    return-void
.end method

.method public subscribe(Z)V
    .locals 2
    .param p1, "needCheckEnterScene"    # Z

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 438
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 454
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->registerReceiver()V

    .line 455
    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 765
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    :cond_1
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "VuiSceneToolManager"

    const-string v1, "mObserver == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    :cond_1
    return-void
.end method

.method public updateAppAreaName(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method public updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1504
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$20;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    .line 307
    :cond_0
    return-void
.end method

.method public updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1501
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "feedback"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1302
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1336
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "feedback"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1340
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$18;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1380
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    .local v0, "soundArea":I
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vuiFeedBack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",soundArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    .end local v0    # "soundArea":I
    :cond_1
    return-void
.end method
