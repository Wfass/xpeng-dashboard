.class public interface abstract Lbfc;
.super Ljava/lang/Object;
.source "IMusicMineService.java"


# virtual methods
.method public abstract fetchCollectedAlbum()V
.end method

.method public abstract fetchCollectedAlbum(I)V
.end method

.method public abstract fetchCustomAlbumIfRequire()V
.end method

.method public abstract getBlueMusicList(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getCollectedAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getCollectedMusicList(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getDetailPlayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getHistoryAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getHistoryMusicList(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getListSign(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getMobileAlbumList(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getPlayState()I
.end method

.method public abstract getPlayingMusic()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getUserAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract isCollectedMusic(Ljava/lang/Object;)Z
.end method

.method public abstract isNewMatchedBlue(Ljava/lang/Object;)Z
.end method

.method public abstract play(Ljava/lang/Object;Lbff;)V
.end method

.method public abstract play(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract playMusicInfo(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract removeBlueMusic(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract removeHistoryAlbum(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract removeHistoryMusic(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract setCollectedAlbum(Ljava/lang/Object;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract setCollectedMusic(Ljava/lang/Object;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract startDetail(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
.end method
