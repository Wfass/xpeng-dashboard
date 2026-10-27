.class public Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
.super Ljava/lang/Object;
.source "AppInfoRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$SingletonHolder;
    }
.end annotation


# instance fields
.field private final appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->appInfoDao()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$1;

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    .locals 1

    .line 12
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$SingletonHolder;->access$000()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs declared-synchronized delete([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 1
    .param p1, "appInfoEntities"    # [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;->delete([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    .end local p1    # "appInfoEntities":[Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    throw p1
.end method

.method public varargs declared-synchronized insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 1
    .param p1, "appInfoEntities"    # [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;->insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 25
    .end local p1    # "appInfoEntities":[Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    throw p1
.end method

.method public declared-synchronized queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;->queryAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    throw v0
.end method

.method public declared-synchronized queryByGroupType(I)Ljava/util/List;
    .locals 1
    .param p1, "groupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;->queryByGroup(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "groupType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    throw p1
.end method

.method public declared-synchronized queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .locals 1
    .param p1, "pk"    # Ljava/lang/String;

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->appInfoDao:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "pk":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    throw p1
.end method
