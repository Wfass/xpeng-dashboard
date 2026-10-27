.class public Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.super Ljava/lang/Object;
.source "OperationHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;,
        Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;,
        Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;,
        Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalServiceHolder;,
        Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECT_MODE:I = 0x0

.field private static final MSG_ADD_NEW_RESOURCE:I = 0x1

.field private static final MSG_ADD_RESOURCE_ACCOUNT_BINDING:I = 0x16

.field private static final MSG_CANCEL_DOWNLOAD:I = 0x7

.field private static final MSG_CLEAR_SELECTION:I = 0x18

.field private static final MSG_DELETE_RESOURCE:I = 0x5

.field private static final MSG_DEL_RESOURCE_ACCOUNT_BINDING:I = 0x17

.field private static final MSG_DOWNLOAD_RESOURCE:I = 0x4

.field private static final MSG_EXPIRE_RESOURCE:I = 0xa

.field private static final MSG_LOAD_OPERATION_CONFIG:I = 0x15

.field private static final MSG_NOTIFY_DOWNLOAD_CANCEL:I = 0x13

.field private static final MSG_NOTIFY_DOWNLOAD_ERROR:I = 0x14

.field private static final MSG_NOTIFY_DOWNLOAD_IN_PROGRESS:I = 0x11

.field private static final MSG_NOTIFY_DOWNLOAD_PAUSED:I = 0x12

.field private static final MSG_NOTIFY_DOWNLOAD_START:I = 0x10

.field private static final MSG_PAUSE_DOWNLOAD:I = 0xb

.field private static final MSG_PROCESS_PRESET_RESOURCE:I = 0x2

.field private static final MSG_QUERY_RESOURCE_DONE:I = 0x6

.field private static final MSG_QUERY_RESOURCE_FAILED:I = 0xf

.field private static final MSG_RESUME_DOWNLOAD:I = 0xc

.field private static final MSG_SELECT_RESOURCE:I = 0x3

.field private static final MSG_SET_EXPIRE_TASK:I = 0x9

.field private static final MSG_SYNC_COMPLETED:I = 0xd

.field private static final MSG_UNSELECT_RESOURCE:I = 0x8

.field private static final MSG_UPDATE_RESOURCE_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "OperationHalService"


# instance fields
.field private final callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

.field private final expireTaskFuture:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private isRegisterDownloadListener:Z

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectModeMap:Landroid/util/SparseIntArray;

.field private final normalStatusFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final syncParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;",
            ">;"
        }
    .end annotation
.end field

.field private final syncers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;

.field private final visibleFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireTaskFuture:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mSelectModeMap:Landroid/util/SparseIntArray;

    .line 155
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    .line 365
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$tqvUbuZ-23_UFasrucQjLqShR24;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$tqvUbuZ-23_UFasrucQjLqShR24;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->normalStatusFilter:Ljava/util/function/Predicate;

    .line 367
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->visibleFilter:Ljava/util/function/Predicate;

    .line 132
    const-string v0, "OperationHalService"

    const-string v1, "started OperationHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "operation"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OperationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "mOperationWorkThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHandler;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isLockedBootComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "OperationHalService"

    const-string v2, "lockedBootComplete!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->processPresetFile()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$2pDHvD7z4vOz2XsD5imQyb6KAoE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$2pDHvD7z4vOz2XsD5imQyb6KAoE;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addLockedBootCompleteTask(Ljava/lang/Runnable;)V

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->initSyncCondition()V

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;-><init>()V

    return-void
.end method

.method private declared-synchronized abortSyncAll()V
    .locals 4

    monitor-enter p0

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 260
    .local v2, "key":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    .line 261
    .local v3, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortIfSyncing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "key":I
    .end local v3    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifySelectionChangedEvent(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyDeleteEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeExpireTask(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/operation/OperationHalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->saveResourceSelectionTime(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->registerStoreDownloadListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyExpireEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifySyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyOnDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "x2"    # F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyOnDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyOnDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyOnDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyOnDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyAddEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyUpdateEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addExpireTask(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyQuerySuccessEvent(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/operation/OperationHalService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->notifyQueryFailedEvent(II)V

    return-void
.end method

.method private addExpireTask(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 6
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 894
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeExpireTask(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 895
    iget-wide v0, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 896
    iget-wide v0, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 897
    .local v0, "expireDelay":J
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 898
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    goto :goto_0

    .line 900
    :cond_0
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add expire task postDelayed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms: resourceInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 905
    .local v2, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireTaskFuture:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    .end local v0    # "expireDelay":J
    .end local v2    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpAutoSync(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1330
    const-string v0, "\nAuto SYNC:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1332
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1333
    .local v2, "key":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    .line 1334
    .local v3, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->isSyncing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "(syncing)"

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    .end local v2    # "key":I
    .end local v3    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1336
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private dumpLocalResource(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # I

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method private dumpLocalResources(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1339
    const-string v0, "\nResources:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    sget-object v0, Lcom/xiaopeng/xuimanager/operation/OperationType;->SUPPORT_TYPES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1341
    return-void
.end method

.method private expireResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "resource"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    return-void
.end method

.method private filterNormalAndVisible(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 1
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 391
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->normalStatusFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->visibleFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    nop

    .line 391
    move-object v0, p1

    goto :goto_0

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0
.end method

.method private filterNormalAndVisibleResources(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 384
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->normalStatusFilter:Ljava/util/function/Predicate;

    .line 385
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->visibleFilter:Ljava/util/function/Predicate;

    .line 386
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 387
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 384
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .locals 1

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalServiceHolder;->access$100()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    return-object v0
.end method

.method private getJsonObject(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 569
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 571
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v1, "resourceType"

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v1, "resourceName"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v1, "targetPath"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v1, "md5Hash"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v1, "effectTime"

    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 577
    const-string v1, "expireTime"

    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 578
    const-string v1, "resourceFrom"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v1, "status"

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 580
    const-string v1, "createTime"

    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 581
    const-string v1, "updateTime"

    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 582
    const-string v1, "resourceIcon"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v1, "description"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v1, "price"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v1, "extraData"

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 589
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getJsonString(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 562
    if-eqz p1, :cond_0

    .line 563
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getJsonObject(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 551
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 553
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 554
    .local v2, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getJsonObject(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 555
    .end local v2    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 558
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private igOFF()V
    .locals 2

    .line 230
    const-string v0, "OperationHalService"

    const-string v1, "receive igOFF, do sync after network ready"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$e0mWenk0nyTcSTUY4pN-UvizEDY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$e0mWenk0nyTcSTUY4pN-UvizEDY;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method private igON()V
    .locals 2

    .line 224
    const-string v0, "OperationHalService"

    const-string v1, "receive igON, do sync after network ready"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    return-void
.end method

.method private initSyncCondition()V
    .locals 4

    .line 219
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;-><init>(Ljava/lang/Integer;)V

    const-string v2, "SyncResource-IgON"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$boxDkhtHQVHMD2coO44Lz7ljCEM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$boxDkhtHQVHMD2coO44Lz7ljCEM;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    new-instance v3, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$G3kMc_zwZWUOOPxfznDRoJWih7U;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$G3kMc_zwZWUOOPxfznDRoJWih7U;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 220
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;-><init>(Ljava/lang/Boolean;)V

    const-string v1, "SyncResource-Network"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$nk5wbkOTFzTc27rZAhDd62AJqT8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$nk5wbkOTFzTc27rZAhDd62AJqT8;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public static synthetic lambda$G3kMc_zwZWUOOPxfznDRoJWih7U(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->igOFF()V

    return-void
.end method

.method public static synthetic lambda$HxbLprv3jkrVmH6USVrs9sDRa98(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncAll()V

    return-void
.end method

.method public static synthetic lambda$addExpireTask$8(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 902
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireTaskFuture:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    return-void
.end method

.method public static synthetic lambda$boxDkhtHQVHMD2coO44Lz7ljCEM(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->igON()V

    return-void
.end method

.method static synthetic lambda$debugDump$9(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0
    .param p0, "syncer"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 1224
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->sync(ZZZ)V

    return-void
.end method

.method public static synthetic lambda$dumpLocalResources$10(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # I

    .line 1340
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->dumpLocalResource(Ljava/io/PrintWriter;I)V

    return-void
.end method

.method public static synthetic lambda$e0mWenk0nyTcSTUY4pN-UvizEDY(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->abortSyncAll()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 2

    .line 144
    const-string v0, "OperationHalService"

    const-string v1, "receiver LockedBootComplete!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->processPresetFile()V

    .line 146
    return-void
.end method

.method static synthetic lambda$new$5(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 1
    .param p0, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 365
    iget v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$nk5wbkOTFzTc27rZAhDd62AJqT8(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->onNetworkReady()V

    return-void
.end method

.method static synthetic lambda$queryRemoteResources$6(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z
    .locals 1
    .param p0, "r"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$queryRemoteResources$7(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/Map;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "params"    # Ljava/util/Map;

    .line 595
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getRemoteResources(ILjava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 596
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;

    .line 598
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 599
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 600
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->queryResourceDone(ILjava/util/List;)V

    goto :goto_1

    .line 604
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;-><init>(Ljava/lang/Boolean;)V

    .line 605
    .local v1, "conditionNetwork":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;->prepare()V

    .line 606
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;->isMatch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    const/4 v2, 0x1

    goto :goto_0

    .line 608
    :cond_1
    const/4 v2, 0x0

    .line 606
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->queryResourceFailed(II)V

    .line 610
    .end local v1    # "conditionNetwork":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;
    :goto_1
    return-void
.end method

.method static synthetic lambda$setAutoSync$1(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0
    .param p0, "syncer"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->sync(ZZZ)V

    return-void
.end method

.method public static synthetic lambda$setAutoSync$2(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZLjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "syncer"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .param p3, "doAdd"    # Z
    .param p4, "doUpdate"    # Z
    .param p5, "doDelete"    # Z
    .param p6, "resourceType"    # Ljava/lang/String;

    .line 184
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get resource update message from DC, do sync: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$rfaHjZpLWrtpHRfRWI6lY7i0ozs;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$rfaHjZpLWrtpHRfRWI6lY7i0ozs;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method static synthetic lambda$setAutoSync$3(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0
    .param p0, "syncer"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->sync(ZZZ)V

    return-void
.end method

.method static synthetic lambda$syncResource$4(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0
    .param p0, "fSyncer"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->sync(ZZZ)V

    return-void
.end method

.method private notifyAddEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 7
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 919
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyAddEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 924
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/4 v4, 0x1

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget v6, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 928
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 930
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 931
    return-void

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDeleteEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 7
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 964
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyDeleteEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 969
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v4, 0x9

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget v6, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 973
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 975
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 976
    return-void

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyExpireEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 7
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 949
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyExpireEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 951
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 954
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/4 v4, 0x3

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget v6, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 958
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 960
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1092
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyOnDownloadCancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "resourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 1097
    .local v2, "resourceType":I
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1099
    .local v5, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v6, 0x14

    invoke-interface {v5, v6, v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1103
    .end local v5    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1105
    .end local v1    # "resourceId":Ljava/lang/String;
    .end local v2    # "resourceType":I
    .end local v3    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "reason"    # I

    .line 1109
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyOnDownloadError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1111
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1113
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, "resourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v4

    .line 1115
    .local v4, "resourceType":I
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->eventOfDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)Ljava/lang/String;

    move-result-object v5

    .line 1116
    .local v5, "event":Ljava/lang/String;
    const/16 v6, 0x15

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1120
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    .end local v3    # "resourceId":Ljava/lang/String;
    .end local v4    # "resourceType":I
    .end local v5    # "event":Ljava/lang/String;
    goto :goto_0

    .line 1122
    :cond_0
    monitor-exit v0

    .line 1123
    return-void

    .line 1122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "progress"    # F

    .line 1058
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyOnDownloadInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1062
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "resourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v4

    .line 1064
    .local v4, "resourceType":I
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->eventOfDownloadProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)Ljava/lang/String;

    move-result-object v5

    .line 1065
    .local v5, "event":Ljava/lang/String;
    const/16 v6, 0x12

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1069
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    .end local v3    # "resourceId":Ljava/lang/String;
    .end local v4    # "resourceType":I
    .end local v5    # "event":Ljava/lang/String;
    goto :goto_0

    .line 1071
    :cond_0
    monitor-exit v0

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1075
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyOnDownloadPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "resourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 1080
    .local v2, "resourceType":I
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1082
    .local v5, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v6, 0x13

    invoke-interface {v5, v6, v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1086
    .end local v5    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1088
    .end local v1    # "resourceId":Ljava/lang/String;
    .end local v2    # "resourceType":I
    .end local v3    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 1041
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyOnDownloadStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "resourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 1046
    .local v2, "resourceType":I
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1047
    .local v3, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1048
    .local v5, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v6, 0x11

    invoke-interface {v5, v6, v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1052
    .end local v5    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1054
    .end local v1    # "resourceId":Ljava/lang/String;
    .end local v2    # "resourceType":I
    .end local v3    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyQueryFailedEvent(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "reason"    # I

    .line 1011
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyQueryFailedEvent: reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->eventOfQueryRemoteError(I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1016
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v4, 0x10

    const-string v5, ""

    invoke-interface {v3, v4, v5, p1, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1020
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1022
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyQuerySuccessEvent(ILjava/util/List;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    .line 993
    .local p2, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyQuerySuccessEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    if-nez p2, :cond_0

    .line 995
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 999
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1001
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/4 v4, 0x5

    const-string v5, ""

    invoke-interface {v3, v4, v5, p1, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1005
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1007
    .end local v1    # "event":Ljava/lang/String;
    :cond_1
    monitor-exit v0

    .line 1008
    return-void

    .line 1007
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySelectionChangedEvent(I)V
    .locals 6
    .param p1, "type"    # I

    .line 979
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifySelectionChangedEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 983
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v3, 0xf

    const-string v4, ""

    const-string v5, ""

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 987
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 989
    :cond_0
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "syncResult"    # Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 1026
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifySyncCompleted: syncResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->syncResult2Json(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 1031
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v4, 0xb

    const-string v5, ""

    invoke-interface {v3, v4, v5, p1, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1035
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 1037
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyUpdateEvent(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 7
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 934
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> notifyUpdateEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 939
    .local v3, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    const/16 v4, 0xe

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget v6, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 943
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    goto :goto_0

    .line 945
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNetworkReady()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "OperationHalService"

    const-string v1, "onNetworkReady, schedule sync"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$HxbLprv3jkrVmH6USVrs9sDRa98;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$HxbLprv3jkrVmH6USVrs9sDRa98;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "OperationHalService"

    const-string v1, "onNetworkReady, sync already done"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void
.end method

.method private processPresetFile()V
    .locals 2

    .line 289
    const-string v0, "OperationHalService"

    const-string v1, "processPresetFile"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method

.method private queryResourceDone(ILjava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    .line 532
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 533
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    return-void
.end method

.method private queryResourceFailed(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "reason"    # I

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 539
    return-void
.end method

.method private registerStoreDownloadListener()V
    .locals 2

    .line 1127
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->isRegisterDownloadListener:Z

    if-eqz v0, :cond_0

    .line 1128
    return-void

    .line 1130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->isRegisterDownloadListener:Z

    .line 1131
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$3;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->registerDownloadListener(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;)V

    .line 1169
    return-void
.end method

.method private removeExpireTask(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 4
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->expireTaskFuture:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 912
    .local v0, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 913
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 914
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove expire task: resourceInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_0
    return-void
.end method

.method private saveResourceSelectionTime(I)V
    .locals 5
    .param p1, "resourceType"    # I

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1178
    .local v0, "time":J
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordResourceSelectionTime: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveSelectTime(IJ)V

    .line 1180
    return-void
.end method

.method private declared-synchronized syncAll()V
    .locals 8

    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 245
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 246
    .local v2, "type":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    .line 247
    .local v3, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    if-eqz v3, :cond_1

    .line 248
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;

    .line 249
    .local v4, "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    if-nez v4, :cond_0

    .line 250
    new-instance v5, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v6, v6}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;-><init>(ZZZ)V

    move-object v4, v5

    .line 252
    :cond_0
    iget-boolean v5, v4, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doAdd:Z

    iget-boolean v6, v4, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doUpdate:Z

    iget-boolean v7, v4, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doDelete:Z

    invoke-virtual {v3, v5, v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->sync(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v2    # "type":I
    .end local v3    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .end local v4    # "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 268
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)I
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filePath"    # Ljava/lang/String;

    .line 324
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewResource: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", zip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    const/4 v1, 0x0

    return v1
.end method

.method public addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "rsc_name"    # Ljava/lang/String;
    .param p4, "rsc_path"    # Ljava/lang/String;
    .param p5, "extraData"    # Ljava/lang/String;
    .param p6, "sourceType"    # Ljava/lang/String;

    .line 301
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewResource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extraData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;-><init>()V

    .line 305
    .local v0, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setId(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceType(I)V

    .line 307
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceName(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setTargetPath(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p5}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExtraData(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceFrom(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 313
    .local v2, "time":J
    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setCreateTime(J)V

    .line 314
    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setUpdateTime(J)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDescription(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceIcon(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setPrice(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v0, p4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public addResourceAccountBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 629
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addResourceAccountBinding: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 632
    return-void
.end method

.method public cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 500
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadResource: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 503
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 504
    return-void
.end method

.method public clearSelection(I)V
    .locals 3
    .param p1, "resourceType"    # I

    .line 484
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearSelection: resourceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 487
    return-void
.end method

.method public debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1192
    move-object/from16 v10, p2

    if-eqz v10, :cond_15

    array-length v0, v10

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 1196
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v10

    if-ge v0, v1, :cond_14

    .line 1197
    aget-object v12, v10, v0

    .line 1198
    .local v12, "arg":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3210fe8

    const/4 v13, 0x1

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5db

    if-eq v2, v3, :cond_6

    const/16 v3, 0x5df

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5e6

    if-eq v2, v3, :cond_4

    const v3, 0x15ed54

    if-eq v2, v3, :cond_3

    const v3, 0x2acd24b

    if-eq v2, v3, :cond_2

    const v3, 0x2b03c48

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "-sync"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const-string v2, "-list"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v2, "-add"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    const-string v2, "-s"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const-string v2, "-l"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v13

    goto :goto_1

    :cond_6
    const-string v2, "-h"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const-string v2, "-delete"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x6

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v12    # "arg":Ljava/lang/String;
    goto/16 :goto_c

    .line 1279
    .restart local v12    # "arg":Ljava/lang/String;
    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    array-length v2, v10

    if-ge v1, v2, :cond_a

    .line 1280
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v10, v1

    .line 1281
    .local v1, "id":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .line 1283
    .end local v0    # "i":I
    .local v2, "i":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v3

    .line 1284
    .local v3, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-nez v3, :cond_9

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource not exist: id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    goto :goto_3

    .line 1289
    :cond_9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 1291
    .local v4, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;

    invoke-direct {v0, v8, v9, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$5;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    move-object v5, v0

    .line 1306
    .local v5, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    invoke-virtual {v8, v5}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 1308
    invoke-virtual {v8, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 1311
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    goto :goto_2

    .line 1312
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v5    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    :goto_2
    nop

    .line 1196
    .end local v1    # "id":Ljava/lang/String;
    .end local v12    # "arg":Ljava/lang/String;
    :goto_3
    move v0, v2

    goto/16 :goto_c

    .line 1316
    .end local v2    # "i":I
    .local v0, "i":I
    .restart local v12    # "arg":Ljava/lang/String;
    :cond_a
    const-string v1, "invalid params, need -delete $id"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    goto/16 :goto_c

    .line 1233
    :pswitch_1
    add-int/lit8 v1, v0, 0x4

    array-length v2, v10

    if-ge v1, v2, :cond_b

    .line 1234
    add-int/lit8 v1, v0, 0x1

    aget-object v14, v10, v1

    .line 1235
    .local v14, "id":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1236
    .local v15, "type":I
    add-int/lit8 v1, v0, 0x3

    aget-object v16, v10, v1

    .line 1237
    .local v16, "resourceName":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x4

    aget-object v17, v10, v1

    .line 1238
    .local v17, "resourcePath":Ljava/lang/String;
    add-int/lit8 v18, v0, 0x4

    .line 1240
    .end local v0    # "i":I
    .local v18, "i":I
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v7, v0

    .line 1242
    .local v7, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;

    invoke-direct {v0, v8, v14, v9, v7}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$4;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    move-object v6, v0

    .line 1264
    .local v6, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    invoke-virtual {v8, v6}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 1265
    const-string v0, ""

    const-string v19, "download_resource"

    move-object v1, v8

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v20, v6

    move-object v6, v0

    .end local v6    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    .local v20, "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    move-object v11, v7

    move-object/from16 v7, v19

    .end local v7    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .local v11, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :try_start_1
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1271
    goto :goto_4

    .line 1269
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v20    # "listener":Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;
    :goto_4
    nop

    .line 1196
    move/from16 v0, v18

    goto/16 :goto_c

    .line 1273
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "resourceName":Ljava/lang/String;
    .end local v17    # "resourcePath":Ljava/lang/String;
    .end local v18    # "i":I
    .local v0, "i":I
    :cond_b
    const-string v1, "invalid params, need -add $id $type $name $path"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    goto/16 :goto_c

    .line 1213
    :pswitch_2
    add-int/lit8 v1, v0, 0x1

    array-length v2, v10

    if-ge v1, v2, :cond_13

    .line 1214
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1215
    .local v1, "type":I
    add-int/lit8 v0, v0, 0x1

    .line 1216
    iget-object v2, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    .line 1217
    .local v2, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    if-nez v2, :cond_c

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not auto sync type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 1220
    :cond_c
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;

    .line 1221
    .local v3, "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    if-eqz v3, :cond_e

    iget-boolean v4, v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doAdd:Z

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    move v4, v13

    .line 1222
    .local v4, "doAdd":Z
    :goto_6
    if-eqz v3, :cond_10

    iget-boolean v5, v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doUpdate:Z

    if-eqz v5, :cond_f

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    move v5, v13

    .line 1223
    .local v5, "doUpdate":Z
    :goto_8
    if-eqz v3, :cond_12

    iget-boolean v6, v3, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doDelete:Z

    if-eqz v6, :cond_11

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    move v6, v13

    .line 1224
    .local v6, "doDelete":Z
    :goto_a
    iget-object v7, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$VFpzPCrS6di9diKUNoddWjYqMtU;

    invoke-direct {v11, v2, v4, v5, v6}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$VFpzPCrS6di9diKUNoddWjYqMtU;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-virtual {v7, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
    .end local v2    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .end local v3    # "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    .end local v4    # "doAdd":Z
    .end local v5    # "doUpdate":Z
    .end local v6    # "doDelete":Z
    :goto_b
    goto :goto_c

    .line 1207
    .end local v1    # "type":I
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->dumpAutoSync(Ljava/io/PrintWriter;)V

    .line 1208
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->dumpLocalResources(Ljava/io/PrintWriter;)V

    .line 1209
    goto :goto_c

    .line 1200
    :pswitch_4
    const-string v1, "Support cmd:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    const-string v1, "\t"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-l/-list: List operation resource"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    const-string v1, "\t"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-add $id $type $name $path"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    const-string v1, "\t"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-delete $id"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    nop

    .line 1196
    .end local v12    # "arg":Ljava/lang/String;
    :cond_13
    :goto_c
    add-int/2addr v0, v13

    goto/16 :goto_0

    .line 1327
    .end local v0    # "i":I
    :cond_14
    return-void

    .line 1193
    :cond_15
    :goto_d
    const-string v0, "please input params! use -h too list supported cmd"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteOperationResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 521
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOperationResource: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 523
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 524
    return-void
.end method

.method public deleteResourceAccountBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 635
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addResourceAccountBinding: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 637
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 638
    return-void
.end method

.method public downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 490
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadOperationResource: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

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

    .line 490
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    .line 493
    nop

    .line 494
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    const/4 v2, 0x4

    invoke-static {v0, v2, p2, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 496
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public getDownloadStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .param p2, "resourceId"    # Ljava/lang/String;

    .line 431
    const-string v0, ""

    .line 432
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getDownloadStatus(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v1

    .line 433
    .local v1, "downloadStatusInfo":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    if-eqz v1, :cond_0

    .line 434
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadStatus: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", downloadStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-object v0
.end method

.method public getDownloadStatusList(I)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I

    .line 421
    const-string v0, ""

    .line 422
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getDownloadStatusList(I)Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadInfoJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_0
    const-string v2, "OperationHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadStatusList: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", downloadStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object v0
.end method

.method public getLastSelectionTime(I)J
    .locals 6
    .param p1, "resourceType"    # I

    .line 1183
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    move-result-object v0

    .line 1184
    .local v0, "selectTime":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->lastSelectTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1185
    .local v1, "time":J
    :goto_0
    const-string v3, "OperationHalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastSelectionTime: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-wide v1
.end method

.method public getLocalResourceList(I)Ljava/util/List;
    .locals 4
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourcesByType(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->filterNormalAndVisibleResources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalResourceList: type="

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

    .line 399
    return-object v0
.end method

.method public getResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I
    .param p2, "params"    # Ljava/lang/String;

    .line 331
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResource type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .local v0, "paramsJson":Lorg/json/JSONObject;
    nop

    .line 337
    nop

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "from":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 342
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "xui_get_from"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    const-string/jumbo v5, "xui_get_from"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v4    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 351
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "get_remote"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->queryRemoteResources(ILjava/util/Map;)V

    .line 353
    const-string v3, ""

    return-object v3

    .line 354
    :cond_2
    const-string v3, "get_selected"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getJsonString(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    :cond_3
    const-string v3, "get_selected_list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResourceList(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 361
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLocalResourceList(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 335
    .end local v0    # "paramsJson":Lorg/json/JSONObject;
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid getResource params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    const-string v1, ""

    return-object v1
.end method

.method public getResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 415
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->filterNormalAndVisible(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 416
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceById: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-object v0
.end method

.method public getSelectMode(I)I
    .locals 4
    .param p1, "type"    # I

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mSelectModeMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mSelectModeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 451
    .local v1, "mode":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    const-string v0, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectMode: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return v1

    .line 451
    .end local v1    # "mode":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 4
    .param p1, "resourceType"    # I

    .line 409
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResourceList(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->firstOf(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 410
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedResource: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-object v0
.end method

.method public getSelectedResourceList(I)Ljava/util/List;
    .locals 4
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getSelectedResourceListByType(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->filterNormalAndVisibleResources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedResourceList: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method public pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 507
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadResource: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 510
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 511
    return-void
.end method

.method public queryRemoteResources(ILjava/util/Map;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRemoteResources: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 277
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeEventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 514
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownloadResource: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 517
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    return-void
.end method

.method public selectOperationResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 457
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectOperationResource: resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "OperationHalService"

    const-string v1, "selectOperationResource a empty id"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 463
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void
.end method

.method public declared-synchronized setAutoSync(I)V
    .locals 1
    .param p1, "type"    # I

    monitor-enter p0

    .line 166
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setAutoSync(IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw p1
.end method

.method public declared-synchronized setAutoSync(IZZZ)V
    .locals 17
    .param p1, "type"    # I
    .param p2, "doAdd"    # Z
    .param p3, "doUpdate"    # Z
    .param p4, "doDelete"    # Z

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    monitor-enter p0

    .line 170
    :try_start_0
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoSync type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", doAdd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", doUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", doDelete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;

    invoke-direct {v1, v9, v10, v11}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;-><init>(ZZZ)V

    move-object v12, v1

    .line 173
    .local v12, "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    iget-object v1, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iget-object v2, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;-><init>(ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;)V

    move-object v13, v1

    .line 179
    .local v13, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    iget-object v1, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    iget-object v1, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->getInstance()Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;

    move-result-object v14

    .line 183
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    new-instance v7, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;

    move-object v1, v7

    move-object v2, v8

    move v3, v0

    move-object v4, v13

    move v5, v9

    move v6, v10

    move-object v0, v7

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-virtual {v14, v15, v0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->registerResourceUpdateListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;)V

    .line 188
    iget-object v0, v8, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$JPS9xdBvO76gmu-0VUFkvNFhu4o;

    invoke-direct {v1, v13, v9, v10, v11}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$JPS9xdBvO76gmu-0VUFkvNFhu4o;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 169
    .end local v12    # "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    .end local v13    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .end local p1    # "type":I
    .end local p2    # "doAdd":Z
    .end local p3    # "doUpdate":Z
    .end local p4    # "doDelete":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw v0
.end method

.method public setDownloadPath(ILjava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 284
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownloadPath resourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->setDownloadPath(ILjava/lang/String;)V

    .line 286
    return-void
.end method

.method public setSelectMode(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "mode"    # I

    .line 441
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectMode: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mSelectModeMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mSelectModeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized syncResource(I)V
    .locals 6
    .param p1, "type"    # I

    monitor-enter p0

    .line 196
    :try_start_0
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncResource type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;

    .line 198
    .local v0, "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doAdd:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 199
    .local v3, "doAdd":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doUpdate:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    .line 200
    .local v4, "doUpdate":Z
    :goto_3
    if-eqz v0, :cond_5

    iget-boolean v5, v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doDelete:Z

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    nop

    .line 202
    .local v1, "doDelete":Z
    :cond_5
    :goto_4
    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncResource(IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 195
    .end local v0    # "syncParam":Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
    .end local v1    # "doDelete":Z
    .end local v3    # "doAdd":Z
    .end local v4    # "doUpdate":Z
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw p1
.end method

.method public declared-synchronized syncResource(IZZZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "doAdd"    # Z
    .param p3, "doUpdate"    # Z
    .param p4, "doDelete"    # Z

    monitor-enter p0

    .line 206
    :try_start_0
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncResource type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", doAdd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doDelete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    .line 209
    .local v0, "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    if-nez v0, :cond_0

    .line 210
    const-string v1, "OperationHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not auto sync resource, create temp syncer, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    invoke-direct {v1, p1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;-><init>(ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;)V

    move-object v0, v1

    .line 214
    :cond_0
    move-object v1, v0

    .line 215
    .local v1, "fSyncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$U_dYHjIYWcNZkk-3FwAPdTWAiT0;

    invoke-direct {v3, v1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$U_dYHjIYWcNZkk-3FwAPdTWAiT0;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "syncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .end local v1    # "fSyncer":Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
    .end local p1    # "type":I
    .end local p2    # "doAdd":Z
    .end local p3    # "doUpdate":Z
    .end local p4    # "doDelete":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    throw p1
.end method

.method public unselectOperationResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 471
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unselectOperationResource: resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "OperationHalService"

    const-string v1, "unselectOperationResource a empty id"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 477
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public updateResourceInfo(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "remote"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 545
    const-string v0, "OperationHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResourceInfo: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 548
    return-void
.end method
