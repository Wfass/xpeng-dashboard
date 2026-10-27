.class public interface abstract Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;
.super Ljava/lang/Object;
.source "AppInfoDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public varargs abstract insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByGroup(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_info WHERE group_type = :groupType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_info WHERE biz_uk_name = :pk"
    .end annotation
.end method

.method public varargs abstract update([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
