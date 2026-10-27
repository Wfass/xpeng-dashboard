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

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->VUI_SCENE_URI:Landroid/net/Uri;

    const-string v0, "content://com.xiaopeng.speech.vuiscene/scene/delete/"

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->VUI_SCENE_DELETE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    .line 98
    sput v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->REMOVE_FEED_BACK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VuiSceneToolManager"

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    const/4 v0, 0x0

    .line 100
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

    const-string v0, "com.xiaopeng.speechtesttools"

    .line 122
    invoke-static {v0}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->lazyInitThread()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->hasProcessFeature()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/os/Binder;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mBinder:Landroid/os/Binder;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Landroid/os/Binder;)Landroid/os/Binder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserver:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->checkUploadScene(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 73
    sget v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->SEND_UPLOAD_MESSAGE:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0

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
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p0
.end method

.method static synthetic access$902(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mReceiver:Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    return-object p1
.end method

.method private checkUploadScene(Ljava/lang/String;)V
    .locals 9

    .line 880
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 881
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 883
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionType(Ljava/lang/String;)I

    move-result v1

    .line 884
    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

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

    move-object v3, p1

    .line 887
    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 889
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 890
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 891
    invoke-virtual {p0, v4, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 892
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 893
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 895
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 896
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 897
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 898
    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto/16 :goto_0

    .line 901
    :cond_2
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 902
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

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

    invoke-virtual {p0, v1, v5, p1, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    goto :goto_0

    .line 906
    :cond_3
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    if-ne v1, p1, :cond_4

    .line 907
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    if-eqz p1, :cond_4

    .line 909
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 910
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 911
    invoke-virtual {v2, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2370
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2374
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

    const-string v3, "VuiSceneToolManager"

    invoke-static {v3, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2376
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 2377
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {v0, p2, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 2379
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2381
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

    .line 2384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 2386
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2387
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

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

    .line 2343
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2345
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2346
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 2348
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2349
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_3

    .line 2350
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2351
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2353
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {p2, v4, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p2

    .line 2355
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, p2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2357
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

    const-string v0, "VuiSceneToolManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
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

    const-string v0, "com.xiaopeng.speechtesttools.VuiFusionService"

    return-object v0
.end method

.method private getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_1

    .line 2328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2330
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const-string p1, "VuiSceneToolManager"

    if-eqz v0, :cond_0

    .line 2332
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

    .line 2334
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

    const/4 p1, 0x0

    return-object p1

    .line 2462
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    return-object p1

    .line 2465
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private getScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 1

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

    const/4 p1, 0x0

    return-object p1

    .line 2476
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    return-object p1

    .line 2479
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private hasProcessFeature()Z
    .locals 1

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
    .locals 5

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUploadScene sceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getTopRunningPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2486
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getTopRunningPackageName()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsInSpeech:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

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

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneToolManager"

    .line 2485
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "com.android.systemui"

    .line 2489
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.systemui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

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
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2496
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2497
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2498
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 2503
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

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.carspeechservice"

    .line 2508
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 2511
    :cond_6
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.car.settings"

    .line 2512
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.carcontrol"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.chargecontrol"

    .line 2513
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.napa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.caraccount"

    .line 2514
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    return v1

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
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
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 556
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$7;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private sendBuildCacheInOther(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 0

    .line 2527
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2528
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2529
    invoke-virtual {p0, p2, p1, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    :cond_0
    return-void
.end method

.method private updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VuiSceneToolManager"

    const-string v1, "updateDisplayLocation  =======   "

    .line 497
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 499
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1011
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$14;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 1

    .line 1041
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 1042
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$15;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$15;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 0

    return-void
.end method

.method public buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 940
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "elementId"

    const-string v1, "elements"

    const-string v2, ""

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2005
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 2009
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_2

    .line 2014
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_2

    return-object v2

    :cond_2
    const/4 v4, 0x0

    .line 2018
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2019
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    move v7, v6

    .line 2036
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 2037
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2039
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "scrollViewId"

    .line 2040
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2041
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2042
    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2043
    invoke-virtual {p0, p1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    .line 2044
    invoke-virtual {p0, p1, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v8

    if-eqz v4, :cond_6

    .line 2045
    iget-object v10, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_6

    const-string v10, "visible"

    const/4 v11, 0x1

    if-eqz v8, :cond_5

    .line 2046
    :try_start_1
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v12, :cond_5

    .line 2047
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/ScrollView;

    if-eqz v12, :cond_6

    .line 2049
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2050
    iget-object v8, v8, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2051
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2053
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2056
    :cond_4
    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2060
    :cond_5
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    move-object v4, v9

    .line 2064
    :cond_7
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2067
    :cond_8
    :goto_2
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2068
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2070
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-object v2
.end method

.method public cleanExpiredSceneTime(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1831
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$23;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public destroyScene(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1788
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$22;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$22;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 1661
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    return-object v0

    .line 1664
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    if-eqz p3, :cond_4

    .line 1696
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->isUploadScene(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p3

    if-nez p3, :cond_3

    .line 1697
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(Ljava/lang/String;)V

    .line 1699
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1761
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

    const-string p3, "VuiSceneToolManager"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1764
    :cond_4
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_5
    :goto_1
    return-object v0
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1781
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    .line 341
    :cond_1
    iget-object p5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-nez p5, :cond_2

    return-void

    .line 351
    :cond_2
    new-instance v6, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .locals 7

    const-string v0, "VuiSceneToolManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 2275
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewFromSceneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ",sceneId:"

    if-eqz v2, :cond_1

    .line 2278
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

    .line 2282
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findRootView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    .line 2283
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

    .line 2285
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2286
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 2287
    new-instance v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2289
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    const-string v4, "findView view by rootview"

    .line 2290
    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_5

    move-object v4, v1

    goto :goto_2

    .line 2291
    :cond_5
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_b

    .line 2293
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_a

    .line 2295
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_6

    move v4, v3

    goto :goto_3

    .line 2296
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_b

    .line 2298
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2299
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v1

    goto :goto_4

    .line 2300
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v6

    :goto_4
    if-nez v6, :cond_8

    move-object v6, v1

    goto :goto_5

    .line 2301
    :cond_8
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_9

    .line 2303
    invoke-direct {p0, v6, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getHitView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2305
    new-instance p1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    invoke-direct {p1, v6, v5}, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object v2, p1

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2311
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

    .line 2318
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

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findViewWithId  ===  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneToolManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "_"

    .line 2403
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    const/4 v2, 0x0

    .line 2405
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 2408
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v3, v5, :cond_6

    .line 2410
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2412
    array-length v7, v3

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 2413
    aget-object v7, v3, v6

    goto :goto_0

    .line 2416
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

    .line 2419
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_5

    .line 2421
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 2422
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

    .line 2423
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v4

    .line 2425
    :cond_2
    instance-of v4, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_3

    .line 2426
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

    .line 2428
    :cond_3
    array-length v1, v3

    if-gt v1, v8, :cond_4

    return-object p2

    .line 2431
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2432
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2435
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2436
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2437
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2438
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2441
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2442
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findViewWithId(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v4

    .line 2449
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2450
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

    .line 2077
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 2080
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    .line 2081
    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    .line 2085
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v4

    .line 2086
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v5

    .line 2087
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    .line 2089
    instance-of v4, v5, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-nez v4, :cond_4

    .line 2090
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 2094
    :goto_0
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "canScrollRight"

    const-string v7, "canScrollLeft"

    const/4 v8, -0x1

    const-string v9, "canScrollDown"

    const-string v10, "canScrollUp"

    const-string v11, ",elementId:"

    const-string v12, ",sceneId:"

    const-string v13, "getElementState jsonObject: "

    const-string v14, "getElementState e:"

    const/4 v15, 0x1

    const-string v2, "VuiSceneToolManager"

    if-eqz v5, :cond_9

    if-eqz v4, :cond_7

    .line 2095
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v5, v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_7

    .line 2096
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 2097
    instance-of v4, v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_5

    .line 2098
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "disableTpl"

    .line 2099
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2101
    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2103
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2104
    invoke-virtual {v4, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2105
    invoke-virtual {v4, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2106
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2114
    :catch_0
    :cond_5
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    .line 2115
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v5

    .line 2116
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v8

    .line 2117
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v15

    move-object/from16 v16, v14

    .line 2119
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 2120
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

    .line 2121
    invoke-virtual {v14, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2122
    invoke-virtual {v14, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 2124
    :cond_6
    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2125
    invoke-virtual {v14, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2127
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 2128
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

    .line 2130
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

    .line 2134
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2135
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2138
    :cond_8
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2139
    invoke-virtual {v3, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2140
    invoke-virtual {v3, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 2144
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

    .line 2149
    sget-object v14, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2150
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v3

    if-eq v3, v8, :cond_a

    .line 2154
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    .line 2155
    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2156
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    .line 2160
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

    .line 2164
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2166
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/viewpager/widget/ViewPager;

    if-nez v3, :cond_b

    .line 2167
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    goto :goto_4

    .line 2169
    :cond_b
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    :goto_4
    if-eqz v3, :cond_18

    .line 2173
    :try_start_6
    invoke-virtual {v3, v8}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    const/4 v8, 0x1

    .line 2174
    invoke-virtual {v3, v8}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    .line 2175
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2176
    invoke-virtual {v8, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2177
    invoke-virtual {v8, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 2181
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
    const/4 v8, 0x1

    .line 2188
    sget-object v14, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_19

    if-eqz v3, :cond_18

    .line 2189
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 2190
    new-instance v14, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2191
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2192
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v4, :cond_18

    .line 2193
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2194
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ScrollView;

    if-nez v3, :cond_10

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_d

    goto/16 :goto_7

    .line 2211
    :cond_d
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2212
    iget-object v6, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2215
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2216
    iget-object v7, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-nez v7, :cond_e

    move v8, v15

    goto :goto_5

    :cond_e
    const/4 v8, 0x1

    .line 2217
    :goto_5
    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2218
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v7, v3

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lt v7, v3, :cond_f

    goto :goto_6

    :cond_f
    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v6, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2224
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

    .line 2195
    iget-object v6, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_11

    return-object v3

    .line 2198
    :cond_11
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2199
    iget-object v7, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-nez v7, :cond_12

    move v8, v15

    goto :goto_8

    :cond_12
    const/4 v8, 0x1

    .line 2200
    :goto_8
    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2201
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ne v7, v4, :cond_13

    goto :goto_9

    :cond_13
    const/4 v15, 0x1

    :goto_9
    invoke-virtual {v3, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2207
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

    .line 2229
    :cond_14
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v4, :cond_18

    .line 2230
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 2231
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ScrollView;

    if-nez v3, :cond_18

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_15

    goto/16 :goto_c

    .line 2234
    :cond_15
    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2235
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 2237
    :try_start_9
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2238
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2239
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view width:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v14, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ",parent:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ",scrollX:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v9, :cond_16

    move v10, v15

    goto :goto_a

    :cond_16
    const/4 v10, 0x1

    .line 2240
    :goto_a
    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2241
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v9, v3

    iget-object v3, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v9, v3, :cond_17

    goto :goto_b

    :cond_17
    const/4 v15, 0x1

    :goto_b
    invoke-virtual {v8, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    .line 2246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2247
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

    .line 2257
    iget-object v0, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 2258
    iget-object v0, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    invoke-virtual {v3, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setEnabled(Ljava/lang/Boolean;)V

    .line 2260
    :cond_1b
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2261
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2262
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
    .locals 6

    const-string v0, "main"

    .line 722
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 728
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

    .line 729
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 731
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 734
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 737
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 739
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

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 746
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 742
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 746
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_4

    .line 746
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 749
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    :cond_4
    :goto_5
    throw v0
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

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sceneIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 609
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

    if-eqz p1, :cond_1

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 613
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v3, :cond_2

    .line 615
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->reset(Z)V

    .line 616
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    :cond_1
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
    invoke-virtual {v3, v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 622
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeOtherCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 626
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

    const-string v0, "VuiSceneToolManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public handleSceneDataInfo()V
    .locals 6

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
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 583
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 589
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 590
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 591
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 592
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 596
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 598
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    const-string v5, "primary"

    invoke-virtual {p0, v3, v4, v1, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1921
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

    const-string v1, "VuiSceneToolManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1922
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;-><init>()V

    .line 1923
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    :cond_0
    const/4 v1, 0x0

    .line 1926
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeScene(Z)V

    .line 1927
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setWholeSceneId(Ljava/lang/String;)V

    .line 1928
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mVuiSubSceneInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "isNaviTop"

    .line 403
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
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

    .line 406
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 314
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1149
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0

    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 632
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;Z)V

    return-void
.end method

.method public sendSceneData(IZLjava/lang/Object;Z)V
    .locals 0

    .line 925
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-nez p4, :cond_0

    return-void

    .line 926
    :cond_0
    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p4

    .line 927
    iput p1, p4, Landroid/os/Message;->arg1:I

    .line 928
    sget p1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->SEND_UPLOAD_MESSAGE:I

    iput p1, p4, Landroid/os/Message;->what:I

    .line 929
    iput p2, p4, Landroid/os/Message;->arg2:I

    .line 930
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 931
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized sendSceneData(Ljava/lang/String;)V
    .locals 3

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
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 873
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v0, "VuiSceneToolManager"

    .line 874
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-void
.end method

.method public setFeatureState(Z)V
    .locals 4

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eq v0, p1, :cond_6

    if-eqz p1, :cond_5

    .line 205
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 206
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isAppTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 208
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 219
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 228
    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handlerActiveScene(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handleAllSceneCache(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handleSceneDataInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public setInSpeech(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mIsInSpeech:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setObserverPackageName(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 758
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

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1984
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setmPackageVersion(Ljava/lang/String;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mPackageVersion:Ljava/lang/String;

    return-void
.end method

.method public storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    return-void

    .line 261
    :cond_0
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

    const-string v0, "VuiSceneToolManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 265
    sget p2, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->REMOVE_FEED_BACK:I

    iput p2, p1, Landroid/os/Message;->what:I

    .line 266
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserverPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/apirouter/Utils;->isCorrectObserver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VuiSceneToolManager"

    const-string/jumbo v0, "\u6ce8\u518cobserver\u4e0d\u5408\u6cd5,observer\u662fapp\u7684\u5305\u540d\u52a0observer\u7684\u7c7b\u540d\u7ec4\u6210"

    .line 137
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mObserver:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->registerReceiver()V

    return-void
.end method

.method public subscribe(Z)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 661
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 438
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 454
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->registerReceiver()V

    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 765
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 770
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$10;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    const-string v0, "VuiSceneToolManager"

    const-string v1, "mObserver == null"

    .line 785
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 789
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updateAppAreaName(Ljava/lang/String;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1505
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$20;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiEngine:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    :cond_0
    return-void
.end method

.method public updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 1

    .line 1383
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 1384
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1303
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1341
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$18;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
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

    const-string v2, "VuiSceneToolManager"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->mApiRouterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
