.class public interface abstract Lcom/xiaopeng/musicradio/usb/song/view/a;
.super Ljava/lang/Object;
.source "ISongMainView.java"


# virtual methods
.method public abstract notifySpeechChange()V
.end method

.method public abstract removeMusicInfo(I)V
.end method

.method public abstract showData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showNoDataView()V
.end method

.method public abstract updateLogo()V
.end method

.method public abstract updateMusicInfo(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end method

.method public abstract updatePlayState()V
.end method
