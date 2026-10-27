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

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initEvent"    # Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "MainMusicConcentration"

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

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    .line 1040
    const/4 v1, 0x0

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

    .line 136
    const-string v1, "VuiEngine"

    const-string v2, "5.1.1.3_HEAD_779b00c_2024/09/14 09:31:00"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/constants/Foo;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->lazyInitThread()V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mResources:Landroid/content/res/Resources;

    .line 145
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 150
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageName(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setContext(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 154
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageName(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setContext(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 158
    new-instance v1, Lcom/xiaopeng/speech/vui/EventDispatcher;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 159
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    .line 161
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 162
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 164
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$1;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VuiEngine init e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initEvent"    # Z
    .param p3, "accessibilityScene"    # Z

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "MainMusicConcentration"

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

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    .line 1040
    const/4 v1, 0x0

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

    .line 330
    const-string v1, "VuiEngine"

    const-string v2, "5.1.1.3_HEAD_779b00c_2024/09/14 09:31:00"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    .line 335
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/constants/Foo;->setContext(Landroid/content/Context;)V

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->lazyInitThread()V

    .line 337
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mResources:Landroid/content/res/Resources;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setmPackageName(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setContext(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 342
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageName(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setObserverPackageName(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setContext(Landroid/content/Context;)V

    .line 347
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setEngine(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    .line 349
    new-instance v1, Lcom/xiaopeng/speech/vui/EventDispatcher;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 350
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 353
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 355
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setmPackageVersion(Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VuiEngine init e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/List;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 78
    invoke-direct/range {p0 .. p10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateElementAttrRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "x3"    # Ljava/util/List;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mUpdateSceneRun:Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "x5"    # Ljava/util/List;

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainThreadSceneList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p3, "x3"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onScreenChanged(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p4, "x4"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p5, "x5"    # [Landroid/view/View;

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiStateChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Z

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->sendVuiStateChangedEvent(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->eventDispatcher:Lcom/xiaopeng/speech/vui/EventDispatcher;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setMainSceneBuildElements(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .param p3, "x3"    # Ljava/util/List;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .param p3, "x3"    # Ljava/util/List;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onAreaChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mBackNaviSceneStack:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handlerEnterScene(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Ljava/util/List;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isChangeActiveScene(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private addListener()V
    .locals 3

    .line 181
    const-string v0, "com.xiaopeng.napa"

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x606

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const/16 v1, 0x607

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    .line 263
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private checkScrollSubViewIsInsight(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elements"    # Lorg/json/JSONArray;

    .line 1215
    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1216
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    return-void

    .line 1220
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 1221
    .local v0, "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    if-nez v0, :cond_2

    .line 1222
    return-void

    .line 1224
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1225
    return-void

    .line 1227
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1228
    .local v1, "queryObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1229
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1230
    .local v3, "element":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 1231
    const-string v4, "scrollViewId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1232
    .local v4, "scrollViewId":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1233
    .local v5, "subElements":Lorg/json/JSONArray;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1234
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v5, v6

    .line 1236
    :cond_4
    const-string v6, "elementId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1237
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    .end local v3    # "element":Lorg/json/JSONObject;
    .end local v4    # "scrollViewId":Ljava/lang/String;
    .end local v5    # "subElements":Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1240
    .end local v2    # "i":I
    :cond_6
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkScrollSubViewIsInsight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1242
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->checkSubElementsIsInsight(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    .end local v0    # "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    .end local v1    # "queryObject":Lorg/json/JSONObject;
    :cond_7
    goto :goto_1

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1215
    :cond_8
    :goto_2
    return-void
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 687
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 689
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 690
    .local v2, "context":Landroid/content/Context;
    :goto_0
    instance-of v3, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_1

    .line 691
    return-object v2

    .line 693
    :cond_1
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 694
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 696
    :cond_2
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_4

    const-string v3, "com.xiaopeng.musicradio"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 697
    if-eqz v0, :cond_3

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    .line 698
    .local v1, "view":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_4

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 699
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    return-object v3

    .line 702
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    return-object v2

    .line 704
    .end local v2    # "context":Landroid/content/Context;
    :cond_5
    return-object v1
.end method

.method private getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

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
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getDialogOwnContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 709
    :cond_2
    :goto_0
    return-object p1
.end method

.method private handlerEnterScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z
    .param p3, "displayLocation"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 623
    move-object/from16 v9, p3

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v8, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 624
    .local v10, "result":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v8, v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 625
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneTagInfo]enterScene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",handlerEnterScene result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 627
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 628
    .local v11, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    const/4 v1, 0x0

    .line 629
    .local v1, "enterNewScene":Z
    if-eqz v11, :cond_0

    .line 630
    invoke-virtual {v11, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    invoke-virtual {v11, v7, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v1, 0x1

    .line 635
    .end local v1    # "enterNewScene":Z
    .local v12, "enterNewScene":Z
    :cond_0
    move v12, v1

    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 636
    .local v13, "testBuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    if-eqz v13, :cond_1

    .line 637
    invoke-virtual {v13, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    invoke-virtual {v13, v7, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    const/4 v1, 0x1

    .line 642
    .local v1, "needUploadDisplayLocation":Z
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 643
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    .line 644
    .local v14, "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    if-eqz v14, :cond_5

    .line 645
    invoke-virtual {v14, v7}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "displayLocationInfo":Ljava/lang/String;
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "displayLocationCacheInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",displayLocation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",enterNewScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 649
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 650
    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->isSending()Z

    move-result v3

    if-nez v3, :cond_2

    .line 651
    const/4 v1, 0x0

    .line 652
    invoke-virtual {v14, v7}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 654
    const/4 v1, 0x0

    goto :goto_0

    .line 656
    :cond_3
    if-nez v12, :cond_4

    .line 657
    const/4 v1, 0x0

    .line 659
    .end local v2    # "displayLocationInfo":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    if-nez v12, :cond_6

    .line 660
    const/4 v1, 0x0

    .line 663
    .end local v1    # "needUploadDisplayLocation":Z
    .local v15, "needUploadDisplayLocation":Z
    :cond_6
    :goto_1
    move v15, v1

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 665
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 666
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 669
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v11    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v12    # "enterNewScene":Z
    .end local v13    # "testBuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v14    # "displayLocationInfoCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    .end local v15    # "needUploadDisplayLocation":Z
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 670
    :cond_8
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    .line 671
    .local v1, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v1, :cond_a

    .line 672
    if-nez v10, :cond_9

    .line 673
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    goto :goto_2

    .line 675
    :cond_9
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;

    invoke-direct {v3, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    :cond_a
    :goto_2
    return-void
.end method

.method private isChangeActiveScene(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z
    .locals 8
    .param p1, "newSceneId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
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

    .line 589
    .local p3, "enterSceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 590
    .local v0, "changeActiveScene":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 591
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    .local v2, "stackSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    .line 593
    .local v3, "stackListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .line 595
    const/4 v0, 0x0

    .line 596
    goto :goto_1

    .line 597
    :cond_1
    instance-of v4, v3, Landroid/app/Dialog;

    if-eqz v4, :cond_3

    .line 598
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 599
    .local v4, "stackContext":Landroid/content/Context;
    const-string v5, "VuiEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterScene stackContext:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-eqz v4, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, p2, Landroid/app/Activity;

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/app/Service;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroid/app/Application;

    if-eqz v5, :cond_3

    .line 602
    :cond_2
    const-string v5, "VuiEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterScene has same context:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface {p3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 604
    const/4 v0, 0x0

    .line 605
    goto :goto_1

    .line 590
    .end local v2    # "stackSceneId":Ljava/lang/String;
    .end local v3    # "stackListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v4    # "stackContext":Landroid/content/Context;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_4
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
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mThread:Landroid/os/HandlerThread;

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
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 375
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherHandler:Landroid/os/Handler;

    .line 377
    :cond_1
    return-void
.end method

.method private onAreaChanged()V
    .locals 8

    .line 266
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "areaStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "displayLocation":Ljava/lang/String;
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAreaChanged, areaStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", displayLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 271
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 272
    .local v4, "sceneId":Ljava/lang/String;
    const-string v5, "VuiEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAreaChanged, sceneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {p0, v4, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateAreaLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v4    # "sceneId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private onScreenChanged(I)V
    .locals 9
    .param p1, "sharedId"    # I

    .line 308
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "screenName":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenChanged, screenName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",sharedId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", screenNodeMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 314
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 317
    .local v4, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 318
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 319
    .local v6, "sceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p0, v7, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v6    # "sceneId":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 324
    .end local v5    # "i":I
    :cond_1
    goto :goto_2

    .line 326
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 327
    :cond_3
    :goto_2
    return-void
.end method

.method private onVuiStateChanged()V
    .locals 9

    .line 1964
    :try_start_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1965
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1967
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1968
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 1969
    .local v3, "localEnterSceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1970
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1971
    .local v5, "sceneId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1972
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    .line 1973
    .local v6, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v6, :cond_0

    .line 1974
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;

    invoke-direct {v8, p0, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    .end local v5    # "sceneId":Ljava/lang/String;
    .end local v6    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1983
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "localEnterSceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_0

    .line 1986
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_2
    goto :goto_2

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiEngine"

    const-string v2, "sendVuiStateChangedEvent error"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private sendVuiStateChangedEvent(Z)V
    .locals 1
    .param p1, "isInSpeech"    # Z

    .line 1991
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateListIndexState()V

    .line 1993
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiStateChanged()V

    .line 1994
    return-void
.end method

.method private setMainSceneBuildElements(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .param p2, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 2833
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v1, :cond_0

    .line 2834
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuildSceneTask full_scene_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    :cond_0
    if-eqz p1, :cond_1

    .line 2837
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2838
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2840
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2841
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2842
    return-void
.end method

.method private setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
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
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2812
    .local v0, "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez v0, :cond_0

    .line 2813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2818
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2819
    return-object v0

    .line 2821
    :cond_1
    invoke-static {v0, p3, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 2823
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2824
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 2826
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2827
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildScene full_scene_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_2
    return-object v0
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
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

    .line 3047
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p2, :cond_0

    .line 3048
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 3049
    .local v0, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 3050
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_0

    .line 3051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 3053
    .local v1, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 3054
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSceneTask full_scene_info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    .end local v0    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v1    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_0
    return-void
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "vuiElementGroupId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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
    .local v0, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    new-instance v7, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2377
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
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
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2473
    .local v0, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2474
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2475
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2476
    new-instance v2, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, p1, p2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2478
    :cond_0
    new-instance v2, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v2, p1, p2, v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2481
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 2482
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    :goto_1
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
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
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    .local v0, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2490
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2491
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2492
    new-instance v8, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    move-object v2, v8

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2494
    :cond_0
    new-instance v2, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v2, p1, p2, v1, p4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2497
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 2498
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    :goto_1
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "viewlist":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v0, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2451
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2452
    const/4 v1, 0x0

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2453
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2454
    new-instance v9, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    move-object v2, v9

    move-object v3, v1

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2456
    :cond_1
    new-instance v8, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v2, v8

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 2460
    :cond_2
    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v2, v1

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2462
    :goto_1
    return-object v0

    .line 2450
    :cond_3
    :goto_2
    return-object v0
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)Ljava/util/List;
    .locals 21
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p7, "isWholeScene"    # Z
    .param p8, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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

    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v9, p6

    .line 2406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 2407
    .local v10, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz v9, :cond_2

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2408
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2409
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/view/View;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v14

    move-object v11, v0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p7

    move-object/from16 v20, p8

    invoke-direct/range {v11 .. v20}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2411
    :cond_1
    new-instance v11, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2414
    :goto_0
    return-object v10

    .line 2407
    :cond_2
    :goto_1
    return-object v10
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;
    .locals 25
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p7, "isWholeScene"    # Z
    .param p8, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p9, "displayLocation"    # Ljava/lang/String;
    .param p10, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v11, p6

    .line 2429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2430
    .local v12, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    if-eqz v11, :cond_2

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2431
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2432
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/view/View;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v16

    move-object v13, v0

    move-object/from16 v15, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    invoke-direct/range {v13 .. v24}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2434
    :cond_1
    new-instance v13, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v0, v13

    move-object v1, v11

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

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2437
    :goto_0
    return-object v12

    .line 2430
    :cond_2
    :goto_1
    return-object v12
.end method

.method private structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "containNotChildrenView"    # Z
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
    .local p4, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    .local v0, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    new-instance v7, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2390
    return-object v0
.end method

.method private varargs structureViewWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;[Landroid/view/View;)Ljava/util/List;
    .locals 13
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "parentElementId"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p5, "views"    # [Landroid/view/View;
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

    .line 2511
    move-object/from16 v0, p5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2512
    .local v1, "listViewWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/task/TaskWrapper;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v11, v0, v3

    .line 2513
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_1

    .line 2514
    if-nez p3, :cond_0

    .line 2515
    new-instance v10, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v7

    sget-object v8, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-object v4, v10

    move-object v5, v11

    move-object v6, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2517
    :cond_0
    new-instance v12, Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v7

    sget-object v8, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    move-object v4, v12

    move-object v5, v11

    move-object v6, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    .end local v11    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2521
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addDupVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z

    .line 2127
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 2128
    return-void
.end method

.method public addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parentElementId"    # Ljava/lang/String;
    .param p3, "sceneId"    # Ljava/lang/String;

    .line 1788
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    return-void

    .line 1792
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1807
    return-void

    .line 1793
    :cond_2
    :goto_0
    return-void
.end method

.method public addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 1757
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    return-void

    .line 1760
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$20;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$20;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1775
    return-void

    .line 1761
    :cond_2
    :goto_0
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    .line 2544
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2545
    return-void

    .line 2547
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2548
    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 2549
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$32;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2557
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z

    .line 2122
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 2123
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z
    .param p6, "isDupActivity"    # Z

    move-object v8, p0

    .line 2132
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    return-void

    .line 2135
    :cond_0
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2136
    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 2137
    :cond_2
    iget-object v9, v8, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p1

    move/from16 v3, p6

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2152
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 2600
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 2601
    return-void
.end method

.method public addVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1
    .param p1, "vuiStateListener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    .line 1188
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 10
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "sceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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

    .line 831
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 832
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 14
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "sceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p8, "displayLocation"    # Ljava/lang/String;
    .param p9, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v11, p0

    .line 845
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    return-void

    .line 848
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;

    move-object v0, v13

    move-object v1, v11

    move-object v2, p1

    move-object/from16 v3, p9

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;ZLjava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v12, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 889
    return-void

    .line 849
    :cond_2
    :goto_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 10
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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

    .line 899
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 900
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 15
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p8, "displayLocation"    # Ljava/lang/String;
    .param p9, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v11, p0

    move-object/from16 v12, p2

    .line 910
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    return-void

    .line 914
    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 917
    :cond_1
    if-eqz v12, :cond_4

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

    .line 926
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 927
    return-void

    .line 929
    :cond_3
    iget-object v13, v11, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/xiaopeng/speech/vui/VuiEngineImpl$9;

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p9

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v12

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$9;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;ZLjava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1038
    return-void

    .line 918
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "sceneIdStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    .line 920
    .local v13, "rootView":Landroid/view/View;
    if-eqz v13, :cond_5

    .line 921
    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 923
    :cond_5
    return-void

    .line 915
    .end local v10    # "sceneIdStr":Ljava/lang/String;
    .end local v13    # "rootView":Landroid/view/View;
    :cond_6
    :goto_1
    return-void
.end method

.method public createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 2532
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2533
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 2534
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mPackageName:Ljava/lang/String;

    .line 2535
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 2533
    return-object v0
.end method

.method public disableChildVuiAttrWhenInvisible(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

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

    .line 2305
    :cond_0
    return-void
.end method

.method public disableViewVuiMode()V
    .locals 2

    .line 2560
    const-string v0, "VuiEngine"

    const-string v1, "user disable view\'s vui mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisableViewMode()V

    .line 2562
    return-void
.end method

.method public disableVuiFeature()V
    .locals 2

    .line 2331
    const-string v0, "VuiEngine"

    const-string v1, "user disable feature"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userSetFeatureState(Z)V

    .line 2333
    return-void
.end method

.method public dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vuiEvent"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 1872
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1873
    return-void

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mDispatherHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    return-void
.end method

.method public enableVuiFeature()V
    .locals 2

    .line 2336
    const-string v0, "VuiEngine"

    const-string v1, "user enable feature"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userSetFeatureState(Z)V

    .line 2338
    return-void
.end method

.method public enterDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 729
    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    .line 733
    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z

    .line 429
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 433
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    const-string p2, "primary"

    .line 436
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    goto :goto_0

    .line 437
    :cond_2
    move-object v0, p2

    .line 438
    .local v0, "finalDisplayLocation":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    return-void

    .line 436
    .end local v0    # "finalDisplayLocation":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z

    .line 424
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 425
    return-void
.end method

.method public exitDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 722
    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    .line 726
    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 743
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    const-string p2, "primary"

    .line 751
    :cond_2
    move-object v4, p2

    .line 752
    .local v4, "finalDisplayLocation":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void

    .line 746
    .end local v4    # "finalDisplayLocation":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z

    .line 735
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 736
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

    .line 3031
    .local p1, "wholeScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3032
    const-string v0, ""

    return-object v0

    .line 3034
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3035
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3036
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3037
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3038
    .local v2, "sceneId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3039
    return-object v2

    .line 3041
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sceneId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3042
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 1996
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    const/4 v0, 0x0

    return-object v0

    .line 1999
    :cond_0
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getElementState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",elementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getJSONType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->checkScrollSubViewIsVisible(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2003
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSONType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 2007
    const/4 v0, 0x0

    .line 2008
    .local v0, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2009
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2010
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2011
    const/4 v0, 0x1

    goto :goto_0

    .line 2012
    :cond_0
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2013
    const/4 v0, 0x1

    .line 2016
    :cond_1
    :goto_0
    return v0
.end method

.method public getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 3060
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3061
    return-object v1

    .line 3063
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

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

    .line 3066
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_2

    .line 3067
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    return-object v1

    .line 3069
    :cond_2
    return-object v1

    .line 3063
    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getVuiElementId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fatherId"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "viewId"    # Ljava/lang/String;

    .line 2357
    if-eqz p1, :cond_0

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2360
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2364
    :cond_1
    return-object p3
.end method

.method public getVuiElementTag(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2233
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2235
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "4657"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2236
    return-object v0

    .line 2239
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 2321
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2322
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2323
    .local v0, "isVisible":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 2324
    return-object v0

    .line 2327
    .end local v0    # "isVisible":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 3074
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3075
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

    move-result-object v0

    .line 3079
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 3080
    .local v1, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v1, :cond_2

    .line 3081
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3082
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3083
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 3086
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    return-object v0
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
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
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    return-void

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1699
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;

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

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribe(Ljava/lang/String;)V

    .line 2597
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
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 1253
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "sceneId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "sceneId":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1256
    const-string v2, "vui.scrollview.childview.visible"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1259
    .local v2, "elementIds":Lorg/json/JSONArray;
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->checkScrollSubViewIsInsight(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1260
    .end local v2    # "elementIds":Lorg/json/JSONArray;
    goto/16 :goto_2

    :cond_0
    const-string v2, "vui.element.enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1261
    const-string v2, "elementId"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1262
    .local v2, "elementId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    .line 1263
    .local v4, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v4, :cond_2

    .line 1264
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v5

    .line 1265
    .local v5, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "VuiEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subSceneIds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    if-eqz v5, :cond_2

    .line 1267
    nop

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 1268
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1269
    .local v6, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v7

    sget-object v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1270
    .local v7, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-virtual {v7, v6, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v8

    .line 1271
    .local v8, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v8, :cond_1

    .line 1272
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 1273
    .local v9, "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    if-eqz v9, :cond_1

    .line 1274
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-interface {v9, v2}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getElementEnabled(Ljava/lang/String;)V

    .line 1276
    return-void

    .line 1267
    .end local v6    # "subSceneId":Ljava/lang/String;
    .end local v7    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v8    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v9    # "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1282
    .end local v3    # "i":I
    .end local v5    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 1283
    .local v3, "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    if-eqz v3, :cond_3

    .line 1284
    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getElementEnabled(Ljava/lang/String;)V

    .line 1286
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    .end local v4    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_3
    goto/16 :goto_2

    :cond_4
    const-string v2, "vui.element.scroll.state"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1287
    const-string v2, "elementId"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1288
    .restart local v2    # "elementId":Ljava/lang/String;
    const-string v4, "direction"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1289
    .local v4, "direction":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v5

    .line 1290
    .local v5, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v5, :cond_6

    .line 1292
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v6

    .line 1293
    .local v6, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "VuiEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subSceneIds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    if-eqz v6, :cond_6

    .line 1295
    nop

    .local v3, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 1296
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1297
    .local v7, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v8

    sget-object v9, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1298
    .local v8, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-virtual {v8, v7, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v9

    .line 1299
    .local v9, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v9, :cond_5

    .line 1300
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 1301
    .local v10, "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    if-eqz v10, :cond_5

    .line 1302
    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-interface {v10, v2, v4}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getScrollViewState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void

    .line 1295
    .end local v7    # "subSceneId":Ljava/lang/String;
    .end local v8    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v9    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v10    # "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1310
    .end local v3    # "i":I
    .end local v6    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 1311
    .local v3, "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    if-eqz v3, :cond_7

    .line 1312
    invoke-interface {v3, v2, v4}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->getScrollViewState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "sceneId":Ljava/lang/String;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "listener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;
    .end local v4    # "direction":Ljava/lang/String;
    .end local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_7
    :goto_2
    goto :goto_3

    .line 1316
    :catch_0
    move-exception v0

    .line 1319
    :goto_3
    return-void
.end method

.method public onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .line 1322
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVuiQueryCallBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    .local v0, "resultSceneId":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->querySceneIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object p1, v0

    .line 1329
    .end local v0    # "resultSceneId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getJSONType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "sceneId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1333
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "object":Lorg/json/JSONObject;
    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    :goto_0
    goto :goto_1

    .line 1338
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :goto_1
    return-void
.end method

.method public removeDupVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p3, "keepCache"    # Z

    .line 2155
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2157
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 2159
    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 1726
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$19;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1746
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$18;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1721
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "elementGroupId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 1818
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    return-void

    .line 1821
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$22;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$22;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1834
    return-void

    .line 1821
    :cond_2
    :goto_0
    return-void
.end method

.method public removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 1843
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
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

    .line 1859
    return-void

    .line 1846
    :cond_2
    :goto_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p3, "keepCache"    # Z

    .line 2167
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2168
    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2171
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2214
    return-void
.end method

.method public removeVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1
    .param p1, "vuiStateListener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    .line 1194
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1197
    :cond_0
    return-void
.end method

.method public setBuildElements(Ljava/lang/String;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/String;

    .line 2644
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2645
    return-void

    .line 2648
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 2649
    .local v0, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    .line 2650
    .local v1, "sceneId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v2

    .line 2651
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

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

    .line 2655
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "isMainScene"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2656
    .local v4, "isMainScene":Z
    const-string v5, "subSceneIds"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2657
    .local v5, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2658
    .local v6, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2659
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2658
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2668
    .end local v7    # "i":I
    :cond_3
    const-string v7, "VuiEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sceneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "isMainScene:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",subSceneIds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2, v4, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    .end local v0    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v1    # "sceneId":Ljava/lang/String;
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "isMainScene":Z
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v6    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 2670
    :catch_0
    move-exception v0

    .line 2671
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2673
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public setBuildElements(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 2676
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 2677
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    .line 2678
    return-void
.end method

.method public setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "isMainScene"    # Z
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
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p4, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2683
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

    .line 2808
    return-void
.end method

.method public setCustomDoActionTag(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

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

    .line 2585
    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;

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
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->executeVirtualId:I

    const-string v1, "10000"

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 2569
    :cond_0
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->executeVirtualId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10000_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2572
    :cond_1
    :goto_0
    return-void
.end method

.method public setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "tts"    # Ljava/lang/String;

    .line 2263
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2264
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2266
    :cond_0
    return-void
.end method

.method public setLoglevel(I)V
    .locals 0
    .param p1, "loglevel"    # I

    .line 2540
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->setLogLevel(I)V

    .line 2541
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 2588
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setProcessName(Ljava/lang/String;)V

    .line 2589
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setProcessName(Ljava/lang/String;)V

    .line 2590
    return-void
.end method

.method public setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1089
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
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

    .line 1128
    goto :goto_1

    .line 1093
    :cond_2
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1131
    :goto_1
    return-void
.end method

.method public setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 1141
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
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

    .line 1174
    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 2849
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2850
    return-void

    .line 2852
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2853
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2937
    return-void

    .line 2852
    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 2844
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-string v0, "primary"

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2845
    return-void
.end method

.method public setUpdateElements(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "displayLocation"    # Ljava/lang/String;
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
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2940
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

    .line 3027
    return-void

    .line 2942
    :cond_2
    :goto_0
    return-void
.end method

.method public setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

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

    .line 2579
    :cond_0
    return-void
.end method

.method public setVuiCustomDisableControlTag(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

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

    .line 2256
    :cond_0
    return-void
.end method

.method public setVuiCustomDisableFeedbackTag(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

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

    .line 2276
    :cond_0
    return-void
.end method

.method public setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 2279
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    return-void

    .line 2282
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 2286
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2287
    .local v0, "actionObj":Lorg/json/JSONObject;
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2289
    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    .end local v0    # "actionObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiEngine"

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2283
    :cond_2
    :goto_1
    return-void
.end method

.method public setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

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

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2225
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2226
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 2227
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 2230
    :cond_0
    return-void
.end method

.method public setVuiElementUnSupportTag(Landroid/view/View;Z)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "isUnSupport"    # Z

    .line 2243
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2244
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2246
    :cond_0
    return-void
.end method

.method public setVuiElementVisibleTag(Landroid/view/View;Z)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 2315
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2316
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2318
    :cond_0
    return-void
.end method

.method public varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 5
    .param p1, "tagView"    # [Landroid/view/View;

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
    .local v2, "tagV":Landroid/view/View;
    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiLabelUnSupportText:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2309
    .end local v2    # "tagV":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2313
    :cond_0
    return-void
.end method

.method public setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "uniSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 1346
    .local v1, "sceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v1, :cond_2

    .line 1348
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1349
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1351
    .local v2, "props":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1352
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1353
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1354
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1352
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1356
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "props":Lorg/json/JSONObject;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_1

    .line 1358
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1360
    :cond_1
    :goto_1
    nop

    .line 1362
    :cond_2
    :goto_2
    return-void
.end method

.method public setVuiStatefulButtonClick(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

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

    .line 2299
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;

    .line 2060
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    return-void

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2064
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$26;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$26;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2072
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 2

    .line 2075
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2076
    return-void

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$27;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$27;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2087
    return-void
.end method

.method public unSubscribe()V
    .locals 2

    .line 2106
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2107
    return-void

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2110
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2118
    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 2

    .line 2090
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 2094
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$28;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$28;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    return-void
.end method

.method public updateAreaLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "areaStr"    # Ljava/lang/String;

    .line 280
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAreaLocation, sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", areaStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 305
    return-void
.end method

.method public updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 2605
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2606
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayLocation, sceneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2607
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

    .line 2641
    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    :cond_0
    return-void
.end method

.method public updateListIndexState()V
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1201
    const/4 v0, 0x0

    .local v0, "i":I
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

    .line 1203
    .local v1, "vuiStateListener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;
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

    .line 1201
    .end local v1    # "vuiStateListener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    return-void

    .line 1445
    :cond_0
    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1448
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1451
    return-void

    .line 1454
    :cond_2
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecyclerViewItemView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->taskStructure:Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    sget-object v2, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-direct {p0, v0, v2, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->structureViewWrapper(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    .line 1457
    return-void

    .line 1446
    .end local v0    # "newSceneId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 1460
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    return-void

    .line 1605
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

    .line 1676
    return-void

    .line 1606
    :cond_2
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$14;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1526
    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 8
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "vuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    return-void

    .line 1540
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

    .line 1544
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 1545
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

    .line 1593
    return-void

    .line 1541
    :cond_3
    :goto_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiResult"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 2025
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
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

    .line 2030
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Ljava/lang/String;

    .line 2033
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    return-void

    .line 2036
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object v0

    .line 2037
    .local v0, "vuiResult":Lcom/xiaopeng/speech/vui/model/VuiFeedback;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 2038
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 2039
    return-void
.end method

.method public vuiFeedback(Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "vuiResult"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 2047
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
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

    .line 2052
    return-void
.end method

.method public vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 1177
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
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

    .line 1182
    return-void
.end method
