.class public Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;
.super Ljava/lang/Object;
.source "OperationResourceSyncer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_HANG_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "operationsyncer"


# instance fields
.field private volatile abortFlag:Z

.field private final callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

.field private final downloadLastProgressTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final failedDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final pendingDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceType:I

.field private final successDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

.field private final syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->downloadLastProgressTime:Landroid/util/ArrayMap;

    .line 61
    iput p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    .line 62
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->init()V

    .line 67
    return-void
.end method

.method private ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 471
    const-string v0, "operationsyncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->typeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    return-void
.end method

.method private INFO(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 467
    const-string v0, "operationsyncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->typeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private doSync(ZZZ)V
    .locals 21
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    move-object/from16 v1, p0

    .line 109
    const-string v0, "<<<<<<<<<< Start sync resource"

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;-><init>()V

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 113
    const/4 v4, 0x0

    move-object v5, v4

    .line 115
    .local v5, "remoteResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    iget v6, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getRemoteResources(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRemoteResources type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setAborted(Z)V

    .line 122
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->notifyCompleted(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    .line 123
    const-string v0, "End sync resource (aborted phase=1) >>>>>>>>>>"

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 124
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    if-nez v5, :cond_1

    .line 130
    const-string v7, "getRemoteResourceList timeout or interrupted."

    invoke-direct {v1, v7, v4}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setSuccess(Z)V

    .line 132
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iput v6, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    .line 133
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->notifyCompleted(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    .line 134
    const-string v0, "End sync resource (query remote fail) >>>>>>>>>>"

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REMOTE resources "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v4

    iget v7, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-virtual {v4, v7}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getResourcesByType(I)Ljava/util/List;

    move-result-object v4

    .line 142
    .local v4, "localResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCAL resources "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 143
    const/4 v7, 0x0

    .line 144
    .local v7, "index":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 145
    .local v9, "resource":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v7, 0x1

    .line 145
    .local v11, "index":I
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .end local v7    # "index":I
    const-string v7, "] "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 146
    .end local v9    # "resource":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    nop

    .line 144
    move v7, v11

    goto :goto_1

    .line 148
    .end local v11    # "index":I
    .restart local v7    # "index":I
    :cond_2
    const/4 v7, 0x0

    .line 149
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 151
    .local v9, "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v7, 0x1

    .line 151
    .local v12, "index":I
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .end local v7    # "index":I
    const-string v7, "] "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "resourceId":Ljava/lang/String;
    invoke-direct {v1, v4, v7}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->findResourceInfoById(Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v11

    .line 156
    .local v11, "local":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expired, remote resource id = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", expired at "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    .line 159
    move-object/from16 v17, v7

    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v6

    .line 159
    .end local v7    # "resourceId":Ljava/lang/String;
    .local v17, "resourceId":Ljava/lang/String;
    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v13, v14}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-direct {v1, v6}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 161
    if-eqz v11, :cond_12

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning, delete expired resource in syncer, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v17    # "resourceId":Ljava/lang/String;
    .restart local v7    # "resourceId":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 164
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 165
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v6, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    const/4 v13, 0x1

    add-int/2addr v10, v13

    iput v10, v6, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    goto/16 :goto_7

    .line 171
    :cond_3
    if-eqz v11, :cond_f

    .line 173
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v6

    .line 174
    .local v6, "statusRemote":I
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVersion(Lcom/xiaopeng/xuimanager/operation/OperationResource;)I

    move-result v13

    .line 176
    .local v13, "versionRemote":I
    iget v14, v11, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 177
    .local v14, "statusLocal":I
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVersion(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)I

    move-result v15

    .line 179
    .local v15, "versionLocal":I
    if-ne v15, v13, :cond_4

    if-ne v14, v6, :cond_4

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No update, resource id = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 185
    invoke-direct {v1, v9, v11}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->updateInfoIfNeeded(Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    goto/16 :goto_5

    .line 193
    :cond_4
    if-nez v6, :cond_8

    .line 194
    if-le v13, v15, :cond_5

    .line 195
    if-eqz p2, :cond_e

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update resource, delete local & download remote, id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", version "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 198
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 200
    :cond_5
    if-ne v13, v15, :cond_7

    .line 201
    if-eqz p2, :cond_e

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore to normal status, resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", local status = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 204
    invoke-direct {v1, v9, v11}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->updateInfoIfNeeded(Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    goto :goto_3

    .line 207
    :cond_6
    const/16 v16, 0x1

    :goto_3
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    goto/16 :goto_5

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! OPERATION ERROR, resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " local version: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " > remote version: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 215
    :cond_8
    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    .line 216
    if-le v13, v15, :cond_9

    .line 217
    if-eqz p3, :cond_e

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update disabled resource, just delete local, id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", version "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 222
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 223
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    goto/16 :goto_5

    .line 225
    :cond_9
    if-ne v13, v15, :cond_b

    .line 226
    if-eqz p3, :cond_e

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 229
    invoke-direct {v1, v9, v11}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->updateInfoIfNeeded(Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 230
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    goto :goto_4

    .line 232
    :cond_a
    const/16 v16, 0x1

    :goto_4
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    goto :goto_5

    .line 236
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! OPERATION ERROR, resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " local version: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " > remote version: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    goto :goto_5

    .line 239
    :cond_c
    if-ne v6, v10, :cond_d

    .line 240
    if-eqz p3, :cond_e

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete resource, resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", local status = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 243
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 244
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    goto :goto_5

    .line 249
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown remote status = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 252
    .end local v6    # "statusRemote":I
    .end local v13    # "versionRemote":I
    .end local v14    # "statusLocal":I
    .end local v15    # "versionLocal":I
    :cond_e
    :goto_5
    goto :goto_6

    .line 256
    :cond_f
    if-eqz p1, :cond_11

    .line 257
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v0

    if-nez v0, :cond_10

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download only remote resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 260
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 263
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IGNORE only remote resource id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", status = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 268
    .end local v7    # "resourceId":Ljava/lang/String;
    .end local v9    # "remote":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v11    # "local":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_11
    :goto_6
    nop

    .line 149
    :cond_12
    :goto_7
    move v7, v12

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 272
    .end local v12    # "index":I
    .local v7, "index":I
    :cond_13
    const/4 v0, 0x1

    .line 275
    .local v0, "success":Z
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 276
    .local v8, "willDownloadCount":I
    if-lez v8, :cond_1c

    .line 278
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->downloadLastProgressTime:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 282
    .local v13, "startTime":J
    :goto_8
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    iget-object v15, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v15

    add-int/2addr v9, v15

    if-ne v9, v8, :cond_14

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wait loop quit normally, success="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", failed="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 284
    goto :goto_9

    .line 287
    :cond_14
    iget-boolean v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    if-eqz v9, :cond_15

    .line 288
    const-string/jumbo v9, "wait loop quit by abort"

    invoke-direct {v1, v9}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 289
    goto :goto_9

    .line 292
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/32 v18, 0x1b7740

    cmp-long v9, v15, v18

    if-lez v9, :cond_17

    .line 293
    const-string/jumbo v9, "wait loop quit by timeout, use more than 30 minutes"

    invoke-direct {v1, v9}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 294
    nop

    .line 314
    :goto_9
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-ne v9, v8, :cond_16

    const/4 v9, 0x1

    goto :goto_a

    :cond_16
    const/4 v9, 0x0

    :goto_a
    move v0, v9

    .line 316
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Download finish success="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", use "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 321
    .end local v13    # "startTime":J
    goto/16 :goto_d

    .line 297
    .restart local v13    # "startTime":J
    :cond_17
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 298
    .local v15, "remoteResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v10, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v15}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 299
    nop

    .line 297
    .end local v15    # "remoteResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :goto_c
    const/4 v10, 0x2

    goto :goto_b

    .line 301
    .restart local v15    # "remoteResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_18
    iget-object v10, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->downloadLastProgressTime:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 302
    .local v10, "lastProgressTime":Ljava/lang/Long;
    if-eqz v10, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v11, v11, v18

    const-wide/16 v18, 0x2710

    cmp-long v11, v11, v18

    if-lez v11, :cond_1a

    .line 303
    :cond_19
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "===> Start download id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 304
    invoke-direct {v1, v15}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->startOrResumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 305
    iget-object v11, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->downloadLastProgressTime:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v10    # "lastProgressTime":Ljava/lang/Long;
    .end local v15    # "remoteResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_1a
    goto :goto_c

    .line 309
    :cond_1b
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncing elapsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%.2f"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v13

    long-to-float v9, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 279
    const/4 v10, 0x2

    goto/16 :goto_8

    .line 323
    .end local v13    # "startTime":J
    :cond_1c
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 324
    const-string v2, "only local db changed, wait 1s..."

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 325
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 329
    :cond_1d
    :goto_d
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 330
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 331
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 333
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    if-eqz v2, :cond_1e

    .line 334
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setAborted(Z)V

    .line 335
    const-string v2, "End sync resource (aborted phase=2) >>>>>>>>>>"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    goto :goto_e

    .line 336
    :cond_1e
    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    .line 337
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setSuccess(Z)V

    .line 338
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setSuccess(Z)V

    .line 339
    const-string v2, "End sync resource (success) >>>>>>>>>>"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    goto :goto_e

    .line 341
    :cond_1f
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setSuccess(Z)V

    .line 342
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    const/4 v3, 0x2

    iput v3, v2, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    .line 343
    const-string v2, "End sync resource (download failed) >>>>>>>>>>"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 346
    :goto_e
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->notifyCompleted(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    .line 347
    return-void
.end method

.method private findOperationResourceById(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 4
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;"
        }
    .end annotation

    .line 434
    .local p1, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 438
    .local v2, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    return-object v2

    .line 441
    .end local v2    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_1
    goto :goto_0

    .line 442
    :cond_2
    return-object v0

    .line 435
    :cond_3
    :goto_1
    return-object v0
.end method

.method private findResourceInfoById(Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;"
        }
    .end annotation

    .line 446
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 450
    .local v2, "resource":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    return-object v2

    .line 453
    .end local v2    # "resource":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_1
    goto :goto_0

    .line 454
    :cond_2
    return-object v0

    .line 447
    :cond_3
    :goto_1
    return-object v0
.end method

.method private finishDownload(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "isUpdate"    # Z

    .line 409
    if-nez p1, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->findOperationResourceById(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 413
    .local v0, "find":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-eqz v0, :cond_3

    .line 414
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->pendingDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    if-eqz p2, :cond_2

    .line 416
    if-eqz p3, :cond_1

    .line 417
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v2, v1, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    goto :goto_0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncResult:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    iget v2, v1, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->successDownloads:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->failedDownloads:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_3
    :goto_1
    return-void
.end method

.method private init()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 71
    const-string v0, "init "

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static synthetic lambda$notifyCompleted$1(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 2
    .param p1, "syncResult"    # Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    iget v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;->onSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    return-void
.end method

.method public static synthetic lambda$sync$0(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 3
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 87
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->doSync(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method private notifyCompleted(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 2
    .param p1, "syncResult"    # Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->callback:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer$Callback;

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 431
    :cond_0
    return-void
.end method

.method private startOrResumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 350
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 355
    return-void

    .line 351
    :cond_1
    :goto_0
    const-string v0, "download url is empty"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private static typeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "resourceType"    # I

    .line 475
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->stringOfResourceType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unInit()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 76
    const-string v0, "unInit "

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private updateInfoIfNeeded(Lcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 4
    .param p1, "remote"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "local"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 358
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v0

    iget v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    if-ne v0, v1, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getEffectTime()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getPrice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update resource info: id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->operationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->updateResourceInfo(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 368
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abortIfSyncing()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "abort sync (not syncing)"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    .line 101
    const-string v0, "abort sync"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public isSyncing()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 406
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 377
    iget v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    if-eq p3, v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle EVENT_CODE_RESOURCE_ADD: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p2, v1, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->finishDownload(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 388
    :cond_2
    const/16 v2, 0xe

    if-ne p1, v2, :cond_3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle EVENT_CODE_RESOURCE_UPDATE: id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p2, v1, v1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->finishDownload(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 391
    :cond_3
    const/16 v1, 0x15

    if-eq p1, v1, :cond_6

    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 395
    :cond_4
    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x13

    if-ne p1, v0, :cond_7

    .line 398
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle download state update: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->downloadLastProgressTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 393
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle download error or cancel: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p2, v0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->finishDownload(Ljava/lang/String;ZZ)V

    .line 401
    :cond_7
    :goto_1
    return-void
.end method

.method public sync(ZZZ)V
    .locals 3
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->syncingFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "duplicate start sync"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->INFO(Ljava/lang/String;)V

    .line 82
    return-void

    .line 84
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->abortFlag:Z

    .line 85
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->resourceType:I

    .line 460
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->typeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    return-object v0
.end method
