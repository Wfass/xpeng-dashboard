.class public interface abstract Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;
.super Ljava/lang/Object;
.source "SyncDataDao.java"


# virtual methods
.method public abstract erase(J)V
.end method

.method public abstract query(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryUid()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract save(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;)V"
        }
    .end annotation
.end method
