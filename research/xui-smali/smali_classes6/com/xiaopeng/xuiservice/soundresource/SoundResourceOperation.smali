.class public Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
.super Ljava/lang/Object;
.source "SoundResourceOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$SoundResourceOperationHolder;
    }
.end annotation


# static fields
.field private static final BOOT_SOUND_FOLDER:Ljava/lang/String; = "/bootsound"

.field private static final TAG:Ljava/lang/String; = "SoundResourceOperation"


# instance fields
.field private mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

.field private mOperationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

.field private moduleInit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->moduleInit:Z

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->mOperationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->loadOperationRes(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method private declared-synchronized doOperationInit()V
    .locals 5

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->moduleInit:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "SoundResourceOperation"

    const-string v1, "doOperationInit, already init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->moduleInit:Z

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    .line 96
    .local v0, "operationHalService":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->mOperationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 99
    const v1, 0x107bec

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLocalResourceList(I)Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const-string v2, "SoundResourceOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOperationInit, find resource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "operationHalService":Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .end local v1    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
    throw v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
    .locals 1

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$SoundResourceOperationHolder;->access$200()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$doOperationInit$3(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Ljava/util/List;)V
    .locals 2
    .param p1, "resourceList"    # Ljava/util/List;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 105
    .local v1, "res":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->loadOperationRes(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 106
    .end local v1    # "res":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->doOperationInit()V

    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->doOperationInit()V

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$Y_c9_pi8w228-Rfuh6w86Z6BsEs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$Y_c9_pi8w228-Rfuh6w86Z6BsEs;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method private loadOperationRes(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 8
    .param p1, "res"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 112
    if-nez p1, :cond_0

    .line 113
    const-string v0, "SoundResourceOperation"

    const-string v1, "loadOperationRes, null res"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "currentTime":J
    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 119
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "curStr":Ljava/lang/String;
    iget-wide v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "effectStr":Ljava/lang/String;
    const-string v5, "SoundResourceOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadOperationRes, res is not in time,current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",effect start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 127
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "curStr":Ljava/lang/String;
    .end local v4    # "effectStr":Ljava/lang/String;
    :cond_1
    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    .line 128
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3    # "curStr":Ljava/lang/String;
    iget-wide v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "expireStr":Ljava/lang/String;
    const-string v5, "SoundResourceOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadOperationRes, res is over time,current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",expire:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "curStr":Ljava/lang/String;
    .end local v4    # "expireStr":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootsound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadBootRscFromDisk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "bootSoundResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    const-string v3, "SoundResourceOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadOperationRes,count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 v5, 0x0

    if-nez v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 140
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 141
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->getResId()I

    move-result v5

    .line 140
    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResourceOperationIdMap(Ljava/lang/String;I)I

    .line 142
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->tryActiveBootSoundResourceFromOperation()I

    .line 144
    :cond_4
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$bAcEPKXliuM9BjLdDvqlSNGsvAM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$bAcEPKXliuM9BjLdDvqlSNGsvAM;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$_dLCAVqGpW_JAmPGMuS4Z0-MvDg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$_dLCAVqGpW_JAmPGMuS4Z0-MvDg;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
