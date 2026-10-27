.class public interface abstract Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;
.super Ljava/lang/Object;
.source "SelectedDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteSelectedInfo(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract insertSelectInfo(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertSelectTime(Lcom/xiaopeng/xuiservice/operation/db/SelectTime;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SelectTime WHERE resourceType = :resourceType"
    .end annotation
.end method

.method public abstract querySelectedByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM selectedinfo WHERE resourceType = :resourceType"
    .end annotation
.end method
