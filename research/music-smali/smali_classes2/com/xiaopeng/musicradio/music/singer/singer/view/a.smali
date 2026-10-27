.class public interface abstract Lcom/xiaopeng/musicradio/music/singer/singer/view/a;
.super Ljava/lang/Object;
.source "IMsSingerCollectView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract addData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract updatePlayState(Z)V
.end method
