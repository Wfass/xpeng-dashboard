.class public interface abstract Lbnn;
.super Ljava/lang/Object;
.source "ISearchAdapterCallback.java"


# virtual methods
.method public abstract favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
.end method

.method public abstract getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isLove(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
.end method

.method public abstract isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isNetRadioPlaying(I)Z
.end method

.method public abstract isProgramPlaying(J)Z
.end method

.method public abstract openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openMusicSingerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openProgramDetail(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
.end method

.method public abstract playAllMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
.end method

.method public abstract playNetRadio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end method

.method public abstract playProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
.end method
