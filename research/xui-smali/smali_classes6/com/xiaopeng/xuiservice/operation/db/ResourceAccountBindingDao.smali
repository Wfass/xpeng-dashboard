.class public interface abstract Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;
.super Ljava/lang/Object;
.source "ResourceAccountBindingDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract insert(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract query(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM ResourceAccountBinding WHERE id = :key"
    .end annotation
.end method
