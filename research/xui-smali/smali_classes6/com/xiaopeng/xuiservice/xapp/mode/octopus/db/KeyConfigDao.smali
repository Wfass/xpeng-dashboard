.class public interface abstract Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;
.super Ljava/lang/Object;
.source "KeyConfigDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract findByName(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM keyconfig WHERE pkgName LIKE :pkgName AND configName LIKE :configName LIMIT 1"
    .end annotation
.end method

.method public abstract findConfigsByPkg(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM keyconfig WHERE pkgName LIKE :pkgName"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findSelected(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM keyconfig WHERE pkgName LIKE :pkgName AND selected = 1 LIMIT 1"
    .end annotation
.end method

.method public abstract insertConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertConfigs(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;)V"
        }
    .end annotation
.end method
