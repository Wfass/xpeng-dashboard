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

.field private static SEND_UPLOAD_MESSAGE:I = 0x1

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

    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene"

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene/delete/"

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    .line 110
    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->REMOVE_FEED_BACK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VuiSceneManager"

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    const/4 v0, 0x0

    .line 112
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

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$1;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Binder;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/speech/vui/VuiSceneManager;Landroid/os/Binder;)Landroid/os/Binder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->hasProcessFeature()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserver:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->checkUploadScene(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->insertVuiSceneToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->deleteVuiSceneById(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->SEND_UPLOAD_MESSAGE:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0

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
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p0
.end method

.method static synthetic access$902(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p1
.end method

.method private checkUploadScene(Ljava/lang/String;)V
    .locals 9

    .line 1093
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1094
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1096
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v1

    .line 1097
    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

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

    move-object v3, p1

    .line 1100
    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 1102
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 1103
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1104
    invoke-virtual {p0, v4, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1105
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1106
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1108
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1110
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1111
    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1114
    :cond_2
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1115
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v5, p1, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto :goto_0

    .line 1119
    :cond_3
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    if-ne v1, p1, :cond_4

    .line 1120
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    if-eqz p1, :cond_4

    .line 1122
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1124
    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private deleteVuiSceneById(Ljava/lang/String;)V
    .locals 12

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "scene_id = ?"

    .line 414
    sget-object v9, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v5, v11

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    .line 415
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_id"

    .line 416
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :catchall_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    move-wide v4, v2

    :goto_0
    new-array v6, v10, [Ljava/lang/String;

    aput-object p1, v6, v11

    .line 418
    invoke-virtual {v0, v9, v8, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 420
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 421
    invoke-virtual {v0, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_2
    return-void
.end method

.method private findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2756
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2760
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findRootView idList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VuiSceneManager"

    invoke-static {v3, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2762
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 2763
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, p2, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 2765
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findRootView subSceneList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 2770
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 2772
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2773
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 2729
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2731
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2732
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 2734
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2735
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_3

    .line 2736
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2737
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2739
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {p2, v4, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p2

    .line 2741
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, p2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2743
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findViewWithId:   Tag====  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VuiSceneManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {p2, v3, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 2991
    invoke-static {}, Lcom/xiaopeng/speech/apirouter/Utils;->isXpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaopeng.speechtesttools.VuiFusionService"

    return-object v0

    :cond_0
    const-string v0, "com.xiaopeng.carspeechservice.VuiFusionService"

    return-object v0
.end method

.method private getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_1

    .line 2714
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2716
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const-string p1, "VuiSceneManager"

    if-eqz v0, :cond_0

    .line 2718
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findViewWithId:   Tag====  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "findViewWithId  View is null"

    .line 2720
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getListView(Landroid/view/View;)Landroid/view/View;
    .locals 1

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

    const/4 p1, 0x0

    return-object p1

    .line 2848
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    return-object p1

    .line 2851
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private getScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 1

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

    const/4 p1, 0x0

    return-object p1

    .line 2862
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    return-object p1

    .line 2865
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private hasProcessFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private insertVuiSceneToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p3

    const-string v8, "scene_type"

    const-string v9, "scene_info"

    const-string v10, "scene_id"

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVuiSceneToProvider:sceneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "VuiSceneManager"

    invoke-static {v11, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 336
    invoke-virtual {v12, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 337
    invoke-virtual {v12, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v12, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 341
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    if-eqz v3, :cond_0

    const-wide/16 v13, 0x0

    cmp-long v6, v4, v13

    if-lez v6, :cond_0

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVuiSceneToProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_2

    .line 347
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v6, -0x31ffc737    # -5.378013E8f

    const/4 v13, 0x0

    const-string v14, "build"

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-eq v3, v6, :cond_3

    const v6, 0x59bc66e

    if-eq v3, v6, :cond_2

    const v6, 0x63a518c2

    if-eq v3, v6, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "display"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v15

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v13

    goto :goto_1

    :cond_3
    const-string v3, "update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_5

    if-eq v1, v15, :cond_5

    goto/16 :goto_2

    :cond_5
    const-wide/16 v1, -0x1f4

    cmp-long v1, v4, v1

    if-nez v1, :cond_8

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 358
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v4

    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    move-object/from16 v1, p1

    .line 357
    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 359
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 362
    invoke-virtual {v2, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 363
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 364
    invoke-virtual {v2, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 365
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 367
    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v13

    :cond_6
    if-eqz v13, :cond_8

    .line 373
    invoke-direct {v0, v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVuiSceneToProvider update retryResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 350
    :cond_7
    invoke-direct {v0, v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->retryInsertVuiProvider(Landroid/content/ContentValues;)Z

    move-result v1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVuiSceneToProvider build retryResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method public static final instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .locals 1

    .line 137
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;->access$000()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    return-object v0
.end method

.method private isNeedBuild(Ljava/lang/String;)Z
    .locals 1

    .line 2930
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2932
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method

.method private isUploadScene(Ljava/lang/String;)Z
    .locals 5

    .line 2871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUploadScene sceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isTopApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    .line 2872
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsInSpeech:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VuiEngine.sceneMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPackageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    .line 2871
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "com.android.systemui"

    .line 2875
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2878
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.systemui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_2

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
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2885
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2886
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2887
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 2892
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

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.carspeechservice"

    .line 2897
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 2900
    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.car.settings"

    .line 2901
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.carcontrol"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.chargecontrol"

    .line 2902
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.napa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.caraccount"

    .line 2903
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

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

    move-result p1

    if-eqz p1, :cond_b

    move v1, v2

    :cond_b
    :goto_0
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
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiRouterHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 678
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private retryInsertVuiProvider(Landroid/content/ContentValues;)Z
    .locals 7

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    :goto_0
    if-lez v1, :cond_1

    .line 392
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiSceneManager;->VUI_SCENE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 393
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    if-eqz v2, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 p1, 0x0

    .line 395
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0

    .line 2983
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2984
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2985
    invoke-virtual {p0, p2, p1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    :cond_0
    return-void
.end method

.method private updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2

    .line 618
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VuiSceneManager"

    const-string v1, "updateDisplayLocation  =======   "

    .line 619
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 621
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateSceneState(Ljava/lang/String;I)V
    .locals 0

    .line 2047
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2049
    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1265
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$15;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 1

    .line 1295
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 1296
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$16;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$16;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v0, :cond_2

    .line 2160
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2165
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setSubSceneList(Ljava/util/List;)V

    .line 2166
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 2

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVuiEventListener-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 2964
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 2967
    :cond_2
    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setEventListener(Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 5

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VuiSceneTagInfo]addVuiSceneListener-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",needBuild:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneId-- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",listener:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 2219
    instance-of v0, p3, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v0, :cond_2

    .line 2221
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "\u573a\u666f\u6ce8\u518c\u65f6\u6240\u9700\u53d8\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2222
    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p5, :cond_5

    .line 2226
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p3, :cond_4

    .line 2227
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u4e0a\u6b21\u573a\u666f\u64a4\u9500\u672a\u8c03\u7528removeVuiSceneListener\u6216\u91cd\u590d\u521b\u5efa\u573a\u666f"

    .line 2228
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2230
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2231
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2234
    :cond_5
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 2235
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 2236
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 2237
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2240
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2241
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz p5, :cond_7

    .line 2243
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    :cond_7
    move v3, v4

    .line 2246
    :goto_0
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2247
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setRootView(Landroid/view/View;)V

    .line 2248
    invoke-virtual {v0, p4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    if-eqz p5, :cond_8

    .line 2250
    sget-object p2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    goto :goto_1

    .line 2252
    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2253
    sget-object p2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setState(I)V

    goto :goto_1

    .line 2255
    :cond_9
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 2256
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2257
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2260
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "build:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_a

    if-eqz v3, :cond_a

    const-string p2, "onBuildScene"

    .line 2263
    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2264
    invoke-interface {p3}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 2266
    :cond_a
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 2267
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void

    .line 2214
    :cond_c
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "[VuiSceneTagErr]\u573a\u666f\u6ce8\u518c\u65f6\u6240\u9700\u53d8\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2215
    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1194
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public canRunUpdateSceneTask(Ljava/lang/String;)Z
    .locals 3

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
    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2943
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2947
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v1

    .line 2948
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u573a\u666f\u6570\u636e\u7684build\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VuiSceneManager"

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public canUpdateScene(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2914
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneBuild(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "VuiSceneManager"

    if-nez v1, :cond_1

    .line 2915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u573a\u666f\u6570\u636e\u7684update\u5fc5\u987b\u5728\u573abuild\u540e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2919
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v1

    .line 2920
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 2921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u573a\u666f\u6570\u636e\u7684build\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "elementId"

    const-string v1, "elements"

    const-string v2, ""

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2392
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 2396
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_2

    .line 2401
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_2

    return-object v2

    :cond_2
    const/4 v4, 0x0

    .line 2405
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2406
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    move v7, v6

    .line 2423
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 2424
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2426
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "scrollViewId"

    .line 2427
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2428
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2429
    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2430
    invoke-virtual {p0, p1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    .line 2431
    invoke-virtual {p0, p1, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v8

    if-eqz v4, :cond_6

    .line 2432
    iget-object v10, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_6

    const-string v10, "visible"

    const/4 v11, 0x1

    if-eqz v8, :cond_5

    .line 2433
    :try_start_1
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v12, :cond_5

    .line 2434
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/ScrollView;

    if-eqz v12, :cond_6

    .line 2436
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2437
    iget-object v8, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2438
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2440
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2443
    :cond_4
    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2447
    :cond_5
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    move-object v4, v9

    .line 2451
    :cond_7
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2454
    :cond_8
    :goto_2
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2455
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-object v2
.end method

.method public cleanExpiredSceneTime(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2105
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$24;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$24;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public destroyScene(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2061
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$23;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "VuiSceneManager"

    const-string v1, ""

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1917
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1920
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v2

    .line 1921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene: sceneState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    .line 1925
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->cleanExpiredSceneTime(Ljava/lang/String;)V

    .line 1927
    :cond_2
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V

    goto :goto_2

    .line 1929
    :cond_3
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1930
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isNeedBuild(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v1

    .line 1933
    :goto_0
    :try_start_1
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 1934
    :cond_5
    :try_start_2
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "\u672a\u6ce8\u518c\u573a\u666f\u4fe1\u606f\uff0c\u573a\u666f\u6570\u636e\u5c06\u4e0d\u80fd\u4f7f\u7528"

    .line 1935
    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1936
    :cond_6
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1937
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isNeedBuild(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v4, v1

    .line 1941
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.xiaopeng.montecarlo"

    .line 1942
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

    move-result p1

    if-eqz p1, :cond_8

    return-object v1

    :cond_8
    return-object v4

    :cond_9
    if-eqz p3, :cond_b

    .line 1951
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isUploadScene(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p3

    if-nez p3, :cond_a

    .line 1952
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(Ljava/lang/String;)V

    .line 1954
    :cond_a
    iget-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;

    invoke-direct {v2, p0, p4, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, v1

    .line 2026
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enterScene--------------e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2029
    :cond_b
    :goto_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v1

    :cond_c
    return-object v4

    :cond_d
    :goto_5
    return-object v1
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2054
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p5, :cond_3

    .line 502
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result p5

    .line 503
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v0

    if-ne p5, v0, :cond_2

    .line 504
    sget-object p5, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {p5}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result p5

    invoke-direct {p0, p1, p5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneState(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "VuiSceneManager"

    const-string/jumbo p2, "\u573a\u666f\u672a\u6fc0\u6d3b\u4e0d\u80fd\u6267\u884c\u9000\u51fa"

    .line 506
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_3
    :goto_0
    iget-object p5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v6, Lcom/xiaopeng/speech/vui/VuiSceneManager$4;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager$4;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 7

    const-string v0, "VuiSceneManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 2662
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ",sceneId:"

    if-eqz v2, :cond_1

    .line 2665
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findViewFromSceneInfo elementId:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",view:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2669
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    .line 2670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findView elementId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rootView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 2672
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2673
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 2674
    new-instance v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 2676
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    const-string v4, "findView view by rootview"

    .line 2677
    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_5

    move-object v4, v1

    goto :goto_2

    .line 2678
    :cond_5
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_b

    .line 2680
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_a

    .line 2682
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_6

    move v4, v3

    goto :goto_3

    .line 2683
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_b

    .line 2685
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2686
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v6

    :goto_4
    if-nez v6, :cond_8

    move-object v6, v1

    goto :goto_5

    .line 2687
    :cond_8
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_9

    .line 2689
    invoke-direct {p0, v6, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2691
    new-instance p1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {p1, v6, v5}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v2, p1

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2697
    :cond_a
    new-instance v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v2, v4, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :goto_6
    return-object v2

    :catch_0
    move-exception p1

    .line 2704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findView e:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    :goto_7
    return-object v1
.end method

.method public findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 10

    .line 2785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findViewWithId  ===  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "_"

    .line 2789
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    const/4 v2, 0x0

    .line 2791
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2793
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 2794
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v3, v5, :cond_6

    .line 2796
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2798
    array-length v7, v3

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 2799
    aget-object v7, v3, v6

    goto :goto_0

    .line 2802
    :cond_1
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {p1, v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2805
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_5

    .line 2807
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 2808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findViewWithId view tag: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v4

    .line 2811
    :cond_2
    instance-of v4, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_3

    .line 2812
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2814
    :cond_3
    array-length v1, v3

    if-gt v1, v8, :cond_4

    return-object p2

    .line 2817
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2818
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2821
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2822
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2823
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2824
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2827
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2828
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v4

    .line 2835
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2836
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_1
    return-object p2
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    if-nez v1, :cond_0

    goto/16 :goto_e

    .line 2464
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 2467
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 2468
    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    .line 2472
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v4

    .line 2473
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v5

    .line 2474
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    .line 2476
    instance-of v4, v5, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v4, :cond_4

    .line 2477
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 2481
    :goto_0
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ",elementId:"

    const-string v7, ",sceneId:"

    const-string v8, "canScrollRight"

    const-string v9, "canScrollLeft"

    const/4 v10, -0x1

    const-string v11, "getElementState jsonObject: "

    const-string v12, "canScrollDown"

    const-string v13, "canScrollUp"

    const-string v14, "getElementState e:"

    const/4 v15, 0x1

    const-string v2, "VuiSceneManager"

    if-eqz v5, :cond_9

    if-eqz v4, :cond_7

    .line 2482
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v5, v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_7

    .line 2483
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 2484
    instance-of v4, v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_5

    .line 2485
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "disableTpl"

    .line 2486
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2488
    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2490
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2491
    invoke-virtual {v4, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2492
    invoke-virtual {v4, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2493
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2501
    :catch_0
    :cond_5
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    .line 2502
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    .line 2503
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v10

    .line 2504
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v15

    move-object/from16 v16, v14

    .line 2506
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 2507
    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiAction()Ljava/lang/String;

    move-result-object v3

    sget-object v17, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v2

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2508
    invoke-virtual {v14, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2509
    invoke-virtual {v14, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2511
    :cond_6
    invoke-virtual {v14, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2512
    invoke-virtual {v14, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2514
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, v18

    :try_start_3
    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2517
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x0

    return-object v1

    :cond_7
    move-object v5, v14

    .line 2521
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2522
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2525
    :cond_8
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2526
    invoke-virtual {v3, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2527
    invoke-virtual {v3, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 2531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v5, v14

    .line 2536
    sget-object v14, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2537
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v3

    if-eq v3, v10, :cond_a

    .line 2541
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    .line 2542
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2543
    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    if-eqz v4, :cond_18

    .line 2551
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2553
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/viewpager/widget/ViewPager;

    if-nez v3, :cond_b

    .line 2554
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    goto :goto_4

    .line 2556
    :cond_b
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    :goto_4
    if-eqz v3, :cond_18

    .line 2560
    :try_start_6
    invoke-virtual {v3, v10}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    const/4 v10, 0x1

    .line 2561
    invoke-virtual {v3, v10}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    .line 2562
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2563
    invoke-virtual {v10, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2564
    invoke-virtual {v10, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const/4 v10, 0x1

    .line 2575
    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_19

    if-eqz v3, :cond_18

    .line 2576
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 2577
    new-instance v6, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2578
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2579
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v14, ", elementId:"

    const-string v15, ", sceneId:"

    if-eqz v3, :cond_14

    if-eqz v4, :cond_18

    .line 2580
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2581
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ScrollView;

    if-nez v3, :cond_10

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_d

    goto/16 :goto_7

    .line 2598
    :cond_d
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2599
    iget-object v6, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2602
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2603
    iget-object v8, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-nez v8, :cond_e

    move v9, v7

    goto :goto_5

    :cond_e
    move v9, v10

    .line 2604
    :goto_5
    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2605
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v8, v3

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lt v8, v3, :cond_f

    goto :goto_6

    :cond_f
    move v7, v10

    :goto_6
    invoke-virtual {v6, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :cond_10
    :goto_7
    const/4 v3, 0x0

    .line 2582
    iget-object v6, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_11

    return-object v3

    .line 2585
    :cond_11
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2586
    iget-object v8, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-nez v8, :cond_12

    move v9, v7

    goto :goto_8

    :cond_12
    move v9, v10

    .line 2587
    :goto_8
    invoke-virtual {v3, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2588
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ne v8, v4, :cond_13

    goto :goto_9

    :cond_13
    move v7, v10

    :goto_9
    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getElementState, ScrollView, jsonObject: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2616
    :cond_14
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v4, :cond_18

    .line 2617
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2618
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ScrollView;

    if-nez v3, :cond_18

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_15

    goto/16 :goto_c

    .line 2621
    :cond_15
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2622
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v11, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    if-ge v6, v11, :cond_18

    .line 2624
    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2625
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 2626
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "view width:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",parent:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",scrollX:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v11, :cond_16

    move v12, v7

    goto :goto_a

    :cond_16
    move v12, v10

    .line 2627
    :goto_a
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2628
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v11, v3

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v11, v3, :cond_17

    goto :goto_b

    :cond_17
    move v7, v10

    :goto_b
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getElementState, SCROLLBYX, jsonObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    .line 2633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    :goto_c
    const/4 v1, 0x0

    return-object v1

    :cond_19
    if-eqz v4, :cond_1b

    .line 2644
    iget-object v0, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 2645
    iget-object v0, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    invoke-virtual {v3, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setEnabled(Ljava/lang/Boolean;)V

    .line 2647
    :cond_1b
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2648
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getElementState:  result:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    :goto_e
    move-object v1, v2

    return-object v1
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 7

    const-string v0, "main"

    .line 934
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 940
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "VuiSceneManager"

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 947
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 950
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 952
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 959
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 955
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 959
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_4

    .line 959
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 962
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 964
    :cond_4
    :goto_5
    throw v0
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 2344
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2346
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSceneIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2200
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2131
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getVuiEventListener(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;
    .locals 0

    .line 2972
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2975
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getEventListener()Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    move-result-object p1

    return-object p1
.end method

.method public getVuiSceneBuild(Ljava/lang/String;)Z
    .locals 0

    .line 2370
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2372
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .locals 0

    .line 2336
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2338
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVuiSceneState(Ljava/lang/String;)I
    .locals 0

    .line 2378
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2380
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result p1

    return p1

    .line 2382
    :cond_0
    sget-object p1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result p1

    return p1
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

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 738
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

    if-eqz p1, :cond_1

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

    if-eqz v3, :cond_2

    .line 745
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 746
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 749
    :cond_1
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
    invoke-virtual {v3, v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 752
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeOtherCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllSceneCache e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VuiSceneManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public handleSceneDataInfo()V
    .locals 6

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
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 708
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 709
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 710
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 715
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 716
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 718
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 719
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 721
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 722
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 723
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 725
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    const-string v5, "primary"

    invoke-virtual {p0, v3, v4, v1, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "VuiSceneManager"

    const-string v1, "sendVuiStateChangedEvent error"

    .line 731
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSubSceneInfo subSceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2273
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 2274
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    :cond_0
    const/4 v1, 0x0

    .line 2277
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 2278
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 2279
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized insertVuiProviderWhenDeath()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "VuiSceneManager"

    const-string v1, "insertVuiProviderWhenDeath"

    .line 266
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "primary"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v2, "secondary"

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 275
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 276
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_3
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 292
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 296
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 301
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

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
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "isNaviTop"

    .line 567
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 568
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 570
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 474
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$3;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized reBuildSceneToVuiProvider(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public reSetBinder()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1402
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1403
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeSubSceneIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2171
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-nez v0, :cond_1

    return-void

    .line 2178
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 4

    .line 2283
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VuiSceneManager"

    if-nez p1, :cond_1

    const-string p1, "[VuiSceneTagErr]\u9500\u6bc1\u573a\u666f\u65f6SceneId\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2287
    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2291
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "[VuiSceneTagErr]\u9500\u6bc1\u573a\u666f\u524d\u8bf7\u5148\u6ce8\u518c\u573a\u666f\uff0c\u91cd\u590d\u9500\u6bc1\u4fe1\u606f"

    .line 2292
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2295
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz p4, :cond_4

    .line 2296
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p1, "[VuiSceneTagWarn]\u8981\u9500\u6bc1\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    .line 2297
    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2300
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagInfo]removeVuiSceneListener-------------- "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, ",info:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 2302
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->resetViewInfo()V

    .line 2303
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2306
    :cond_5
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 2308
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2309
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v2, :cond_6

    .line 2311
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2312
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2313
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2314
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 p4, 0x1

    .line 2318
    invoke-virtual {v1, p4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 2319
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 2321
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sceneIds:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_a

    .line 2328
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->destroyScene(Ljava/lang/String;)V

    goto :goto_2

    .line 2330
    :cond_a
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 2331
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 762
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1134
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;Z)V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1139
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1140
    sget v1, Lcom/xiaopeng/speech/vui/VuiSceneManager;->SEND_UPLOAD_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1141
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1142
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1143
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mLocalVuiRouterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    instance-of p4, p3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz p4, :cond_0

    .line 1145
    new-instance p4, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;

    invoke-direct {p4, p0, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;ILjava/lang/Object;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized sendSceneData(Ljava/lang/String;)V
    .locals 3

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

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1086
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v0, "VuiSceneManager"

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSceneData e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 2386
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-void
.end method

.method public setFeatureState(Z)V
    .locals 4

    .line 196
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eq v0, p1, :cond_5

    if-eqz p1, :cond_4

    .line 198
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 201
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 203
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 215
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 224
    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 230
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleAllSceneCache(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public setInSpeech(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mIsInSpeech:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsWholeScene(Ljava/lang/String;Z)V
    .locals 1

    .line 2147
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 2150
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setObserverPackageName(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",pid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public setSceneIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2192
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setIdList(Ljava/util/List;)V

    .line 2193
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2138
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 2141
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0

    .line 2353
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setmPackageVersion(Ljava/lang/String;)V
    .locals 0

    .line 2357
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mPackageVersion:Ljava/lang/String;

    return-void
.end method

.method public storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "storeFeedbackInfo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",soundArea:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VuiSceneManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 260
    sget p2, Lcom/xiaopeng/speech/vui/VuiSceneManager;->REMOVE_FEED_BACK:I

    iput p2, p1, Landroid/os/Message;->what:I

    .line 261
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/apirouter/Utils;->isCorrectObserver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VuiSceneManager"

    const-string/jumbo v0, "\u6ce8\u518cobserver\u4e0d\u5408\u6cd5,observer\u662fapp\u7684\u5305\u540d\u52a0observer\u7684\u7c7b\u540d\u7ec4\u6210"

    .line 145
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mObserver:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 166
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->registerReceiver()V

    return-void
.end method

.method public subscribe(Z)V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 844
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 794
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 808
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 810
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->registerReceiver()V

    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 978
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 983
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$10;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 2

    .line 814
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 819
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$8;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    const-string v0, "VuiSceneManager"

    const-string v1, "mObserver == null"

    .line 998
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1002
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1759
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    :cond_0
    return-void
.end method

.method public updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 1

    .line 1637
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 1638
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1557
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2

    .line 1594
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1595
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager$19;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vuiFeedBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",soundArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VuiSceneManager"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$2;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
