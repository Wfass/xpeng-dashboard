.class Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;
.super Ljava/lang/Object;
.source "DataAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataAccessor"


# instance fields
.field private mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    return-void
.end method


# virtual methods
.method public erase(J)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;->erase(J)V

    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;->queryAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    invoke-interface {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;->queryUid()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUid(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;->query(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public saveData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;->mDao:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;->save(Ljava/util/List;)V

    return-void
.end method
