.class public Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.super Ljava/lang/Object;
.source "UserSceneService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;,
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;
    }
.end annotation


# static fields
.field private static final BACK_TIMEOUT_MS:J = 0x9c4L

.field public static final CODE_ALLOW:I = 0x0

.field public static final CODE_DENIED:I = 0xfa0

.field public static final CODE_DENIED_RESIZE_PRIMARY:I = 0xfa1

.field private static final MAX_QUEUE_SIZE:I = 0x3

.field public static final MODE_EXPLORE:I = 0x2

.field public static final MODE_NAVI:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final MSG_BACK_CHECK:I = 0x1

.field private static final MSG_DO_PENDING_OPERATION:I = 0x2

.field public static final OPERATION_FULL:I = 0x1

.field public static final OPERATION_GO_BACK:I = 0x6

.field public static final OPERATION_GO_HOME:I = 0x5

.field public static final OPERATION_INNER_BASE:I = 0x64

.field public static final OPERATION_INNER_RESTART_SR_ACTIVITY:I = 0x64

.field public static final OPERATION_SPLIT:I = 0x2

.field public static final OPERATION_SPLIT_DEFAULT:I = 0x4

.field public static final OPERATION_SPLIT_SECOND:I = 0x3

.field public static final OPERATION_START_ACTIVITY:I = 0x7

.field private static final OPERATION_TIMEOUT_MS:J = 0xdacL

.field private static final PKG_APP_NAVI:Ljava/lang/String; = "com.xiaopeng.montecarlo"

.field private static RETRY_INTERVAL_MS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "UserSceneService"

.field private static errorTime:J

.field private static mUserSceneService:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# instance fields
.field private UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

.field private currentOperation:I

.field private doExecuteNextOperationRunnable:Ljava/lang/Runnable;

.field private volatile isDoingOperation:Z

.field private mContext:Landroid/content/Context;

.field private mNaviImmersionTop:Z

.field mNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

.field private mNaviStatus:I

.field private mOperationRunnable:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;

.field private mScreenTaskCallback:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;

.field mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

.field private mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

.field private mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTopActivityInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private operationQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    .line 103
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviImmersionTop:Z

    .line 95
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    .line 102
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 429
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    .line 518
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    .line 986
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$4;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doExecuteNextOperationRunnable:Ljava/lang/Runnable;

    .line 1046
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mOperationRunnable:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    .line 208
    sput-object p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mUserSceneService:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mTopActivityInfoArray:Landroid/util/SparseArray;

    .line 210
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviImmersionTop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isNaviImmersionTop(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->backOperationCheck(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationTimeOutCheck()V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doExecuteNextOperation()V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->handleOnResizeError(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->handleOnResizeCompleted(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeRealOperation()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mTopActivityInfoArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private backOperationCheck(I)V
    .locals 5
    .param p1, "screenId"    # I

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 503
    .local v0, "operation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityChanged firstOperation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    if-eqz v0, :cond_1

    .line 505
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopMainComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 507
    .local v1, "topMainComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeMessages(I)V

    .line 509
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 510
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityChanged go back success topMainComponent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v1    # "topMainComponent":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 514
    :cond_1
    const-string v1, "UserSceneService"

    const-string v2, "onActivityChanged backOperationCheck operation is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_2
    :goto_0
    return-void
.end method

.method private checkTempFullScreen(ILcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;
    .locals 11
    .param p1, "screenId"    # I
    .param p2, "opData"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1266
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isTargetActivityLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    const-string v0, "UserSceneService"

    const-string v1, "checkTempFullScreen, target activity is launched, return"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopAreaType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1271
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v0

    .line 1272
    .local v0, "split":Z
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopAreaType(I)Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "topAreaType":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getOOBEState(Landroid/content/Context;)Z

    move-result v2

    .line 1274
    .local v2, "oobeStatus":Z
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1275
    .local v3, "topExtras":Landroid/os/Bundle;
    const-string v4, "topOnly"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1276
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    invoke-virtual {v4, p1, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v4

    .line 1277
    .local v4, "isTopSplitMode":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_2

    const-string v7, "immersion"

    .line 1278
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "logical"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "physical"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    .line 1279
    .local v7, "isTempFullScreen":Z
    :goto_0
    const-string v8, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkTempFullScreen, screenId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " topAreaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isTopSplitMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " split="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " oobeStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",isTempFullScreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    if-eqz v7, :cond_4

    .line 1283
    if-eqz v2, :cond_3

    .line 1284
    const-string v8, "UserSceneService"

    const-string v9, "checkTempFullScreen, topAreaType is oobe, startSR first"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getStartActivity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v8, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startActivtyToForeground(ILjava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p2, v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->setTargetActivityLaunched(Z)V

    goto :goto_1

    .line 1288
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v6, "extra":Landroid/os/Bundle;
    const-string v8, "isForce"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1290
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8, p1, v6}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 1294
    .end local v6    # "extra":Landroid/os/Bundle;
    :goto_1
    const-wide/16 v5, 0x258

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    goto :goto_2

    .line 1295
    :catch_0
    move-exception v5

    .line 1297
    :goto_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopAreaType(I)Ljava/lang/String;

    move-result-object v1

    .line 1298
    const-string v5, "UserSceneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTempFullScreen, go home done, next enterFullScreen now topAreaType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_4
    return-object v1
.end method

.method private doExecuteNextOperation()V
    .locals 5

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 996
    .local v0, "first":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExecuteNextOperation isPreloading = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isPreloading()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " firstOp ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isPreloading()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 999
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doExecuteNextOperationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1000
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doExecuteNextOperationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeNextOperation()V

    .line 1004
    :goto_0
    return-void
.end method

.method private declared-synchronized doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V
    .locals 8
    .param p1, "operation"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isUserScenario"    # Z
    .param p4, "screenId"    # I
    .param p5, "extraDate"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    monitor-enter p0

    .line 865
    :try_start_0
    new-instance v7, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;ILjava/lang/String;ZI)V

    move-object v0, v7

    .line 973
    .local v0, "switchScreenTask":Ljava/lang/Runnable;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##doScreenOperation,post,operation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isUserScenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 864
    .end local v0    # "switchScreenTask":Ljava/lang/Runnable;
    .end local p1    # "operation":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "isUserScenario":Z
    .end local p4    # "screenId":I
    .end local p5    # "extraDate":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    throw p1
.end method

.method private executeGoBack(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)V
    .locals 9
    .param p1, "nextOperation"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1103
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1104
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningConfiger(I)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    .line 1105
    .local v0, "runningConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLaunchPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    .line 1106
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1107
    :cond_0
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeGoBack, goBack skipped,because of running scenario:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",op goBack pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1110
    :cond_1
    const-string v2, "com.xiaopeng.mirrorservice"

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getBackComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 1112
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeMessages(I)V

    .line 1113
    const-string v1, "UserSceneService"

    const-string v2, "executeGoBack, goBack convert to goHome for mirror service"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    goto :goto_0

    .line 1117
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeGoBack, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 1121
    const-string v1, "UserSceneService"

    const-string v2, "executeGoBack, goHome for mirror service done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1123
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeMessages(I)V

    .line 1124
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v2, v1, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1125
    .local v2, "checkMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1126
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getBackComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, "component":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1128
    .local v4, "extra":Landroid/os/Bundle;
    const-string v5, "component"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->back(ILandroid/os/Bundle;)I

    move-result v5

    .line 1130
    .local v5, "result":I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopMainComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1131
    .local v6, "topComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1132
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v7, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeMessages(I)V

    .line 1133
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 1134
    const-string v1, "UserSceneService"

    const-string v7, "executeGoBack, goBack done, getTopMainComponent equals backComponentName"

    invoke-static {v1, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1137
    const-string v1, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeGoBack, goBack done result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " component="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " topComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .end local v2    # "checkMsg":Landroid/os/Message;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "extra":Landroid/os/Bundle;
    .end local v5    # "result":I
    .end local v6    # "topComponent":Landroid/content/ComponentName;
    :goto_1
    return-void
.end method

.method private executeGoHome(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)V
    .locals 5
    .param p1, "nextOperation"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1083
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1084
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningConfiger(I)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    .line 1085
    .local v0, "runningConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLaunchPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    .line 1086
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1087
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeGoHome, goHome skipped,because of running scenario:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",op goHome pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1087
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 1091
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1092
    const-string v1, "UserSceneService"

    const-string v2, "executeGoHome, goHome done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    goto :goto_0

    .line 1096
    :catch_0
    move-exception v1

    .line 1099
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private executeNextOperation()V
    .locals 7

    .line 1066
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mOperationRunnable:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1067
    sget-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1069
    .local v0, "currentStartTime":J
    sget-wide v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1070
    .local v2, "shouldRetry":Z
    :goto_0
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeNextOperation, errorTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " currentStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " shouldRetry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    if-eqz v2, :cond_1

    .line 1074
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mOperationRunnable:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;

    sget-wide v5, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1075
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeNextOperation, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    return-void

    .line 1079
    .end local v0    # "currentStartTime":J
    .end local v2    # "shouldRetry":Z
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeRealOperation()V

    .line 1080
    return-void
.end method

.method private executeNextOperationPre(Ljava/lang/String;)V
    .locals 6
    .param p1, "property"    # Ljava/lang/String;

    .line 1050
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "errorType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "errorType":Ljava/lang/String;
    const-string/jumbo v2, "waitingWindowReady"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    const-wide/16 v2, 0x32

    sput-wide v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    .line 1054
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeNextOperationPre,waitingWindowReady,RETRY_INTERVAL_MS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_0
    const-wide/16 v2, 0x1f4

    sput-wide v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    .line 1057
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeNextOperationPre,RETRY_INTERVAL_MS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "errorType":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextOperationPre, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeNextOperation()V

    .line 1063
    return-void
.end method

.method private executeRealOperation()V
    .locals 13

    .line 1143
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    if-eqz v0, :cond_0

    .line 1144
    const-string v0, "UserSceneService"

    const-string v1, "executeRealOperation, isDoingOperation return"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 1149
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1150
    const-string v1, "UserSceneService"

    const-string v2, "executeRealOperation, operationQueue.isEmpty() return"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    monitor-exit v0

    return-void

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1154
    .local v1, "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    const-string v0, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRealOperation, nextOperation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v0

    .line 1158
    .local v0, "operation":I
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperationStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->setOperationStartTime(J)V

    .line 1161
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskCallback:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperationStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->setCallbackStartTime(J)V

    .line 1163
    const-string v3, "resizeCallback"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskCallback:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1164
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUserScenario()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1165
    const-string v3, "isFromUserScenario"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1168
    :cond_3
    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1170
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v3

    .line 1171
    .local v3, "split":Z
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1172
    .local v5, "areaType":Ljava/lang/String;
    const-string v6, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeRealOperation,operation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getOperationName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",split="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " areaType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v6, 0x5

    if-ne v0, v6, :cond_4

    .line 1177
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeGoHome(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)V

    goto/16 :goto_4

    .line 1178
    :cond_4
    const/4 v6, 0x6

    if-ne v0, v6, :cond_5

    .line 1179
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeGoBack(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)V

    goto/16 :goto_4

    .line 1180
    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_6

    .line 1181
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUseAnimation()Z

    move-result v4

    .line 1182
    .local v4, "isUseAnimation":Z
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getFreezeDuration()I

    move-result v6

    .line 1183
    .local v6, "freezeDuration":I
    const-string v7, "useAnimation"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1184
    const-string v7, "freezeDuration"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    const-string v8, ""

    invoke-virtual {v7, v8, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterSplitScreen(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1186
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1187
    const-string v7, "UserSceneService"

    const-string v8, "executeRealOperation, enterSplitScreen with no param done"

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .end local v4    # "isUseAnimation":Z
    .end local v6    # "freezeDuration":I
    goto/16 :goto_4

    :cond_6
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_e

    if-ne v0, v7, :cond_7

    goto/16 :goto_2

    .line 1213
    :cond_7
    if-ne v0, v4, :cond_12

    .line 1214
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUseAnimation()Z

    move-result v4

    .line 1215
    .restart local v4    # "isUseAnimation":Z
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getFreezeDuration()I

    move-result v6

    .line 1216
    .restart local v6    # "freezeDuration":I
    const-string v7, "useAnimation"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    const-string v7, "freezeDuration"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1219
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getTopAreaType(I)Ljava/lang/String;

    move-result-object v7

    .line 1220
    .local v7, "topAreaType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSR(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getShouldDoScreenMode()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1221
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v8

    invoke-direct {p0, v8, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->checkTempFullScreen(ILcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;

    move-result-object v7

    .line 1223
    :cond_8
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isTopActivity(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1224
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1225
    const-string v8, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeRealOperation, Operation package is top use  Operation package areatype="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1228
    :cond_9
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isTargetActivityLaunched()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1229
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1231
    .local v8, "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "errorType"

    const-string v10, "checkTempFullScreen"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperationStartTime()J

    move-result-wide v10

    invoke-direct {p0, v9, v10, v11}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->handleOnResizeError(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1235
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v9

    .line 1234
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "UserSceneService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "executeRealOperation, checkTempFullScreen e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1239
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_a
    :goto_1
    if-eqz v3, :cond_d

    .line 1240
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSR(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getShouldDoScreenMode()I

    move-result v8

    if-nez v8, :cond_b

    .line 1242
    const-string v8, "UserSceneService"

    const-string v9, "executeRealOperation, CustomerVersion, not enterFullScreen for SR"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 1244
    return-void

    .line 1246
    :cond_b
    const-string v8, "primary"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "secondary"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1247
    const-string v8, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeRealOperation, split mode but topAreaType is invalid, topAreaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " use primary instead"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v7, "primary"

    .line 1250
    :cond_c
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    invoke-virtual {v8, v7, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterFullScreen(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1251
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1252
    const-string v8, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeRealOperation, enterFullScreen done, topAreaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1254
    :cond_d
    const-string v8, "UserSceneService"

    const-string v9, "executeRealOperation, enterFullScreen return"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .end local v4    # "isUseAnimation":Z
    .end local v6    # "freezeDuration":I
    .end local v7    # "topAreaType":Ljava/lang/String;
    goto/16 :goto_4

    .line 1189
    :cond_e
    :goto_2
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUseAnimation()Z

    move-result v4

    .line 1190
    .restart local v4    # "isUseAnimation":Z
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getFreezeDuration()I

    move-result v9

    .line 1191
    .local v9, "freezeDuration":I
    const-string v10, "useAnimation"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1192
    const-string v10, "freezeDuration"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1193
    if-eqz v5, :cond_11

    const-string v10, "immersion"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1194
    if-ne v0, v8, :cond_f

    .line 1195
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    const-string v7, "primary"

    invoke-virtual {v6, v7, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterSplitScreen(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1196
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1197
    const-string v6, "UserSceneService"

    const-string v7, "executeRealOperation, enterSplitScreen"

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1198
    :cond_f
    if-ne v0, v7, :cond_10

    .line 1199
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    const-string v7, "secondary"

    invoke-virtual {v6, v7, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterSplitScreen(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1200
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1201
    const-string v6, "UserSceneService"

    const-string v7, "executeRealOperation, enterSplitScreen, secondary"

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1203
    :cond_10
    const-string v6, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeRealOperation, enterSplitScreen, invalid operation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1206
    :cond_11
    const-string v7, "UserSceneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeRealOperation, enterSplitScreen return areaType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " operation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",check failed,use no param api instead"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    const-string v8, ""

    invoke-virtual {v7, v8, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterSplitScreen(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1211
    iput v6, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1213
    .end local v4    # "isUseAnimation":Z
    .end local v9    # "freezeDuration":I
    :goto_3
    nop

    .line 1258
    :cond_12
    :goto_4
    return-void

    .line 1154
    .end local v0    # "operation":I
    .end local v1    # "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "split":Z
    .end local v5    # "areaType":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .locals 1

    .line 334
    sget-object v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mUserSceneService:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    return-object v0
.end method

.method private getLastOperation()Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    return-object v0
.end method

.method public static getOperationAreaType(I)Ljava/lang/String;
    .locals 3
    .param p0, "operation"    # I

    .line 1304
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 1305
    const-string v0, "immersion"

    return-object v0

    .line 1306
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 1307
    const-string v0, "primary"

    return-object v0

    .line 1308
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p0, :cond_2

    .line 1309
    const-string v0, "secondary"

    return-object v0

    .line 1310
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    .line 1311
    const-string v0, "primary"

    return-object v0

    .line 1313
    :cond_3
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperationAreaType, invalid operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, ""

    return-object v0
.end method

.method public static getOperationName(I)Ljava/lang/String;
    .locals 1
    .param p0, "operation"    # I

    .line 780
    packed-switch p0, :pswitch_data_0

    .line 794
    const-string v0, "OPERATION_UNKNOWN"

    return-object v0

    .line 790
    :pswitch_0
    const-string v0, "GO_BACK"

    return-object v0

    .line 788
    :pswitch_1
    const-string v0, "GO_HOME"

    return-object v0

    .line 792
    :pswitch_2
    const-string v0, "SPLIT_NO_PARAM"

    return-object v0

    .line 786
    :pswitch_3
    const-string v0, "SPLIT_SECOND"

    return-object v0

    .line 784
    :pswitch_4
    const-string v0, "SPLIT_PRIMARY"

    return-object v0

    .line 782
    :pswitch_5
    const-string v0, "FULL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOnResizeCompleted(Ljava/lang/String;J)V
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 1390
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1391
    .local v0, "firstOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1392
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$3800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v1

    .line 1393
    .local v1, "sleepTime":I
    if-nez v1, :cond_0

    .line 1394
    const/16 v1, 0xf0

    .line 1396
    :cond_0
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resize onResizeCompleted SR property="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sleepTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    if-lez v1, :cond_1

    .line 1399
    int-to-long v2, v1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    goto :goto_0

    .line 1400
    :catch_0
    move-exception v2

    .line 1401
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOnResizeCompleted e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .end local v1    # "sleepTime":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resize onResizeCompleted property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1407
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1409
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1412
    const-string v3, "UserSceneService"

    const-string v4, "resize onResizeCompleted, operationQueue is empty return"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void

    .line 1415
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1418
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1416
    :catch_1
    move-exception v1

    .line 1417
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnResizeCompleted,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private handleOnResizeError(Ljava/lang/String;J)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 1422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1424
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize onResizeError property="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    sub-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms errorTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    sget-wide v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    sub-long/2addr v0, p2

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1428
    const-string v0, "UserSceneService"

    const-string v1, "resize onResizeError timeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$mP5rGE5Gn02XlgJfdYSZOQuDH54;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$mP5rGE5Gn02XlgJfdYSZOQuDH54;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 1437
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchError()V

    .line 1438
    return-void

    .line 1440
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeNextOperationPre(Ljava/lang/String;)V

    .line 1441
    const-string v0, "UserSceneService"

    const-string v1, "retrying onResizeError"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method private initWindowManager()V
    .locals 3

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    .line 270
    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskCallback:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;

    .line 271
    return-void
.end method

.method private isNaviEnable()Z
    .locals 1

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method private isNaviImmersionTop(Ljava/lang/String;)Z
    .locals 8
    .param p1, "property"    # Ljava/lang/String;

    .line 536
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNaviImmersionTop property:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 539
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 540
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "component"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "component":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 542
    .local v4, "componentName":Landroid/content/ComponentName;
    const-string v5, "UserSceneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNaviImmersionTop pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.xiaopeng.montecarlo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 547
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 548
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method private isNaviTop(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mTopActivityInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNaviTop prop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.xiaopeng.montecarlo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x1

    return v1

    .line 343
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSpecialActivity(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 301
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {v0}, Landroid/content/Intent;->getPrivateFlags()I

    move-result v2

    .line 304
    .local v2, "intentFlags":I
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpecialActivity intentFlags:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-eq v3, v4, :cond_1

    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 308
    .end local v2    # "intentFlags":I
    :cond_2
    return v1
.end method

.method private isSupportAreaType(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "areaType"    # Ljava/lang/String;

    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string v0, "areaList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "areaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    return v1

    .line 318
    .end local v0    # "areaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$handleOnResizeError$3(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 10

    .line 1430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1431
    .local v0, "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    if-eqz v0, :cond_0

    .line 1432
    new-instance v9, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1433
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$3900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Z

    move-result v5

    const/4 v6, -0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->notifySwitchEvent(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    .line 1436
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 5

    .line 223
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_1
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch handler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    if-eqz v1, :cond_0

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 229
    .local v1, "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    if-eqz v1, :cond_1

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperationStartTime()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->handleOnResizeError(Ljava/lang/String;J)V

    .line 231
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch handler Exception, handleOnResizeError nextOperation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_1
    const-string v2, "UserSceneService"

    const-string v3, "catch handler Exception, handleOnResizeError nextOperation is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v1    # "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :goto_2
    goto :goto_1

    .line 235
    :catch_1
    move-exception v1

    .line 236
    .local v1, "e1":Ljava/lang/Throwable;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch handler Exception e1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "e1":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static synthetic lambda$notifySwitchEvent$0(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V
    .locals 2
    .param p1, "extra"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    .line 133
    .local v1, "listener":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;->onSwitchScreen(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    .line 134
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;
    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public static synthetic lambda$postStartActivity$5(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 1493
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startActivtyToForeground(ILjava/lang/String;Ljava/lang/String;)V

    .line 1494
    return-void
.end method

.method public static synthetic lambda$startActivity$2(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 324
    .local v0, "newAction":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 325
    .local v1, "newData":Landroid/os/Bundle;
    const-string v2, "noLimit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    const-string v2, "noLimit"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string v2, "forceAreaType"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string v2, "areaType"

    const-string v3, "primary"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)I

    .line 330
    return-void
.end method

.method public static synthetic lambda$startActivtyToForeground$4(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1485
    new-instance v8, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    const/4 v2, 0x7

    const/4 v4, 0x1

    const/4 v5, -0x6

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->notifySwitchEvent(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    .line 1487
    const-string v0, "UserSceneService"

    const-string v1, "startActivtyToForeground, notifySwitchEvent end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    return-void
.end method

.method private notifySwitchEvent(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V
    .locals 3
    .param p1, "extra"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    .line 129
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySwitchEvent extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_0
    return-void
.end method

.method private onScreenSwitchError()V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    const-string v1, "UserSceneService"

    const-string v2, "onScreenSwitchError, operationQueue is empty"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    monitor-exit v0

    return-void

    .line 1384
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenSwitchError, error operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchSuccess(Ljava/lang/String;)V

    .line 1387
    return-void

    .line 1384
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onScreenSwitchSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1351
    .local v0, "firstOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstOperation.startActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$3700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isTopActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isTopActivity(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getStartActivity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getStartActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startActivtyToForeground(ILjava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v1, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenSwitchSuccess, startActivtyToForeground packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getStartActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1355
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1359
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1361
    const-string v2, "UserSceneService"

    const-string v3, "onScreenSwitchSuccess, operationQueue is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    monitor-exit v1

    return-void

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 1365
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1366
    .local v2, "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    if-nez v2, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    .line 1367
    if-eqz v2, :cond_3

    .line 1368
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScreenSwitchSuccess, nextOperation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", firstOperation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1371
    :cond_3
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScreenSwitchSuccess, nextOperation=null, firstOperation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .end local v2    # "nextOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    const-wide/16 v1, 0x1f4

    sput-wide v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->RETRY_INTERVAL_MS:J

    .line 1375
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->executeNextOperation()V

    .line 1376
    return-void

    .line 1373
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private operationTimeOutCheck()V
    .locals 9

    .line 1445
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1447
    .local v0, "currentOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1448
    const-string v4, "UserSceneService"

    const-string v5, "operationTimeOutCheck, strange,currentOperation is null"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1451
    sput-wide v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1452
    return-void

    .line 1454
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1455
    .local v4, "delta":J
    const-wide/16 v6, 0xdac

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 1456
    const-string v6, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operationTimeOutCheck, timeout, delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isDoingOperation:Z

    .line 1458
    sput-wide v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->errorTime:J

    .line 1460
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->onScreenSwitchError()V

    goto :goto_0

    .line 1462
    :cond_1
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationTimeOutCheck, delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms,operation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    .end local v0    # "currentOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v4    # "delta":J
    :cond_2
    :goto_0
    return-void
.end method

.method private registerNaviInfoListener()V
    .locals 2

    .line 261
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    move-result-object v0

    .line 262
    .local v0, "service":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->registerMiniNaviInfoListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;)V

    .line 263
    return-void
.end method

.method private startActivity(Landroid/content/Intent;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "canResize"    # Z

    .line 322
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method


# virtual methods
.method public addSwitchScreenListener(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    .line 115
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSwitchScreenListener listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public cancelOperationRunnable()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doExecuteNextOperationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    return-void
.end method

.method public checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 285
    const-string v0, "areaType"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "requestArea":Ljava/lang/String;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppPolicy naviEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isNaviEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " &mNaviImmersionTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviImmersionTop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " &requestArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &bundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 289
    return-object v2

    .line 291
    :cond_0
    const-string v1, "immersion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isNaviEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mNaviImmersionTop:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSpecialActivity(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "newArea"

    const-string v3, "primary"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-object v1

    .line 297
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v2
.end method

.method public cleanOperationQueue()V
    .locals 3

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 982
    const-string v1, "UserSceneService"

    const-string v2, "cleanOperationQueue"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    monitor-exit v0

    .line 984
    return-void

    .line 983
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 253
    return-void
.end method

.method public findActivityInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "mInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 417
    .local v2, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    return-object v2

    .line 420
    .end local v2    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 422
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentOperation()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->currentOperation:I

    return v0
.end method

.method public getLastValidOperation()Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .locals 9

    .line 811
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 813
    .local v1, "lastOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    .line 814
    .local v2, "queueSize":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 816
    monitor-exit v0

    return-object v1

    .line 818
    :cond_0
    const/4 v4, 0x5

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x6

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 819
    monitor-exit v0

    return-object v1

    .line 822
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 823
    .local v4, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    const/4 v5, 0x0

    .line 824
    .local v5, "count":I
    const/4 v6, 0x0

    .line 825
    .local v6, "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 826
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    move-object v6, v7

    .line 827
    add-int/lit8 v5, v5, 0x1

    .line 828
    if-le v5, v3, :cond_2

    .line 830
    nop

    .line 834
    :cond_3
    const-string v3, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##getLastValidOperation,lastOp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",validOp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",queueSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    monitor-exit v0

    return-object v6

    .line 839
    .end local v1    # "lastOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v2    # "queueSize":I
    .end local v4    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v5    # "count":I
    .end local v6    # "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOperationQueue()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    return-object v0
.end method

.method public getQueueOperation(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .locals 4
    .param p1, "operation"    # I

    .line 1574
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 1575
    .local v1, "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1576
    const-string v0, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueueOperation,operation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " found in queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    return-object v1

    .line 1579
    .end local v1    # "data":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_0
    goto :goto_0

    .line 1580
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 257
    const-string v0, "UserSceneService"

    return-object v0
.end method

.method public getTopAreaType(I)Ljava/lang/String;
    .locals 9
    .param p1, "screenId"    # I

    .line 1319
    const/4 v0, 0x0

    .line 1320
    .local v0, "topAreaType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, "topActivity":Ljava/lang/String;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopAreaType top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    if-eqz v1, :cond_2

    .line 1324
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1326
    .local v3, "itemCount":I
    const-string v4, "UserSceneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopAreaType,array count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 1328
    const/4 v4, 0x0

    .local v4, "i":I
    if-ge v4, v3, :cond_1

    .line 1329
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v5, "obj":Lorg/json/JSONObject;
    nop

    .line 1331
    const-string v6, "areaType"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1332
    const-string v6, "UserSceneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopAreaType,areaType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    goto :goto_0

    .line 1339
    .end local v4    # "i":I
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "UserSceneService"

    const-string v5, "getTopAreaType,no top info"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "itemCount":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 1341
    :catch_0
    move-exception v2

    .line 1342
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopAreaType,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getTopMainComponent()Landroid/content/ComponentName;
    .locals 12

    .line 1498
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "topActivity":Ljava/lang/String;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopMainComponent top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1502
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1504
    .local v4, "itemCount":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 1505
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1506
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v6, "obj":Lorg/json/JSONObject;
    nop

    .line 1508
    const-string v7, "areaType"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1509
    .local v7, "areaType":Ljava/lang/String;
    const-string v8, "component"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1510
    .local v8, "component":Ljava/lang/String;
    const-string v9, "UserSceneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTopMainComponent target compenent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " areaType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    if-eqz v8, :cond_1

    .line 1513
    if-le v4, v5, :cond_0

    .line 1514
    const-string v9, "secondary"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1515
    const-string v5, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTopMainComponent,areaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    return-object v5

    .line 1519
    :cond_0
    const-string v5, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTopMainComponent,areaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    return-object v5

    .line 1524
    .end local v7    # "areaType":Ljava/lang/String;
    .end local v8    # "component":Ljava/lang/String;
    :cond_1
    nop

    .line 1505
    .end local v6    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v1    # "i":I
    :cond_2
    const-string v1, "UserSceneService"

    const-string v5, "getTopMainComponent,no top info"

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "itemCount":I
    :cond_3
    goto :goto_1

    .line 1531
    :catch_0
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopMainComponent,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const-string v1, "UserSceneService"

    const-string v3, "getTopMainComponent, top activity is null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    return-object v2
.end method

.method public init()V
    .locals 3

    .line 214
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->registerNaviInfoListener()V

    .line 215
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->initWindowManager()V

    .line 216
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UserSceneHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$OPUcui1ngy5hmjhRSzOmkLrXXB8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$OPUcui1ngy5hmjhRSzOmkLrXXB8;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method public isNullOperationQueue()Z
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->operationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1587
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1585
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPreloading()Z
    .locals 4

    .line 1007
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_POLICY_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1008
    const-string v0, "sys.xp.boot_completed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1009
    .local v0, "isPreloading":Z
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isPreloading ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    return v0

    .line 1012
    .end local v0    # "isPreloading":Z
    :cond_0
    const-string v0, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloading FO_BOOT_POLICY_ENABLED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_POLICY_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return v1
.end method

.method public isSR(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1469
    const-string v0, "com.xiaopeng.subreality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng.autopilot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1472
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1470
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isTopActivity(Ljava/lang/String;)Z
    .locals 11
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1540
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, "topActivity":Ljava/lang/String;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTopActivity top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    if-eqz v0, :cond_3

    .line 1544
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1546
    .local v3, "itemCount":I
    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 1547
    move v5, v1

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 1548
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v6, "obj":Lorg/json/JSONObject;
    nop

    .line 1550
    const-string v7, "component"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1551
    .local v7, "component":Ljava/lang/String;
    const-string v8, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isTopActivity target compenent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1553
    return v4

    .line 1555
    .end local v7    # "component":Ljava/lang/String;
    :cond_0
    nop

    .line 1547
    .end local v6    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1560
    .end local v5    # "i":I
    :cond_1
    const-string v4, "UserSceneService"

    const-string v5, "isTopActivity,no top info"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "itemCount":I
    :cond_2
    goto :goto_1

    .line 1562
    :catch_0
    move-exception v2

    .line 1563
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserSceneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTopActivity,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const-string v2, "UserSceneService"

    const-string v3, "isTopActivity, top activity is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    return v1
.end method

.method public postStartActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 1495
    return-void
.end method

.method public release()V
    .locals 0

    .line 248
    return-void
.end method

.method public removeSwitchScreenListener(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;

    .line 122
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSwitchScreenListener listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mSwitchScreenListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public requestAreaType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 357
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->findActivityInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v0

    .line 358
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 361
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "resizeTypeKey"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .local v3, "resizeType":I
    if-ne v4, v3, :cond_0

    .line 364
    const-string v1, "UserSceneService"

    const-string v4, "requestAreaType,can\'t fetch resizeType"

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeType invalid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 393
    const-string v1, "UserSceneService"

    goto :goto_0

    .line 373
    :pswitch_0
    const-string v1, "targetScreenId"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 375
    .local v1, "backScreenId":I
    if-ne v4, v1, :cond_1

    .line 376
    const-string v4, "UserSceneService"

    const-string v5, "requestAreaType,go back,can\'t fetch screenId"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x0

    .line 379
    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v3

    move-object v7, p1

    move v9, v1

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 380
    const-string v4, "success"

    return-object v4

    .line 383
    .end local v1    # "backScreenId":I
    :pswitch_1
    const-string v1, "targetScreenId"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 385
    .local v1, "screenId":I
    if-ne v4, v1, :cond_2

    .line 386
    const-string v4, "UserSceneService"

    const-string v5, "requestAreaType,go home,can\'t fetch screenId"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    .line 389
    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v3

    move-object v7, p1

    move v9, v1

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 390
    const-string v4, "success"

    return-object v4

    .line 369
    .end local v1    # "screenId":I
    :pswitch_2
    invoke-virtual {p0, v3, p1, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;Z)V

    .line 370
    const-string v1, "success"

    return-object v1

    .line 393
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAreaType resizeType unknown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeType unknown:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 396
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "resizeType":I
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAreaType extra e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v2, "extra error"

    return-object v2

    .line 401
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v0, :cond_5

    .line 402
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    const-string v1, "UserSceneService"

    const-string v2, "requestAreaType areType is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "areaType null"

    return-object v1

    .line 406
    :cond_4
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAreaType areaType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p2, p1, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "ret":Ljava/lang/String;
    return-object v1

    .line 410
    .end local v1    # "ret":Ljava/lang/String;
    :cond_5
    const-string v1, "application not top"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "firstAreaType"    # Ljava/lang/String;
    .param p3, "secondAreaType"    # Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "com.xiaopeng.permission.EXCHANGE_TASK"

    .line 348
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setPermission(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setScreenId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string/jumbo v1, "window"

    .line 350
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setExchangeType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->exchange(Landroid/os/Bundle;)I

    .line 353
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestExchange screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &firstAreaType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &secondAreaType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public setPendingOperation(ILjava/lang/String;)V
    .locals 3
    .param p1, "operation"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 1592
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingOperation,operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1594
    return-void
.end method

.method public startActivtyToForeground(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 1476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1477
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1480
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 1481
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivtyToForeground, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->UserSceneHandler:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$7t5e_MwzJOUefHkWNA6yHRe1oQ0;

    invoke-direct {v2, p0, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$7t5e_MwzJOUefHkWNA6yHRe1oQ0;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 1489
    return-void
.end method

.method public startAppWithPolicy(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 276
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppWithPolicy result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "intent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    .line 279
    const/16 v2, 0xfa1

    return v2

    .line 281
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public switchScreen(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "areaType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isUserScenario"    # Z

    .line 843
    const-string v0, "primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;Z)V

    goto :goto_0

    .line 845
    :cond_0
    const-string v0, "immersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;Z)V

    goto :goto_0

    .line 847
    :cond_1
    const-string v0, "secondary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->switchScreen(ILjava/lang/String;Z)V

    .line 853
    :goto_0
    const-string v0, "success"

    return-object v0

    .line 850
    :cond_2
    const-string v0, "UserSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen operation is invalid areaType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "areaType invalid"

    return-object v0
.end method

.method public switchScreen(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isUserScenario"    # Z

    .line 857
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 858
    return-void
.end method

.method public switchScreen(ILjava/lang/String;ZLcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isUserScenario"    # Z
    .param p4, "extraDate"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 861
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V

    .line 862
    return-void
.end method
