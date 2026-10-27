.class public interface abstract Lcom/xiaopeng/musicradio/music/main/view/b;
.super Ljava/lang/Object;
.source "IMsMusicDetailView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract addData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadEnd()V
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract refreshLove(Z)V
.end method

.method public abstract setTotalSong(I)V
.end method

.method public abstract updateEstimateLoadingTime(D)V
.end method

.method public abstract updateLove(Ljava/lang/String;Z)V
.end method

.method public abstract updatePlayState()V
.end method
