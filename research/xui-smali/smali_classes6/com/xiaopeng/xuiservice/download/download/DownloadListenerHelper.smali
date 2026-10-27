.class public Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;
.super Ljava/lang/Object;
.source "DownloadListenerHelper.java"


# static fields
.field private static final DOWNLOAD_IN_PROGRESS_URI:Ljava/lang/String; = "content://downloads/my_downloads"

.field private static final DOWNLOAD_OPERATION_TYPE_CLEAR:I = 0x2

.field private static final DOWNLOAD_OPERATION_TYPE_PAUSE:I = 0x1

.field private static final DOWNLOAD_OPERATION_TYPE_START:I = 0x0

.field private static final ILLEGAL_DOWNLOAD_STATE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DownloadListenerHelper"

.field private static mCanceledTaskIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static sCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sDownloadManager:Landroid/app/DownloadManager;

.field private static sDownloadProgressObserver:Landroid/database/ContentObserver;

.field private static sFileDownloadListener:Landroid/content/BroadcastReceiver;

.field private static sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    .line 42
    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    .line 43
    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadProgressObserver:Landroid/database/ContentObserver;

    .line 44
    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sFileDownloadListener:Landroid/content/BroadcastReceiver;

    .line 45
    new-instance v1, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    .line 46
    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->mCanceledTaskIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 32
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getTotalBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Landroid/app/DownloadManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static convertIntegers(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 221
    .local p0, "integers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 222
    .local v0, "ret":[I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static destroy(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sFileDownloadListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method private static dispatchCallbackByOperationType(JILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # J
    .param p2, "opreationType"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .line 89
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadCancelCallback(JLjava/lang/String;)Z

    .line 102
    const-string v0, "DownloadListenerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel download task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  file uri  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadPauseCallback(JLjava/lang/String;)Z

    .line 97
    const-string v0, "DownloadListenerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause download task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  file uri  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_0

    .line 91
    :pswitch_2
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadStartCallback(JLjava/lang/String;)Z

    .line 92
    const-string v0, "DownloadListenerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start download task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  file uri  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    nop

    .line 106
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dispatchDownloadCallbackByType(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "type"    # I
    .param p1, "taskId"    # J
    .param p3, "fileUri"    # Ljava/lang/String;
    .param p4, "totalBytes"    # J
    .param p6, "percentage"    # F
    .param p7, "byteTillNow"    # J
    .param p9, "completedFileUri"    # Ljava/lang/String;
    .param p10, "errorMessage"    # Ljava/lang/String;

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "success":Z
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_6

    .line 329
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 432
    move-object/from16 v14, p9

    move-object/from16 v13, p10

    goto/16 :goto_14

    .line 413
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 414
    .local v2, "callbackCount":I
    move v3, v0

    .end local v0    # "success":Z
    .local v1, "i":I
    .local v3, "success":Z
    :goto_0
    if-ge v1, v2, :cond_0

    .line 415
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-object v4, v0

    .line 417
    .local v4, "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    move-object/from16 v13, p10

    :try_start_0
    invoke-interface {v4, v10, v11, v12, v13}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadError(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    const/4 v0, 0x1

    .line 423
    .end local v3    # "success":Z
    .restart local v0    # "success":Z
    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 424
    nop

    .line 414
    move v3, v0

    goto :goto_1

    .line 423
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 421
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 424
    nop

    .line 414
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_2
    sget-object v5, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 426
    .end local v1    # "i":I
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :cond_0
    move-object/from16 v13, p10

    goto/16 :goto_9

    .line 396
    .end local v2    # "callbackCount":I
    .end local v3    # "success":Z
    .local v0, "success":Z
    :pswitch_1
    move-object/from16 v13, p10

    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 397
    .restart local v2    # "callbackCount":I
    move v3, v0

    .end local v0    # "success":Z
    .restart local v1    # "i":I
    .restart local v3    # "success":Z
    :goto_3
    if-ge v1, v2, :cond_1

    .line 398
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-object v4, v0

    .line 400
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :try_start_2
    invoke-interface {v4, v10, v11, v12}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadCancel(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 401
    const/4 v0, 0x1

    .line 406
    .end local v3    # "success":Z
    .restart local v0    # "success":Z
    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 407
    nop

    .line 397
    move v3, v0

    goto :goto_4

    .line 406
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 402
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 404
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 407
    nop

    .line 397
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 406
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_5
    sget-object v5, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 409
    .end local v1    # "i":I
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :cond_1
    goto :goto_9

    .line 379
    .end local v2    # "callbackCount":I
    .end local v3    # "success":Z
    .local v0, "success":Z
    :pswitch_2
    move-object/from16 v13, p10

    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 380
    .restart local v2    # "callbackCount":I
    move v3, v0

    .end local v0    # "success":Z
    .restart local v1    # "i":I
    .restart local v3    # "success":Z
    :goto_6
    if-ge v1, v2, :cond_2

    .line 381
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-object v4, v0

    .line 383
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :try_start_4
    invoke-interface {v4, v10, v11, v12}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadPause(JLjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 384
    const/4 v0, 0x1

    .line 389
    .end local v3    # "success":Z
    .restart local v0    # "success":Z
    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    nop

    .line 380
    move v3, v0

    goto :goto_7

    .line 389
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 385
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 387
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    nop

    .line 380
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 389
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_8
    sget-object v5, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 392
    .end local v1    # "i":I
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :cond_2
    nop

    .line 432
    .end local v2    # "callbackCount":I
    .end local v3    # "success":Z
    .local v0, "success":Z
    :goto_9
    move-object/from16 v14, p9

    goto/16 :goto_13

    .line 363
    :pswitch_3
    move-object/from16 v13, p10

    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 364
    .restart local v2    # "callbackCount":I
    move v3, v0

    .end local v0    # "success":Z
    .restart local v1    # "i":I
    .restart local v3    # "success":Z
    :goto_a
    if-ge v1, v2, :cond_3

    .line 365
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-object v4, v0

    .line 367
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    move-object/from16 v14, p9

    :try_start_6
    invoke-interface {v4, v10, v11, v12, v14}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 368
    const/4 v0, 0x1

    .line 373
    .end local v3    # "success":Z
    .restart local v0    # "success":Z
    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 374
    nop

    .line 364
    move v3, v0

    goto :goto_b

    .line 373
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 369
    :catch_3
    move-exception v0

    move-object v5, v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 371
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 374
    nop

    .line 364
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 373
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_c
    sget-object v5, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 376
    .end local v1    # "i":I
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :cond_3
    move-object/from16 v14, p9

    goto/16 :goto_13

    .line 347
    .end local v2    # "callbackCount":I
    .end local v3    # "success":Z
    .local v0, "success":Z
    :pswitch_4
    move-object/from16 v14, p9

    move-object/from16 v13, p10

    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 348
    .local v8, "callbackCount":I
    move v15, v0

    .end local v0    # "success":Z
    .restart local v1    # "i":I
    .local v15, "success":Z
    :goto_d
    move v9, v1

    .end local v1    # "i":I
    .local v9, "i":I
    if-ge v9, v8, :cond_4

    .line 349
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 351
    .local v1, "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    move-wide v2, v10

    move-object v4, v12

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v8, p7

    .end local v8    # "callbackCount":I
    .end local v9    # "i":I
    .local v16, "callbackCount":I
    .local v17, "i":I
    :try_start_8
    invoke-interface/range {v1 .. v9}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadInProgress(JLjava/lang/String;JFJ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 352
    const/4 v0, 0x1

    .line 357
    .end local v15    # "success":Z
    .restart local v0    # "success":Z
    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 358
    nop

    .line 348
    move v15, v0

    goto :goto_e

    .line 357
    .end local v0    # "success":Z
    .restart local v15    # "success":Z
    :catchall_4
    move-exception v0

    goto :goto_f

    .line 353
    :catch_4
    move-exception v0

    move-object v2, v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v15, 0x0

    .line 355
    :try_start_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 358
    nop

    .line 348
    .end local v1    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_e
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .local v1, "i":I
    move/from16 v8, v16

    goto :goto_d

    .line 357
    .local v1, "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .restart local v17    # "i":I
    :goto_f
    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 360
    .end local v1    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .end local v16    # "callbackCount":I
    .end local v17    # "i":I
    .restart local v8    # "callbackCount":I
    :cond_4
    move/from16 v16, v8

    .line 432
    .end local v8    # "callbackCount":I
    .restart local v16    # "callbackCount":I
    move v0, v15

    goto :goto_14

    .line 331
    .end local v15    # "success":Z
    .end local v16    # "callbackCount":I
    .local v0, "success":Z
    :pswitch_5
    move-object/from16 v14, p9

    move-object/from16 v13, p10

    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 332
    .restart local v2    # "callbackCount":I
    move v3, v0

    .end local v0    # "success":Z
    .local v1, "i":I
    .restart local v3    # "success":Z
    :goto_10
    if-ge v1, v2, :cond_5

    .line 333
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-object v4, v0

    .line 335
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :try_start_a
    invoke-interface {v4, v10, v11, v12}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadStart(JLjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 336
    const/4 v0, 0x1

    .line 341
    .end local v3    # "success":Z
    .restart local v0    # "success":Z
    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 342
    nop

    .line 332
    move v3, v0

    goto :goto_11

    .line 341
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :catchall_5
    move-exception v0

    goto :goto_12

    .line 337
    :catch_5
    move-exception v0

    move-object v5, v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 339
    :try_start_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 342
    nop

    .line 332
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 341
    .restart local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :goto_12
    sget-object v5, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 344
    .end local v1    # "i":I
    .end local v4    # "broadcastItem":Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    :cond_5
    nop

    .line 432
    .end local v2    # "callbackCount":I
    .end local v3    # "success":Z
    .local v0, "success":Z
    :goto_13
    move v0, v3

    goto :goto_14

    .line 430
    :cond_6
    move-object/from16 v14, p9

    move-object/from16 v13, p10

    const-string v1, "DownloadListenerHelper"

    const-string v2, "dispatchDownloadCallbackByType sCallbackList is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_14
    return v0

    nop

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

.method public static dispatchDownloadCallbackByType(Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;)Z
    .locals 11
    .param p0, "downloadStateBean"    # Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getTaskId()J

    move-result-wide v1

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getFileUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getTotalBytes()J

    move-result-wide v4

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getPercentage()F

    move-result v6

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getByteTillNow()J

    move-result-wide v7

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getCompletedFileUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    .line 320
    invoke-static/range {v0 .. v10}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadCallbackByType(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dispatchDownloadCancelCallback(JLjava/lang/String;)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;

    .line 191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v11, ""

    const-string v12, ""

    const/4 v2, 0x5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static dispatchDownloadCompleteCallback(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "completedFileUri"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v12, ""

    const/4 v2, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static dispatchDownloadErrorCallback(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 203
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v11, ""

    const/4 v2, 0x6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static dispatchDownloadInProgressCallback(JLjava/lang/String;JFJ)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "totalByte"    # J
    .param p5, "percentage"    # F
    .param p6, "byteTillNow"    # J

    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v11, ""

    const-string v12, ""

    const/4 v2, 0x2

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static dispatchDownloadPauseCallback(JLjava/lang/String;)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;

    .line 185
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v11, ""

    const-string v12, ""

    const/4 v2, 0x4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static dispatchDownloadStartCallback(JLjava/lang/String;)Z
    .locals 14
    .param p0, "taskId"    # J
    .param p2, "uri"    # Ljava/lang/String;

    .line 173
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, "message":Landroid/os/Message;
    new-instance v13, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    const-string v11, ""

    const-string v12, ""

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v13

    move-wide v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;-><init>(IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sHandler:Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public static enqueue(Ljava/lang/String;)J
    .locals 2
    .param p0, "downloadUri"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->enqueueWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static enqueueWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 7
    .param p0, "downloadUri"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 61
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 62
    .local v0, "request":Landroid/app/DownloadManager$Request;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/download/util/DownloadUtils;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 63
    const-string v1, "DownloadListenerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download file public dir  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 67
    :cond_0
    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 70
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "operationType":I
    if-eqz p3, :cond_2

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/xiaopeng/xuiservice/download/download/-$$Lambda$DownloadListenerHelper$0GcK8clqlaNxVdb2_i9ReOROX9Q;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/download/download/-$$Lambda$DownloadListenerHelper$0GcK8clqlaNxVdb2_i9ReOROX9Q;-><init>(Landroid/app/DownloadManager$Request;)V

    invoke-interface {p3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 74
    const-string v2, "android.download.type"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "operationTypeStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 77
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "DownloadListenerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse operation type error , origin type from map is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v2    # "operationTypeStr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 84
    .local v2, "id":J
    invoke-static {v2, v3, v1, p0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchCallbackByOperationType(JILjava/lang/String;)V

    .line 85
    return-wide v2
.end method

.method private static generateDownloadManagerQueryCursor(J)Landroid/database/Cursor;
    .locals 3
    .param p0, "id"    # J

    .line 295
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 296
    .local v0, "query":Landroid/app/DownloadManager$Query;
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private static generateDownloadManagerQueryCursorByString(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .line 300
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Query;->setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 301
    .local v0, "query":Landroid/app/DownloadManager$Query;
    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private static generateIntBlock(I)[I
    .locals 2
    .param p0, "length"    # I

    .line 215
    new-array v0, p0, [I

    .line 216
    .local v0, "statesResult":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 217
    return-object v0
.end method

.method public static getDownloadState(J)I
    .locals 4
    .param p0, "id"    # J

    .line 249
    const-string v0, "status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateIntByFields(J[Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 250
    .local v0, "downloadState":I
    const-string v1, "DownloadListenerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadState downloadState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return v0
.end method

.method public static varargs getDownloadStateIntByFields(J[Ljava/lang/String;)[I
    .locals 4
    .param p0, "id"    # J
    .param p2, "stateKey"    # [Ljava/lang/String;

    .line 267
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->generateDownloadManagerQueryCursor(J)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    array-length v1, p2

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->generateIntBlock(I)[I

    move-result-object v1

    .line 269
    .local v1, "statesResult":[I
    if-eqz v0, :cond_2

    .line 270
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 272
    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_2
    return-object v1
.end method

.method public static getDownloadStateIntByTitle(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "stateKey"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->generateDownloadManagerQueryCursorByString(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "statesResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 258
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->convertIntegers(Ljava/util/List;)[I

    move-result-object v2

    return-object v2
.end method

.method public static varargs getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "id"    # J
    .param p2, "stateKey"    # [Ljava/lang/String;

    .line 281
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->generateDownloadManagerQueryCursor(J)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, "cursor":Landroid/database/Cursor;
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    .line 283
    .local v1, "statesResult":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 284
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 286
    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_2
    return-object v1
.end method

.method public static getDownloadedBytes(J)J
    .locals 6
    .param p0, "id"    # J

    .line 239
    const-wide/16 v0, 0x0

    .line 240
    .local v0, "downloadedSizeByte":J
    const-string v2, "bytes_so_far"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 241
    .local v2, "downloadedByteStr":Ljava/lang/String;
    const-string v3, "DownloadListenerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDownloadedBytes downloadedByte = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v2, :cond_0

    .line 243
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 245
    :cond_0
    return-wide v0
.end method

.method public static getTaskIdFromUri(Landroid/net/Uri;)J
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .line 305
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "lastPathSegment":Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 308
    .local v1, "taskId":J
    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    goto :goto_1

    .line 311
    :cond_0
    const-string v3, "DownloadListenerHelper"

    const-string v4, "Last path segment is null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    goto :goto_2

    .line 313
    :goto_1
    nop

    .line 314
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "DownloadListenerHelper"

    const-string v5, "Uri never contains task id"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    return-wide v1
.end method

.method private static getTotalBytes(J)J
    .locals 4
    .param p0, "id"    # J

    .line 230
    const-wide/16 v0, 0x0

    .line 231
    .local v0, "totalSizeByte":J
    const-string v2, "total_size"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 232
    .local v2, "totalByte":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 233
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 235
    :cond_0
    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    .line 51
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadManager:Landroid/app/DownloadManager;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadManager_ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->registerContentReceiver(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static synthetic lambda$0GcK8clqlaNxVdb2_i9ReOROX9Q(Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object p0

    return-object p0
.end method

.method private static registerContentReceiver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    .local v0, "workHandler":Landroid/os/Handler;
    const-string v1, "content://downloads/my_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, "sDownloadObserver":Landroid/net/Uri;
    new-instance v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$1;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$1;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadProgressObserver:Landroid/database/ContentObserver;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sDownloadProgressObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    new-instance v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$2;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$2;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sFileDownloadListener:Landroid/content/BroadcastReceiver;

    .line 156
    sget-object v2, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sFileDownloadListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method public static registerDownloadCallback(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)Z
    .locals 1
    .param p0, "listener"    # Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 160
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public static unRegisterDownloadCallback(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)Z
    .locals 1
    .param p0, "listener"    # Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    .line 164
    sget-object v0, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->sCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
