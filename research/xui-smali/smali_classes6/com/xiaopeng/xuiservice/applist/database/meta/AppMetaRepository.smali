.class public final Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;
.super Ljava/lang/Object;
.source "AppMetaRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$SingletonHolder;
    }
.end annotation


# instance fields
.field private appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase;->getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase;->appMetaDao()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$1;

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;
    .locals 1

    .line 16
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository$SingletonHolder;->access$100()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 57
    return-void
.end method

.method public varargs delete([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->delete([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 53
    return-void
.end method

.method public insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 41
    return-void
.end method

.method public varargs insert([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->insert([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 37
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->queryAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryByCategory(I)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->queryByCategory(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryByCategoryAndStatus(II)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->queryByCategoryAndStatus(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 49
    return-void
.end method

.method public varargs update([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 1
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->appMetaDao:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;->update([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 45
    return-void
.end method
