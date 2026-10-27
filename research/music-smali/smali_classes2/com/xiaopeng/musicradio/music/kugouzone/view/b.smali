.class public interface abstract Lcom/xiaopeng/musicradio/music/kugouzone/view/b;
.super Ljava/lang/Object;
.source "IKugouZoneCallBack.java"


# virtual methods
.method public abstract changeBtnClick(I)V
.end method

.method public abstract getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getZoneSongPlayState(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract playAllMusic(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation
.end method
