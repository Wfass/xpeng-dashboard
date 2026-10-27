.class public interface abstract Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;
.super Ljava/lang/Object;
.source "AppMetaDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public varargs abstract delete([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract insert([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_meta"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByCategory(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_meta WHERE category = :category"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByCategoryAndStatus(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_meta WHERE category = :category AND status = :status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_meta WHERE appId = :appId"
    .end annotation
.end method

.method public abstract update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public varargs abstract update([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
