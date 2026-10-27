.class public Lcom/xiaopeng/speech/vui/VuiEngineImpl;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;,
        Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiEngine"

.field private static final VUI_SCENE_TAG:Ljava/lang/String; = "PopPanel"

.field public static final mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSceneIdPrefix:Ljava/lang/String;

.field public static screenNodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/model/AppScreenNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

.field public isAccessibilityScene:Z

.field private mBackNaviSceneStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDispatherHandler:Landroid/os/Handler;

.field private mDispatherThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

.field private mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

.field private mainHandler:Landroid/os/Handler;

.field private mainThreadSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private querySceneIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

.field private vuiStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 110
    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MainMusicConcentration"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainThreadSceneList:Ljava/util/List;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mBackNaviSceneStack:Ljava/util/List;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    const/4 v1, 0x0

    .line 1040
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 1041
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 1185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    .line 1249
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    const-string v1, "VuiEngine"

    const-string v2, "5.1.1.3_HEAD_779b00c_2024/09/14 09:31:00"

    .line 136
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/constants/Foo;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->lazyInitThread()V

    .line 144
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mResources:Landroid/content/res/Resources;

    .line 145
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 150
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageName(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setContext(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 154
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageName(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setContext(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 158
    new-instance v2, Lcom/xiaopeng/speech/vui/EventDispatcher;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 159
    new-instance p2, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    .line 161
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 164
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/speech/vui/VuiEngineImpl$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$1;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VuiEngine init e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MainMusicConcentration"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainThreadSceneList:Ljava/util/List;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mBackNaviSceneStack:Ljava/util/List;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    const/4 v1, 0x0

    .line 1040
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 1041
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 1185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    .line 1249
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    const-string v1, "VuiEngine"

    const-string v2, "5.1.1.3_HEAD_779b00c_2024/09/14 09:31:00"

    .line 330
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 335
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/constants/Foo;->setContext(Landroid/content/Context;)V

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->lazyInitThread()V

    .line 337
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mResources:Landroid/content/res/Resources;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageName(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setContext(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 342
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageName(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setContext(Landroid/content/Context;)V

    .line 347
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 349
    new-instance v2, Lcom/xiaopeng/speech/vui/EventDispatcher;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 350
    new-instance p2, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 353
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 355
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VuiEngine init e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    :goto_0
    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainThreadSceneList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onScreenChanged(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiStateChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->sendVuiStateChangedEvent(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/EventDispatcher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setMainSceneBuildElements(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onAreaChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mBackNaviSceneStack:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handlerEnterScene(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)Landroid/content/Context;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isChangeActiveScene(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private addListener()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    const-string v1, "com.xiaopeng.napa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/apirouter/Utils;->isXpDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/view/WindowManagerFactory;->create(Landroid/content/Context;)Lcom/xiaopeng/view/WindowManagerFactory;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$2;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/view/WindowManagerFactory;->registerSharedListener(Lcom/xiaopeng/view/ISharedDisplayListener;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x606

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x607

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x403

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkScrollSubViewIsInsight(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1216
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1220
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 1224
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    .line 1227
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 1228
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1229
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "scrollViewId"

    .line 1231
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1232
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1233
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1234
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :cond_4
    const-string v5, "elementId"

    .line 1236
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1237
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-string p2, "VuiEngine"

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScrollSubViewIsInsight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 1242
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->checkSubElementsIsInsight(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    .line 687
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 690
    :goto_0
    instance-of v2, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 693
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 694
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 696
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    const-string v3, "com.xiaopeng.musicradio"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    const v0, 0x1020002

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 698
    instance-of p1, v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 699
    check-cast v0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method private getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 708
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/app/Service;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 712
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private handlerEnterScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    .line 623
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 625
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VuiSceneTagInfo]enterScene:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",handlerEnterScene result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", displayLocation: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "VuiEngine"

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 627
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p2

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 630
    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 631
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    .line 635
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-eqz v4, :cond_1

    .line 637
    invoke-virtual {v4, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 638
    invoke-virtual {v4, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 643
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    if-eqz v4, :cond_4

    .line 645
    invoke-virtual {v4, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sceneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "displayLocationCacheInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",displayLocation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",enterNewScene:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 649
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 650
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->isSending()Z

    move-result p2

    if-nez p2, :cond_2

    .line 652
    invoke-virtual {v4, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 663
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p2

    .line 665
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p3

    const/4 v1, 0x5

    invoke-virtual {p3, v1, v2, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 666
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p3

    invoke-virtual {p3, v1, v2, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 669
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 670
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez v0, :cond_8

    .line 673
    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    goto :goto_2

    .line 675
    :cond_8
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_2
    return-void
.end method

.method private isChangeActiveScene(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 590
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 591
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    .line 593
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Dialog"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "dialog"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    :cond_0
    invoke-interface {p3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 597
    :cond_1
    instance-of v3, v3, Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 598
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene stackContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VuiEngine"

    invoke-static {v4, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 600
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, p2, Landroid/app/Activity;

    if-eqz v3, :cond_3

    instance-of v3, v2, Landroid/app/Service;

    if-nez v3, :cond_2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_3

    .line 602
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene has same context:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface {p3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private lazyInitThread()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiEngine-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mThread:Landroid/os/HandlerThread;

    .line 369
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 370
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiEngine-Disptcher-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherThread:Landroid/os/HandlerThread;

    .line 374
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 375
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private onAreaChanged()V
    .locals 7

    .line 266
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAreaChanged, areaStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VuiEngine"

    invoke-static {v3, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 271
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAreaChanged, sceneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {p0, v4, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateAreaLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onScreenChanged(I)V
    .locals 5

    .line 308
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenChanged, screenName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sharedId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", screenNodeMap: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VuiEngine"

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    sget-object p1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 318
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onVuiStateChanged()V
    .locals 6

    .line 1964
    :try_start_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1965
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1967
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1968
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 1969
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1970
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1971
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1972
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1974
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "VuiEngine"

    const-string v1, "sendVuiStateChangedEvent error"

    .line 1985
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendVuiStateChangedEvent(Z)V
    .locals 0

    .line 1991
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    .line 1993
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiStateChanged()V

    return-void
.end method

.method private setMainSceneBuildElements(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 2

    .line 2833
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v1, :cond_0

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuildSceneTask full_scene_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2837
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2838
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2840
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2841
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p1, v0, v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    return-void
.end method

.method private setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 2811
    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, 0x0

    .line 2818
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 2821
    :cond_1
    invoke-static {v0, p3, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 2823
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2824
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 2826
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2827
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildScene full_scene_info:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VuiEngine"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p3
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 3048
    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 3049
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 3050
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_0

    .line 3051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 3053
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 3054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSceneTask full_scene_info"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VuiEngine"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    .line 2375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    new-instance v7, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    .line 2472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 2473
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2474
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2475
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2476
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {v1, p3, v2, p1, p2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2478
    :cond_0
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2482
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    .line 2488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 2489
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2490
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/view/View;

    .line 2491
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 2492
    new-instance p3, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2494
    :cond_0
    new-instance p3, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {p3, p1, p2, v2, p4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2498
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    .line 2449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_3

    .line 2450
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2451
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 2452
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Landroid/view/View;

    .line 2453
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p5

    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    .line 2454
    new-instance p5, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    move-object v1, p5

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2456
    :cond_1
    new-instance p5, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v1, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2460
    :cond_2
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v3, v1

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p6

    .line 2406
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 2407
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2408
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2409
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v13

    move-object v10, v0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p7

    move-object/from16 v19, p8

    invoke-direct/range {v10 .. v19}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2411
    :cond_1
    new-instance v10, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v0, v10

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v9
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p6

    .line 2429
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 2430
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2431
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2432
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v15

    move-object v12, v0

    move-object/from16 v14, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    invoke-direct/range {v12 .. v23}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2434
    :cond_1
    new-instance v12, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v0, v12

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v11
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    .line 2388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    new-instance v7, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private varargs structureViewWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            "[",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/task/TaskWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 2511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2512
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    if-eqz v5, :cond_1

    if-nez p3, :cond_0

    .line 2515
    new-instance v10, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    sget-object v8, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-object v4, v10

    move-object v6, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2517
    :cond_0
    new-instance v11, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    sget-object v8, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-object v4, v11

    move-object v6, p1

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public addDupVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2127
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    return-void
.end method

.method public addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1788
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1795
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 8

    .line 1757
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1763
    :cond_1
    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$20;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$20;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 2

    .line 2544
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2547
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 2549
    :cond_2
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$32;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2122
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
    .locals 11

    .line 2132
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 2135
    iget-object v9, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 2137
    :cond_2
    new-instance v10, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p6

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 2600
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    return-void
.end method

.method public addVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    const-string v8, "primary"

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 831
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    .line 845
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p0

    .line 848
    iget-object v12, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v12, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    new-instance v13, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p9

    move/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;ZLjava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v12, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    move-object v0, p0

    :goto_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    const-string v8, "primary"

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 899
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v8, p2

    .line 910
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 914
    iget-object v0, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v8, :cond_4

    .line 917
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 925
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 926
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void

    .line 929
    :cond_3
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/xiaopeng/speech/vui/VuiEngineImpl$9;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p9

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$9;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;ZLjava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v12, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 918
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 921
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 2532
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2533
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 2534
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 2535
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    return-object p1
.end method

.method public disableChildVuiAttrWhenInvisible(Landroid/view/View;)V
    .locals 2

    .line 2302
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2303
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->disableChildVuiAttrsWhenInvisible:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public disableViewVuiMode()V
    .locals 2

    const-string v0, "VuiEngine"

    const-string v1, "user disable view\'s vui mode"

    .line 2560
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisableViewMode()V

    return-void
.end method

.method public disableVuiFeature()V
    .locals 2

    const-string v0, "VuiEngine"

    const-string v1, "user disable feature"

    .line 2331
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2332
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userSetFeatureState(Z)V

    return-void
.end method

.method public dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1872
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1875
    :cond_0
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableVuiFeature()V
    .locals 2

    const-string v0, "VuiEngine"

    const-string v1, "user enable feature"

    .line 2336
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2337
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userSetFeatureState(Z)V

    return-void
.end method

.method public enterDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "primary"

    :cond_1
    if-eqz p1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    goto :goto_0

    .line 438
    :cond_2
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Z)V
    .locals 1

    .line 424
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public exitDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 7

    .line 743
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 746
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "primary"

    :cond_2
    move-object v4, p2

    .line 752
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;Z)V

    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Z)V
    .locals 2

    .line 735
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method

.method public getActiveSceneId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3095
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 3034
    :cond_0
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3035
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3036
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3037
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3038
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1996
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getElementState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",elementId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getJSONType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2003
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJSONType(Ljava/lang/String;)Z
    .locals 2

    .line 2008
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2009
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{"

    .line 2010
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 2012
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3

    .line 3060
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3063
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3065
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3067
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getVuiElementId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_"

    if-eqz p1, :cond_0

    .line 2358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 2361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method public getVuiElementTag(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 2233
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "4657"

    .line 2235
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 2321
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2322
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2

    .line 3074
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3077
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3078
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 3079
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3081
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3082
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3083
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    :cond_2
    return-object p1
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            ")V"
        }
    .end annotation

    .line 1679
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1683
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    .line 2592
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribeVuiFeature()V

    goto :goto_0

    .line 2595
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribe(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isAccessibilityScene()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    return v0
.end method

.method public isInSpeech()Z
    .locals 1

    .line 2345
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isInSpeech()Z

    move-result v0

    return v0
.end method

.method public isSpeechShowNumber()Z
    .locals 1

    .line 3090
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3091
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isInSpeech()Z

    move-result v0

    return v0
.end method

.method public isVuiFeatureDisabled()Z
    .locals 1

    .line 2341
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    return v0
.end method

.method public onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    .line 1253
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "sceneId"

    .line 1254
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1255
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "vui.scrollview.childview.visible"

    .line 1256
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "elements"

    .line 1257
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1259
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->checkScrollSubViewIsInsight(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v2, "vui.element.enabled"

    .line 1260
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "subSceneIds:"

    const-string v5, "VuiEngine"

    const-string v6, "elementId"

    if-eqz v2, :cond_3

    .line 1261
    :try_start_1
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1262
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1264
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v0

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 1267
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 1268
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1269
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1270
    invoke-virtual {v2, v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1272
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz v2, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getElementEnabled(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1282
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz p2, :cond_6

    .line 1284
    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getElementEnabled(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v2, "vui.element.scroll.state"

    .line 1286
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1287
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "direction"

    .line 1288
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1292
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v1

    .line 1293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 1295
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 1296
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1297
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1298
    invoke-virtual {v4, v2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1300
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz v4, :cond_4

    .line 1302
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-interface {v4, p1, v0}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getScrollViewState(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1310
    :cond_5
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz p2, :cond_6

    .line 1312
    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getScrollViewState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVuiQueryCallBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1324
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1326
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 1329
    :cond_0
    invoke-virtual {p0, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getJSONType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "sceneId"

    .line 1332
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1333
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public removeDupVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2157
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;)V
    .locals 2

    .line 1726
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1730
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$19;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1703
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1707
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$18;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2

    .line 1818
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1821
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1822
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$22;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$22;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1843
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1846
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$23;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 2

    .line 2167
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2171
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBuildElements(Ljava/lang/String;)V
    .locals 7

    .line 2644
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2648
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 2649
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    .line 2650
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2652
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 2654
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isMainScene"

    .line 2655
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v4, "subSceneIds"

    .line 2656
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2657
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 2658
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2659
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "VuiEngine"

    .line 2668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sceneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "isMainScene:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",subSceneIds:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p1, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2671
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setBuildElements(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2676
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2677
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2682
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2685
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2686
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCustomDoActionTag(Landroid/view/View;)V
    .locals 2

    .line 2582
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2583
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDoAction:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 2565
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2566
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2567
    sget p2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->executeVirtualId:I

    const-string v0, "10000"

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 2569
    :cond_0
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->executeVirtualId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10000_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2263
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2264
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLoglevel(I)V
    .locals 0

    .line 2540
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->setLogLevel(I)V

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 2588
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setProcessName(Ljava/lang/String;)V

    .line 2589
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setProcessName(Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1089
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1093
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1141
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1144
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$12;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2849
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2852
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 2853
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "primary"

    .line 2844
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2939
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2942
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2944
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2576
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2577
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->virtualResourceName:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiCustomDisableControlTag(Landroid/view/View;)V
    .locals 2

    .line 2253
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2254
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableControl:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiCustomDisableFeedbackTag(Landroid/view/View;)V
    .locals 2

    .line 2273
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2274
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedback:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2279
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2286
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2287
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2289
    sget p2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2291
    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "VuiEngine"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 2223
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4657_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2225
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2226
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 2227
    check-cast p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVuiElementUnSupportTag(Landroid/view/View;Z)V
    .locals 1

    .line 2243
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2244
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiElementVisibleTag(Landroid/view/View;Z)V
    .locals 1

    .line 2315
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2316
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 5

    .line 2308
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2309
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2310
    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiLabelUnSupportText:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1345
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1348
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1349
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1351
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 1352
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1353
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1356
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setVuiStatefulButtonClick(Landroid/view/View;)V
    .locals 2

    .line 2296
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2297
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiStatefulButtonClick:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2

    .line 2060
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2064
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$26;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$26;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 2

    .line 2075
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2079
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$27;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$27;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 2106
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2110
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 2

    .line 2090
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2094
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$28;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$28;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAreaLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 280
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAreaLocation, sceneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$4;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2605
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayLocation, sceneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", displayLocation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VuiEngine"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2609
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2610
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2611
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1045
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1201
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    if-eqz v1, :cond_1

    .line 1204
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1205
    invoke-interface {v1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;->onShowVuiListIndex()V

    goto :goto_1

    .line 1207
    :cond_0
    invoke-interface {v1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;->onHideVuiListIndex()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 1442
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 1445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1448
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1450
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 1454
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecyclerViewItemView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VuiEngine"

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1460
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1461
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 1602
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1501
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$14;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 1537
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 1543
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1544
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    return-void

    .line 1547
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1

    .line 2025
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2028
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 2029
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2033
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2036
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 2037
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 2038
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    return-void
.end method

.method public vuiFeedback(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1

    .line 2047
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2050
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 2051
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    return-void
.end method

.method public vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1177
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1180
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
