.class public Lcom/xiaopeng/speech/vui/VuiSceneManager;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;,
        Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;
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

.field private mLocalVuiRouterHandler:Landroid/os/Handler;

.field private mLocalVuiThread:Landroid/os/HandlerThread;

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

    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->SEND_UPLOAD_MESSAGE:I

    .line 105
    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene/delete/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    .line 110
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->REMOVE_FEED_BACK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "VuiSceneManager"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->TAG:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    .line 113
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    .line 115
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    .line 239
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    .line 968
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    .line 2126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->lazyInitThread()V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager$1;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/speech/vui/VuiSceneManager;Landroid/os/Binder;)Landroid/os/Binder;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Landroid/os/Binder;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->hasProcessFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->checkUploadScene(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->insertVuiSceneToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->deleteVuiSceneById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p3, "x3"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->SEND_UPLOAD_MESSAGE:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "x2"    # Z

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->REMOVE_FEED_BACK:I

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p1
.end method

.method private checkUploadScene(Ljava/lang/String;)V
    .locals 10
    .param p1, "sendSceneId"    # Ljava/lang/String;

    .line 1093
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1094
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 1095
    .local v0, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_6

    .line 1096
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v1

    .line 1097
    .local v1, "type":I
    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1098
    return-void

    .line 1100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1101
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    .line 1100
    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 1102
    .local v2, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 1103
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1104
    invoke-virtual {p0, v4, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1105
    :cond_1
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1106
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 1107
    .local v3, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v3, :cond_2

    .line 1108
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1109
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1110
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1111
    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 1114
    .end local v3    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v4    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 1115
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    .line 1116
    .local v3, "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;
    if-eqz v3, :cond_4

    .line 1117
    const/4 v4, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

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

    invoke-virtual {p0, v4, v5, v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 1119
    .end local v3    # "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;
    :cond_4
    goto :goto_0

    :cond_5
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 1120
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    .line 1121
    .local v3, "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    if-eqz v3, :cond_6

    .line 1122
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, "displayLocation":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1124
    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    .line 1131
    .end local v0    # "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v1    # "type":I
    .end local v2    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v3    # "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    .end local v5    # "displayLocation":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void
.end method

.method private deleteVuiSceneById(Ljava/lang/String;)V
    .locals 13
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 409
    const-wide/16 v0, -0x1

    .line 410
    .local v0, "rowId":J
    const/4 v2, 0x0

    .line 411
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 413
    .local v3, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "scene_id = ?"

    move-object v10, v4

    .line 414
    .local v10, "where":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v8, v12

    const/4 v9, 0x0

    move-object v4, v3

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 415
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    .line 418
    :cond_0
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-virtual {v3, v4, v10, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 419
    .local v4, "count":I
    if-lez v4, :cond_1

    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    .line 420
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 421
    .local v5, "deleteUri":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "count":I
    .end local v5    # "deleteUri":Landroid/net/Uri;
    .end local v10    # "where":Ljava/lang/String;
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    throw v4

    .line 424
    :catch_0
    move-exception v4

    .line 426
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    nop

    .line 428
    return-void
.end method

.method private findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2755
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 2756
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 2757
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v1, :cond_1

    return-object v0

    .line 2758
    :cond_1
    const/4 v0, 0x0

    .line 2759
    .local v0, "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    const/4 v2, 0x0

    .line 2760
    .local v2, "rootView":Landroid/view/View;
    const-string v3, "VuiSceneManager"

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

    .line 2761
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2762
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 2763
    new-instance v3, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v3, v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 2765
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    .line 2766
    .local v3, "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 2767
    const-string v4, "VuiSceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findRootView subSceneList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    :cond_3
    if-eqz v3, :cond_5

    .line 2770
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2771
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 2772
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object p1, v6

    check-cast p1, Ljava/lang/String;

    .line 2773
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    .line 2774
    if-eqz v0, :cond_4

    .line 2775
    goto :goto_1

    .line 2771
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2780
    .end local v3    # "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_5
    :goto_1
    return-object v0

    .line 2755
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

    .line 2728
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 2729
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 2730
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v1, :cond_1

    return-object v0

    .line 2731
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2732
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v2

    .line 2733
    .local v2, "notChildrenViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    if-eqz v2, :cond_4

    .line 2734
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2735
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 2736
    .local v4, "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2737
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 2738
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 2739
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    .line 2741
    :cond_2
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, p2, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 2742
    if-eqz v5, :cond_3

    .line 2743
    const-string v0, "VuiSceneManager"

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

    .line 2744
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    .line 2734
    .end local v4    # "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2751
    .end local v2    # "notChildrenViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v3    # "i":I
    :cond_4
    return-object v0

    .line 2728
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_5
    :goto_1
    return-object v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 2991
    invoke-static {}, Lcom/xiaopeng/speech/apirouter/Utils;->isXpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2992
    const-string v0, "com.xiaopeng.speechtesttools.VuiFusionService"

    return-object v0

    .line 2994
    :cond_0
    const-string v0, "com.xiaopeng.carspeechservice.VuiFusionService"

    return-object v0
.end method

.method private getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2712
    const/4 v0, 0x0

    .line 2713
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 2714
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2715
    if-nez v0, :cond_1

    .line 2716
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2717
    if-eqz v0, :cond_0

    .line 2718
    const-string v1, "VuiSceneManager"

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

    .line 2720
    :cond_0
    const-string v1, "VuiSceneManager"

    const-string v2, "findViewWithId  View is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2724
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getListView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2843
    if-nez p1, :cond_0

    return-object p1

    .line 2844
    :cond_0
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2847
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 2848
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    .line 2849
    return-object p1

    .line 2851
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2845
    :cond_4
    :goto_0
    return-object p1
.end method

.method private getScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2857
    if-nez p1, :cond_0

    return-object p1

    .line 2858
    :cond_0
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 2862
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    .line 2863
    return-object p1

    .line 2865
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2859
    :cond_4
    :goto_0
    return-object p1
.end method

.method private handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 243
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    .line 247
    .local v2, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 251
    .end local v2    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 253
    .end local v1    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    return-void
.end method

.method private hasProcessFeature()Z
    .locals 1

    .line 2043
    const/4 v0, 0x1

    return v0
.end method

.method private insertVuiSceneToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "sceneData"    # Ljava/lang/String;
    .param p3, "sceneType"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 331
    move-object/from16 v9, p3

    const-string v0, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVuiSceneToProvider:sceneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v10, v0

    .line 335
    .local v10, "cr":Landroid/content/ContentResolver;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "scene_id"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "scene_info"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v11, p2

    :try_start_1
    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "scene_type"

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object v12, v2

    .line 341
    .local v12, "updateUri":Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-wide v13, v2

    .line 343
    .local v13, "rowId":J
    if-eqz v12, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-lez v2, :cond_0

    .line 344
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertVuiSceneToProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x0

    invoke-virtual {v10, v12, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_2

    .line 347
    :cond_0
    const/4 v2, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x31ffc737    # -5.378013E8f

    if-eq v3, v4, :cond_3

    const v4, 0x59bc66e

    if-eq v3, v4, :cond_2

    const v4, 0x63a518c2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "display"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "build"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "update"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v12    # "updateUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    goto/16 :goto_2

    .line 356
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local v12    # "updateUri":Landroid/net/Uri;
    .restart local v13    # "rowId":J
    :pswitch_0
    const-wide/16 v2, -0x1f4

    cmp-long v2, v13, v2

    if-nez v2, :cond_6

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 358
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    .line 357
    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 359
    .local v2, "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 360
    .local v3, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v3, :cond_6

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, "isRebuildSuccess":Z
    invoke-virtual {v3, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 363
    .local v5, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 364
    invoke-virtual {v3, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 365
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "jsonBuildStr":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v7, "rebuildVaule":Landroid/content/ContentValues;
    const-string v15, "scene_id"

    invoke-virtual {v7, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v15, "scene_info"

    invoke-virtual {v7, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v15, "scene_type"

    move-object/from16 v16, v2

    const-string v2, "build"

    .end local v2    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v16, "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v7, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {v1, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v2

    move v4, v2

    .end local v6    # "jsonBuildStr":Ljava/lang/String;
    .end local v7    # "rebuildVaule":Landroid/content/ContentValues;
    goto :goto_1

    .line 372
    .end local v16    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v2    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v16    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :goto_1
    if-eqz v4, :cond_6

    .line 373
    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v2

    .line 374
    .local v2, "isRetryUpdate":Z
    const-string v6, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insertVuiSceneToProvider update retryResult"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v2    # "isRetryUpdate":Z
    .end local v3    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v4    # "isRebuildSuccess":Z
    .end local v5    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v12    # "updateUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    .end local v16    # "buildVuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    goto :goto_2

    .line 350
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local v12    # "updateUri":Landroid/net/Uri;
    .restart local v13    # "rowId":J
    :pswitch_1
    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v2

    .line 351
    .local v2, "retryResult":Z
    const-string v3, "VuiSceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVuiSceneToProvider build retryResult"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    nop

    .line 384
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v2    # "retryResult":Z
    .end local v12    # "updateUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    :cond_6
    :goto_2
    goto :goto_3

    .line 382
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 385
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .locals 1

    .line 137
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;->access$000()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    return-object v0
.end method

.method private isNeedBuild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2930
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2931
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2932
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 2934
    :cond_0
    return v1
.end method

.method private isUploadScene(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2871
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUploadScene sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isTopApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    .line 2872
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsInSpeech:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",VuiEngine.sceneMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2871
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2875
    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2876
    return v2

    .line 2878
    :cond_1
    const-string v0, "com.xiaopeng.systemui"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_2

    .line 2879
    return v2

    .line 2881
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_4

    .line 2882
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2883
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2885
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2886
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v5

    .line 2887
    .local v5, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2888
    return v2

    .line 2890
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 2892
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Dialog"

    .line 2893
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2894
    :cond_5
    return v2

    .line 2896
    :cond_6
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.xiaopeng.carspeechservice"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    .line 2897
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2898
    return v2

    .line 2900
    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.xiaopeng.car.settings"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    .line 2901
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.xiaopeng.carcontrol"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.xiaopeng.chargecontrol"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    .line 2902
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.xiaopeng.napa"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "com.xiaopeng.caraccount"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    .line 2903
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2904
    :cond_9
    return v2

    .line 2906
    :cond_a
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    .line 2907
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2906
    move v1, v2

    goto :goto_1

    .line 2907
    :cond_b
    nop

    .line 2906
    :goto_1
    return v1

    .line 2874
    :cond_c
    :goto_2
    return v1
.end method

.method private lazyInitThread()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiSceneManager-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiSceneManager-Apirouter-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiSceneManager-LocalVui-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiThread:Landroid/os/HandlerThread;

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiRouterHandler:Landroid/os/Handler;

    .line 188
    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    :cond_0
    return-void
.end method

.method private retryInsertVuiProvider(Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 390
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x3

    .line 391
    .local v2, "sum":I
    :goto_0
    if-lez v2, :cond_1

    .line 392
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 393
    .local v3, "againUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 394
    .local v4, "rowId":J
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 395
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 396
    const/4 v0, 0x1

    .line 397
    goto :goto_1

    .line 399
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 400
    .end local v3    # "againUri":Landroid/net/Uri;
    .end local v4    # "rowId":J
    goto :goto_0

    .line 401
    :cond_1
    :goto_1
    return v0
.end method

.method private sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p3, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 2983
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2984
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2985
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    .line 2987
    :cond_0
    return-void
.end method

.method private updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 618
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 619
    :cond_0
    const-string v0, "VuiSceneManager"

    const-string v1, "updateDisplayLocation  =======   "

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    :cond_1
    return-void
.end method

.method private updateSceneState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2047
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2048
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    .line 2051
    :cond_0
    return-void
.end method


# virtual methods
.method public addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "parentElementId"    # Ljava/lang/String;

    .line 1264
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$15;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1292
    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1295
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$16;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$16;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1399
    :cond_0
    return-void
.end method

.method public addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2155
    .local p2, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    return-void

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2159
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_2

    .line 2160
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    .line 2161
    .local v1, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 2162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2164
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2165
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setSubSceneList(Ljava/util/List;)V

    .line 2166
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    .end local v1    # "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    .line 2957
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVuiEventListener-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2959
    return-void

    .line 2961
    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 2964
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2965
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v0, :cond_2

    return-void

    .line 2967
    :cond_2
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setEventListener(Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    .line 2968
    return-void

    .line 2962
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_3
    :goto_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z

    .line 2206
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagInfo]addVuiSceneListener-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",needBuild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const/4 v0, 0x0

    .line 2209
    .local v0, "isBuildSubScene":Z
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2210
    return-void

    .line 2212
    :cond_0
    const-string v1, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceneId-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p3, :cond_1

    goto/16 :goto_2

    .line 2219
    :cond_1
    if-nez p2, :cond_2

    instance-of v1, p3, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v1, :cond_2

    .line 2221
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2222
    const-string v1, "VuiSceneManager"

    const-string v2, "\u573a\u666f\u6ce8\u518c\u65f6\u6240\u9700\u53d8\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2223
    return-void

    .line 2226
    :cond_2
    if-eqz p5, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2227
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2228
    const-string v1, "VuiSceneManager"

    const-string v2, "\u4e0a\u6b21\u573a\u666f\u64a4\u9500\u672a\u8c03\u7528removeVuiSceneListener\u6216\u91cd\u590d\u521b\u5efa\u573a\u666f"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2230
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2231
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2234
    :cond_5
    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 2235
    .local v1, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2236
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2237
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    const/4 v0, 0x1

    goto :goto_0

    .line 2240
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2241
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2242
    if-eqz p5, :cond_7

    .line 2243
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 2246
    :cond_7
    :goto_0
    invoke-virtual {v1, p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2247
    invoke-virtual {v1, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setRootView(Landroid/view/View;)V

    .line 2248
    invoke-virtual {v1, p4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 2249
    if-eqz p5, :cond_8

    .line 2250
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    goto :goto_1

    .line 2252
    :cond_8
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2253
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    goto :goto_1

    .line 2255
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 2256
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2257
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2260
    :goto_1
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    if-eqz p3, :cond_a

    if-eqz v0, :cond_a

    .line 2263
    const-string v2, "VuiSceneManager"

    const-string v3, "onBuildScene"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2264
    invoke-interface {p3}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 2266
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2267
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2269
    :cond_b
    return-void

    .line 2214
    .end local v1    # "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_c
    :goto_2
    const-string v1, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceneId-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const-string v1, "VuiSceneManager"

    const-string v2, "[VuiSceneTagErr]\u573a\u666f\u6ce8\u518c\u65f6\u6240\u9700\u53d8\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method public buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z
    .param p3, "isHardUpload"    # Z

    .line 1193
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1261
    :cond_0
    return-void
.end method

.method public canRunUpdateSceneTask(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2938
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2940
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 2942
    .local v1, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2943
    .local v2, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2947
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v3

    .line 2948
    .local v3, "state":I
    sget-object v4, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2949
    const-string v4, "VuiSceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u573a\u666f\u6570\u636e\u7684build\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    return v0

    .line 2953
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2944
    .end local v3    # "state":I
    :cond_3
    :goto_0
    return v0
.end method

.method public canUpdateScene(Ljava/lang/String;)Z
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2912
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2914
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneBuild(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2915
    const-string v1, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u573a\u666f\u6570\u636e\u7684update\u5fc5\u987b\u5728\u573abuild\u540e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    return v0

    .line 2919
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v1

    .line 2920
    .local v1, "state":I
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2921
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u573a\u666f\u6570\u636e\u7684build\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    return v0

    .line 2925
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2391
    move-object/from16 v3, p2

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 2392
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2393
    const-string v0, ""

    return-object v0

    .line 2396
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2397
    .local v0, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 2400
    const-string v4, "elements"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2401
    .local v4, "elements":Lorg/json/JSONArray;
    if-nez v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 2402
    const-string v5, ""

    return-object v5

    .line 2404
    :cond_2
    const/4 v5, 0x0

    .line 2405
    .local v5, "elementStatus":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 2406
    .local v6, "elementsResult":Lorg/json/JSONArray;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 2423
    :cond_3
    move-object v8, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v8, "elementStatus":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_7

    .line 2424
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2425
    .local v9, "element":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 2426
    const-string v10, "elementId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2427
    .local v10, "subViewId":Ljava/lang/String;
    const-string v11, "scrollViewId"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2428
    .local v11, "scrollViewID":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v12

    .line 2429
    const-string v12, "elementId"

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2430
    invoke-virtual {v1, v2, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v12

    .line 2431
    .local v12, "subViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    invoke-virtual {v1, v2, v11}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v13

    .line 2432
    .local v13, "scrollViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v12, :cond_6

    iget-object v14, v12, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v14, :cond_6

    .line 2433
    const/4 v14, 0x1

    if-eqz v13, :cond_5

    iget-object v15, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 2434
    iget-object v15, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v15, v15, Landroid/widget/ScrollView;

    if-eqz v15, :cond_6

    .line 2436
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 2437
    .local v15, "scrollBounds":Landroid/graphics/Rect;
    iget-object v7, v13, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2438
    iget-object v7, v12, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7, v15}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2440
    const-string v7, "visible"

    invoke-virtual {v8, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2445
    const/4 v14, 0x0

    goto :goto_1

    .line 2443
    :cond_4
    const-string v7, "visible"

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2445
    .end local v15    # "scrollBounds":Landroid/graphics/Rect;
    :goto_1
    nop

    .line 2451
    move v7, v14

    goto :goto_2

    .line 2447
    :cond_5
    const/4 v7, 0x0

    const-string v15, "visible"

    invoke-virtual {v8, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .end local v10    # "subViewId":Ljava/lang/String;
    .end local v11    # "scrollViewID":Ljava/lang/String;
    .end local v12    # "subViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v13    # "scrollViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    goto :goto_2

    .line 2451
    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2423
    .end local v9    # "element":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2454
    .end local v5    # "i":I
    :cond_7
    move-object v5, v8

    .end local v8    # "elementStatus":Lorg/json/JSONObject;
    .local v5, "elementStatus":Lorg/json/JSONObject;
    :goto_3
    const-string v7, "elements"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2455
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 2456
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "elements":Lorg/json/JSONArray;
    .end local v5    # "elementStatus":Lorg/json/JSONObject;
    .end local v6    # "elementsResult":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 2457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2459
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 2391
    :cond_8
    :goto_4
    const-string v0, ""

    return-object v0
.end method

.method public cleanExpiredSceneTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2103
    if-nez p1, :cond_0

    return-void

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$24;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$24;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2123
    :cond_1
    return-void
.end method

.method public destroyScene(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2059
    if-nez p1, :cond_0

    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$23;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2100
    :cond_1
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "finaldisplayLocation"    # Ljava/lang/String;

    .line 1913
    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1915
    :cond_0
    const-string v0, ""

    .line 1917
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1918
    const-string v1, ""

    return-object v1

    .line 1920
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v1

    .line 1921
    .local v1, "state":I
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene: sceneState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1923
    if-eqz p3, :cond_2

    .line 1925
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->cleanExpiredSceneTime(Ljava/lang/String;)V

    .line 1927
    :cond_2
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V

    .line 1928
    const/4 v0, 0x0

    goto :goto_0

    .line 1929
    :cond_3
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1930
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isNeedBuild(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1931
    const/4 v0, 0x0

    .line 1933
    :cond_4
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V

    goto :goto_0

    .line 1934
    :cond_5
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1935
    const-string v2, "VuiSceneManager"

    const-string v3, "\u672a\u6ce8\u518c\u573a\u666f\u4fe1\u606f\uff0c\u573a\u666f\u6570\u636e\u5c06\u4e0d\u80fd\u4f7f\u7528"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1936
    :cond_6
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1937
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isNeedBuild(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1938
    const/4 v0, 0x0

    .line 1941
    :cond_7
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1942
    const-string v2, "com.xiaopeng.montecarlo"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1943
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1944
    const-string v2, ""

    return-object v2

    .line 1946
    :cond_8
    return-object v0

    .line 1950
    :cond_9
    if-eqz p3, :cond_b

    .line 1951
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1952
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(Ljava/lang/String;)V

    .line 1954
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;

    invoke-direct {v3, p0, p4, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    .end local v1    # "state":I
    :cond_b
    goto :goto_1

    .line 2025
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VuiSceneManager"

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

    .line 2027
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2029
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2030
    const-string v1, ""

    return-object v1

    .line 2032
    :cond_c
    return-object v0

    .line 1913
    .end local v0    # "result":Ljava/lang/String;
    :cond_d
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;

    .line 2054
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 2055
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "finaldisplayLocation"    # Ljava/lang/String;
    .param p5, "isTransform"    # Z

    .line 497
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    return-void

    .line 501
    :cond_1
    if-nez p5, :cond_3

    .line 502
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "state":I
    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 504
    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V

    goto :goto_0

    .line 506
    :cond_2
    const-string v1, "VuiSceneManager"

    const-string v2, "\u573a\u666f\u672a\u6fc0\u6d3b\u4e0d\u80fd\u6267\u884c\u9000\u51fa"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    return-void

    .line 510
    .end local v0    # "state":I
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiSceneManager$4;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager$4;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void

    .line 497
    :cond_4
    :goto_1
    return-void
.end method

.method public findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 2660
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_9

    .line 2662
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v1

    .line 2664
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v1, :cond_1

    .line 2665
    const-string v2, "VuiSceneManager"

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

    .line 2666
    return-object v1

    .line 2669
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v2

    .line 2670
    .local v2, "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    const-string v3, "VuiSceneManager"

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

    .line 2672
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2673
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, v3, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 2674
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v5, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_8

    .line 2676
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    .line 2677
    .local v3, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const-string v4, "VuiSceneManager"

    const-string v5, "findView view by rootview"

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    if-nez v3, :cond_5

    move-object v4, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 2679
    .local v4, "rootView":Landroid/view/View;
    :goto_2
    if-eqz v4, :cond_c

    .line 2680
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 2681
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_b

    .line 2682
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v6

    .line 2683
    .local v6, "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    if-nez v6, :cond_6

    move v8, v7

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 2684
    .local v8, "size":I
    :goto_3
    nop

    .local v7, "i":I
    :goto_4
    if-ge v7, v8, :cond_a

    .line 2685
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2686
    .local v9, "curSceneId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v0

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v10

    .line 2687
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

    .line 2688
    if-eqz v4, :cond_9

    .line 2689
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 2690
    if-eqz v5, :cond_9

    .line 2691
    new-instance v11, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v11, v5, v9}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v0, v11

    .line 2692
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    nop

    .line 2696
    move-object v1, v0

    goto :goto_7

    .line 2684
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v9    # "curSceneId":Ljava/lang/String;
    .end local v10    # "curSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2696
    .end local v6    # "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_a
    :goto_7
    goto :goto_8

    .line 2697
    :cond_b
    new-instance v6, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v6, v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 2702
    .end local v3    # "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_c
    :goto_8
    return-object v1

    .line 2703
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v2    # "rootViewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :catch_0
    move-exception v1

    .line 2704
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VuiSceneManager"

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

    .line 2705
    return-object v0

    .line 2660
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_9
    return-object v0
.end method

.method public findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 2785
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findViewWithId  ===  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2789
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2791
    const/4 v0, 0x0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2792
    .local v0, "vuiElementId":Ljava/lang/String;
    const-string v1, ""

    .line 2793
    .local v1, "lastElementID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 2794
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-le v2, v4, :cond_6

    .line 2796
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2797
    .local v2, "ids":[Ljava/lang/String;
    const-string v6, ""

    .line 2798
    .local v6, "po":Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 2799
    aget-object v6, v2, v5

    goto :goto_0

    .line 2802
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

    .line 2805
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_5

    .line 2807
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 2808
    .local v4, "view_id":I
    const-string v7, "VuiSceneManager"

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

    .line 2809
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 2810
    .local v7, "listView":Landroid/view/View;
    if-nez v7, :cond_2

    return-object v3

    .line 2811
    :cond_2
    instance-of v3, v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    .line 2812
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

    .line 2814
    :cond_3
    array-length v3, v2

    if-gt v3, v8, :cond_4

    .line 2815
    return-object p2

    .line 2817
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

    .line 2818
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 2821
    .end local v4    # "view_id":I
    .end local v7    # "listView":Landroid/view/View;
    :cond_5
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2822
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 2823
    .local v3, "view_id":I
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2824
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 2827
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

    .line 2828
    invoke-virtual {p0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 2831
    :cond_7
    return-object v3

    .line 2835
    .end local v0    # "vuiElementId":Ljava/lang/String;
    .end local v1    # "lastElementID":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2836
    .local v0, "view_id":I
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2837
    return-object p2

    .line 2786
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

    .line 2463
    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 2464
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2465
    return-object v3

    .line 2467
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    .line 2468
    .local v4, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    invoke-virtual {v4, v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v5

    .line 2469
    .local v5, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v5, :cond_2

    return-object v3

    .line 2471
    :cond_2
    const/4 v0, 0x0

    .line 2472
    .local v0, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v6

    .line 2473
    .local v6, "is3DApp":Z
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v7

    .line 2474
    .local v7, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v6, :cond_4

    .line 2476
    if-eqz v7, :cond_3

    instance-of v8, v7, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v8, :cond_4

    .line 2477
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    .line 2481
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

    .line 2482
    if-eqz v8, :cond_8

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    .line 2483
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    move-object v11, v0

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 2484
    .local v11, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    instance-of v0, v11, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_6

    .line 2485
    move-object v0, v11

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v12

    .line 2486
    .local v12, "props":Lorg/json/JSONObject;
    if-eqz v12, :cond_6

    const-string v0, "disableTpl"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2488
    :try_start_0
    const-string v0, "disableTpl"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2489
    .local v0, "disableTpl":Z
    if-eqz v0, :cond_5

    .line 2490
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 2491
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "canScrollUp"

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2492
    const-string v14, "canScrollDown"

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2493
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v14

    .line 2497
    .end local v0    # "disableTpl":Z
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    goto :goto_0

    .line 2495
    :catch_0
    move-exception v0

    .line 2501
    .end local v12    # "props":Lorg/json/JSONObject;
    :cond_6
    :goto_0
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v12

    .line 2502
    .local v12, "canScrollUp":Z
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v13

    .line 2503
    .local v13, "canScrollDown":Z
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v9

    .line 2504
    .local v9, "canScrollLeft":Z
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    move v10, v0

    .line 2506
    .local v10, "canScrollRight":Z
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2507
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

    .line 2508
    const-string v14, "canScrollUp"

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2509
    const-string v14, "canScrollDown"

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2511
    :cond_7
    const-string v14, "canScrollLeft"

    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2512
    const-string v14, "canScrollRight"

    invoke-virtual {v0, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2514
    :goto_1
    const-string v14, "VuiSceneManager"

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

    .line 2515
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 2516
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 2517
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "VuiSceneManager"

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

    .line 2518
    const/4 v3, 0x0

    return-object v3

    .line 2521
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

    .line 2522
    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2525
    :cond_9
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2526
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "canScrollUp"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2527
    const-string v3, "canScrollDown"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2528
    const-string v3, "VuiSceneManager"

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

    .line 2529
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 2530
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 2531
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "VuiSceneManager"

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

    .line 2532
    const/4 v3, 0x0

    return-object v3

    .line 2536
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

    .line 2537
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v3

    .line 2538
    .local v3, "extraPage":I
    if-eq v3, v9, :cond_b

    .line 2541
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2542
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "canScrollLeft"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2543
    const-string v9, "canScrollRight"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2544
    const-string v9, "VuiSceneManager"

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

    .line 2545
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v9

    .line 2546
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    .line 2547
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "VuiSceneManager"

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

    .line 2548
    const/4 v9, 0x0

    return-object v9

    .line 2551
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_b
    if-eqz v8, :cond_d

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 2552
    const/4 v0, 0x0

    .line 2553
    .local v0, "viewPager":Landroidx/viewpager/widget/ViewPager;
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v11, v11, Landroidx/viewpager/widget/ViewPager;

    if-nez v11, :cond_c

    .line 2554
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 2558
    .end local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .local v11, "viewPager":Landroidx/viewpager/widget/ViewPager;
    :goto_2
    move-object v11, v0

    goto :goto_3

    .line 2556
    .end local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .restart local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_c
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    move-object v0, v11

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    goto :goto_2

    .line 2558
    .end local v0    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .restart local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :goto_3
    if-eqz v11, :cond_d

    .line 2560
    :try_start_4
    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    .line 2561
    .local v0, "canLeft":Z
    invoke-virtual {v11, v10}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v9

    .line 2562
    .local v9, "canRight":Z
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2563
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "canScrollLeft"

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2564
    const-string v12, "canScrollRight"

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2565
    const-string v12, "VuiSceneManager"

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

    .line 2566
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v12

    .line 2567
    .end local v0    # "canLeft":Z
    .end local v9    # "canRight":Z
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    .line 2568
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "VuiSceneManager"

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

    .line 2569
    const/4 v9, 0x0

    return-object v9

    .line 2574
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "extraPage":I
    .end local v11    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_d
    goto/16 :goto_c

    .line 2575
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

    .line 2576
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2577
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v9}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 2578
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2579
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

    .line 2580
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 2581
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_12

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_f

    goto/16 :goto_6

    .line 2598
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 2599
    .local v11, "rect":Landroid/graphics/Rect;
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2602
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2603
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 2604
    .local v12, "scrollY":I
    const-string v13, "canScrollUp"

    if-nez v12, :cond_10

    move v14, v3

    goto :goto_4

    :cond_10
    move v14, v10

    :goto_4
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2605
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

    .line 2606
    const-string v3, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object v3

    .line 2609
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollY":I
    :catch_5
    move-exception v0

    .line 2610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2611
    const-string v3, "VuiSceneManager"

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

    .line 2612
    const/4 v12, 0x0

    return-object v12

    .line 2582
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_12
    :goto_6
    const/4 v12, 0x0

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2583
    .local v11, "child":Landroid/view/View;
    if-nez v11, :cond_13

    return-object v12

    .line 2585
    :cond_13
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2586
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 2587
    .restart local v12    # "scrollY":I
    const-string v13, "canScrollUp"

    if-nez v12, :cond_14

    move v14, v3

    goto :goto_7

    :cond_14
    move v14, v10

    :goto_7
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2588
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

    .line 2589
    const-string v3, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState, ScrollView, jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-object v3

    .line 2592
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollY":I
    :catch_6
    move-exception v0

    .line 2593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2594
    const-string v3, "VuiSceneManager"

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

    .line 2595
    const/4 v3, 0x0

    return-object v3

    .line 2616
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

    .line 2617
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 2618
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1a

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_17

    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    goto/16 :goto_b

    .line 2621
    .restart local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    :cond_17
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2622
    .local v11, "parent":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    if-ge v0, v12, :cond_1a

    .line 2624
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2625
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 2626
    .local v12, "scrollX":I
    const-string v13, "VuiSceneManager"

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

    .line 2627
    const-string v13, "canScrollLeft"

    if-nez v12, :cond_18

    move v14, v3

    goto :goto_9

    :cond_18
    move v14, v10

    :goto_9
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2628
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

    .line 2629
    const-string v3, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getElementState, SCROLLBYX, jsonObject: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", sceneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", elementId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return-object v3

    .line 2632
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "scrollX":I
    :catch_7
    move-exception v0

    .line 2633
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2634
    const-string v3, "VuiSceneManager"

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

    .line 2635
    const/4 v3, 0x0

    return-object v3

    .line 2642
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v11    # "parent":Landroid/view/View;
    :cond_1a
    :goto_b
    nop

    .line 2654
    :cond_1b
    :goto_c
    const/4 v3, 0x0

    return-object v3

    .line 2644
    :cond_1c
    if-eqz v8, :cond_1e

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 2645
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

    .line 2647
    :cond_1e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2648
    .local v0, "mGson":Lcom/google/gson/Gson;
    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2649
    .local v3, "result":Ljava/lang/String;
    const-string v9, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getElementState:  result:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    return-object v3

    .line 2463
    .end local v0    # "mGson":Lcom/google/gson/Gson;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
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
    .locals 6

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    return-object v0

    .line 937
    :cond_0
    const/4 v0, 0x0

    .line 938
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v1, "main"

    .line 940
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

    .line 941
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 942
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 943
    const-string v3, "VuiSceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 947
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 948
    const-string v3, "main"

    move-object v1, v3

    goto :goto_0

    .line 950
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 952
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

    iput-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    .line 953
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    nop

    .line 959
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 961
    :catch_0
    move-exception v4

    .line 962
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 963
    :goto_1
    nop

    .line 953
    :goto_2
    return-object v3

    .line 957
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 954
    :catch_1
    move-exception v2

    .line 955
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 959
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 961
    :catch_2
    move-exception v2

    .line 962
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 964
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 963
    :cond_3
    :goto_3
    nop

    .line 965
    :goto_4
    return-object v1

    .line 957
    :goto_5
    nop

    .line 958
    if-eqz v0, :cond_4

    .line 959
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 961
    :catch_3
    move-exception v3

    .line 962
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 963
    :cond_4
    :goto_6
    nop

    .line 964
    :goto_7
    throw v2
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2344
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2345
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2346
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 2349
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSceneIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
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

    .line 2198
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2199
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2200
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2202
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2130
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2131
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    return-object v0

    .line 2134
    :cond_1
    return-object v0
.end method

.method public getVuiEventListener(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2972
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2973
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2975
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getEventListener()Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    move-result-object v1

    return-object v1
.end method

.method public getVuiSceneBuild(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2370
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2371
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2372
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result v1

    return v1

    .line 2374
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2336
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2337
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2338
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    return-object v1

    .line 2340
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVuiSceneState(Ljava/lang/String;)I
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 2378
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2379
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2380
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result v1

    return v1

    .line 2382
    :cond_0
    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v1

    return v1
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 1

    .line 2361
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPackageVersion()Ljava/lang/String;
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleAllSceneCache(Z)V
    .locals 5
    .param p1, "isAllRemove"    # Z

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 739
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 740
    .local v2, "sceneId":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 741
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 744
    .local v3, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 746
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .end local v3    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_1
    goto :goto_1

    .line 749
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 750
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 751
    .local v3, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-virtual {v3, v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 752
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeOtherCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneManager"

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

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public handleSceneDataInfo()V
    .locals 9

    .line 704
    :try_start_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 705
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 706
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 708
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 709
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 710
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 712
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 715
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 716
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 718
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    .restart local v3    # "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 720
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 721
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 722
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 723
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 724
    .local v6, "sceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 725
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v8, "primary"

    invoke-virtual {p0, v6, v7, v1, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v6    # "sceneId":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 729
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 732
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_4
    goto :goto_3

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneManager"

    const-string v2, "sendVuiStateChangedEvent error"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subSceneId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;

    .line 2272
    const-string v0, "VuiSceneManager"

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

    .line 2273
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 2274
    .local v0, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2275
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2277
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 2278
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 2279
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    return-void
.end method

.method public declared-synchronized insertVuiProviderWhenDeath()V
    .locals 9

    monitor-enter p0

    .line 266
    :try_start_0
    const-string v0, "VuiSceneManager"

    const-string v1, "insertVuiProviderWhenDeath"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "primary"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "mLFSendSceneId":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v2, "secondary"

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "mRFSendSceneId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 275
    :cond_1
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 276
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 277
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 279
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 280
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    invoke-virtual {p0, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 283
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 286
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .restart local v4    # "key":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v5

    .line 291
    .local v5, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 293
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 294
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    .local v7, "sceneId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 296
    invoke-virtual {p0, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v7    # "sceneId":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 300
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    goto :goto_1

    .line 301
    :cond_6
    monitor-exit p0

    return-void

    .line 265
    .end local v0    # "mLFSendSceneId":Ljava/lang/String;
    .end local v1    # "mRFSendSceneId":Ljava/lang/String;
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/VuiSceneManager;
    throw v0
.end method

.method public isInSpeech()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    return v0
.end method

.method public isNaviTop()Z
    .locals 3

    .line 565
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 566
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "isNaviTop"

    .line 567
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 568
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

    .line 569
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$3;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_1
    return-void

    .line 471
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized reBuildSceneToVuiProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "sendSceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    goto :goto_0

    .line 304
    .end local p1    # "sendSceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/VuiSceneManager;
    throw p1

    .line 320
    .restart local p0    # "this":Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .restart local p1    # "sendSceneId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reSetBinder()V
    .locals 1

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    .line 192
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementGroupId"    # Ljava/lang/String;
    .param p3, "handleCache"    # Z

    .line 1402
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1553
    :cond_0
    return-void
.end method

.method public removeSubSceneIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "subSceneId"    # Ljava/lang/String;

    .line 2171
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2172
    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2175
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v0, :cond_1

    .line 2176
    return-void

    .line 2178
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    .line 2179
    .local v1, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 2180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2182
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2183
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2185
    :cond_3
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setSubSceneList(Ljava/util/List;)V

    .line 2186
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "upload"    # Z
    .param p3, "keepCache"    # Z
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 2283
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2284
    return-void

    .line 2286
    :cond_0
    if-nez p1, :cond_1

    .line 2287
    const-string v0, "VuiSceneManager"

    const-string v1, "[VuiSceneTagErr]\u9500\u6bc1\u573a\u666f\u65f6SceneId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2288
    return-void

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2292
    :cond_2
    const-string v0, "VuiSceneManager"

    const-string v1, "[VuiSceneTagErr]\u9500\u6bc1\u573a\u666f\u524d\u8bf7\u5148\u6ce8\u518c\u573a\u666f\uff0c\u91cd\u590d\u9500\u6bc1\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2295
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2296
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz p4, :cond_4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2297
    const-string v1, "VuiSceneManager"

    const-string v2, "[VuiSceneTagWarn]\u8981\u9500\u6bc1\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2298
    return-void

    .line 2300
    :cond_4
    const-string v1, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneTagInfo]removeVuiSceneListener-------------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    if-eqz p3, :cond_5

    .line 2302
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->resetViewInfo()V

    .line 2303
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2306
    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    .line 2307
    .local v1, "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    .line 2308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2309
    .local v3, "subScene":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2310
    .local v4, "subVuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v4, :cond_6

    .line 2311
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2312
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2313
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2314
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    .end local v3    # "subScene":Ljava/lang/String;
    .end local v4    # "subVuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_6
    goto :goto_0

    .line 2318
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 2319
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2321
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2326
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v1    # "subSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    return-void

    .line 2327
    :cond_9
    if-eqz p2, :cond_a

    .line 2328
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->destroyScene(Ljava/lang/String;)V

    goto :goto_2

    .line 2330
    :cond_a
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2331
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2333
    :goto_2
    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    :cond_0
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "handleCache"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    .line 1135
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;Z)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "handleCache"    # Z
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "isSendVuiProvider"    # Z

    .line 1138
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1139
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1140
    sget v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->SEND_UPLOAD_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1141
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1142
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1143
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiRouterHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    instance-of v1, p3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;

    invoke-direct {v2, p0, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1186
    :cond_0
    return-void
.end method

.method public declared-synchronized sendSceneData(Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$12;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    goto :goto_0

    .line 1044
    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1085
    .restart local p1    # "sceneId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1087
    const-string v1, "VuiSceneManager"

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 1044
    .end local p1    # "sceneId":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/VuiSceneManager;
    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 2386
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    .line 2387
    return-void
.end method

.method public setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p1, "engine"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 125
    return-void
.end method

.method public setFeatureState(Z)V
    .locals 8
    .param p1, "b"    # Z

    .line 196
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eq v0, p1, :cond_6

    .line 197
    if-eqz p1, :cond_5

    .line 198
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 199
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 201
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 214
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    .restart local v3    # "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 219
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 220
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 221
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .local v6, "sceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 224
    invoke-direct {p0, v6, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v6    # "sceneId":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 228
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 229
    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_4
    goto :goto_3

    .line 230
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleAllSceneCache(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_6
    :goto_3
    goto :goto_4

    .line 234
    :catch_0
    move-exception v0

    .line 238
    :goto_4
    return-void
.end method

.method public setInSpeech(Z)V
    .locals 1
    .param p1, "inSpeech"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    .line 118
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setIsWholeScene(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z

    .line 2147
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2148
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 2150
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    :cond_0
    return-void
.end method

.method public setObserverPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 576
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 971
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

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    .line 972
    return-void
.end method

.method public setSceneIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2190
    .local p2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2191
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2192
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setIdList(Ljava/util/List;)V

    .line 2193
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    :cond_0
    return-void
.end method

.method public setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "wholeSceneId"    # Ljava/lang/String;

    .line 2138
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 2139
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 2141
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    :cond_0
    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 2353
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    .line 2354
    return-void
.end method

.method public setmPackageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageVersion"    # Ljava/lang/String;

    .line 2357
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    .line 2358
    return-void
.end method

.method public storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "soundArea"    # I
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;

    .line 256
    const-string v0, "VuiSceneManager"

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

    .line 257
    move-object v0, p3

    .line 258
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 260
    .local v1, "msg":Landroid/os/Message;
    sget v2, Lcom/xiaopeng/speech/vui/VuiSceneManager;->REMOVE_FEED_BACK:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 261
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/apirouter/Utils;->isCorrectObserver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "VuiSceneManager"

    const-string v1, "\u6ce8\u518cobserver\u4e0d\u5408\u6cd5,observer\u662fapp\u7684\u5305\u540d\u52a0observer\u7684\u7c7b\u540d\u7ec4\u6210"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserver:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 166
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->registerReceiver()V

    .line 167
    return-void
.end method

.method public subscribe(Z)V
    .locals 2
    .param p1, "needCheckEnterScene"    # Z

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 794
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 808
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 810
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->registerReceiver()V

    .line 811
    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 978
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 991
    :cond_1
    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 2

    .line 814
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    :cond_1
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "VuiSceneManager"

    const-string v1, "mObserver == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1041
    :cond_1
    return-void
.end method

.method public updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1910
    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    .line 467
    :cond_0
    return-void
.end method

.method public updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2
    .param p1, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;
    .param p2, "handleCache"    # Z

    .line 1637
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1755
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "feedback"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1556
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1590
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "feedback"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1594
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$19;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1634
    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 435
    .local v0, "soundArea":I
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v1, "VuiSceneManager"

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

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$2;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    .end local v0    # "soundArea":I
    :cond_1
    return-void
.end method
