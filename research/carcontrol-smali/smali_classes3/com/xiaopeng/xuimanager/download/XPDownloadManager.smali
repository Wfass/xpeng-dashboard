.class public Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
.super Ljava/lang/Object;
.source "XPDownloadManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;,
        Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;,
        Lcom/xiaopeng/xuimanager/download/XPDownloadManager$SINGLETON;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPDownloadManager"

.field public static final TYPE_CANCEL:I = 0x5

.field public static final TYPE_COMPLETED:I = 0x3

.field public static final TYPE_ERROR:I = 0x6

.field public static final TYPE_IN_PROGRESS:I = 0x2

.field public static final TYPE_PAUSE:I = 0x4

.field public static final TYPE_START:I = 0x1

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mDownloadListenerArraySet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

.field private mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 35
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    .line 36
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    .line 61
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p11}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->dispatchDownloadCallbackToClientByType(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private dispatchDownloadCallbackToClientByType(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v11, p2

    move-object/from16 v0, p4

    .line 249
    iget-object v2, v1, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " onDownloadCancel end"

    const-string v3, " onDownloadCancel start"

    const-string v15, "dispatchDownloadCallbackToClientByType listener is "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 284
    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onDownloadError start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, p11

    .line 285
    invoke-interface {v14, v11, v12, v0, v9}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadError(JLjava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onDownloadError end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v9, p11

    .line 278
    sget-object v4, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-interface {v14, v11, v12, v0}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadCancel(JLjava/lang/String;)V

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v9, p11

    .line 272
    sget-object v4, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v14, v11, v12, v0}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadPause(JLjava/lang/String;)V

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v9, p11

    .line 266
    sget-object v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onDownloadCompleted start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p10

    .line 267
    invoke-interface {v14, v11, v12, v0, v10}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onDownloadCompleted end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v10, p10

    move-object/from16 v9, p11

    .line 260
    sget-object v8, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDownloadInProgress start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v14

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v1, v8

    move/from16 v8, p7

    move-wide/from16 v9, p8

    .line 261
    invoke-interface/range {v2 .. v10}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadInProgress(JLjava/lang/String;JFJ)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDownloadInProgress end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    :pswitch_5
    sget-object v1, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDownloadStart start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-interface {v14, v11, v12, v0}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;->onDownloadStart(JLjava/lang/String;)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDownloadStart end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 296
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "dispatchDownloadCallbackByType listeners is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    :goto_2
    return v1

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

.method public static getInstance()Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$SINGLETON;->access$100()Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized enqueue(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueue(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueueWithHeader(Ljava/lang/String;Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    :try_start_1
    sget-object p2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueueWtihTitleDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    :try_start_1
    sget-object p2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not connect: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mServiceName:Ljava/lang/String;

    .line 234
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->getState(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    sget-object p2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not connect: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    :try_start_1
    sget-object p2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 215
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;

    .line 203
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->unregisterListener(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 166
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;-><init>(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->registerListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 169
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 223
    sput-object p1, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mDownloadListenerArraySet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 187
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mXpDownloadService:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->unRegisterListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 192
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->mIDownloadListenerToService:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
