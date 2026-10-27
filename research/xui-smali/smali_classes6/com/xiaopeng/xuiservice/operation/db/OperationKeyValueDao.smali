.class public interface abstract Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;
.super Ljava/lang/Object;
.source "OperationKeyValueDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract insert(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM OperationKeyValue WHERE id = :id"
    .end annotation
.end method

.method public abstract queryByKey(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM OperationKeyValue WHERE key = :key"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
