.class public interface abstract Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;
.super Ljava/lang/Object;
.source "ResourceDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public varargs abstract deleteResources([Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract insertResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract insertResources([Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryAllResource()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM resourceinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM resourceinfo WHERE resourceId = :id"
    .end annotation
.end method

.method public abstract queryResourceByType(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM resourceinfo WHERE resourceType = :resourceType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryResourceByTypeAndFrom(ILjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM resourceinfo WHERE resourceType = :resourceType AND resourceFrom = :resourceFrom "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateResourceStatus(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE resourceinfo SET status = :status WHERE resourceId = :id"
    .end annotation
.end method
