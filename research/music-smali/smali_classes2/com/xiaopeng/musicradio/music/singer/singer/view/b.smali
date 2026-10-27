.class public interface abstract Lcom/xiaopeng/musicradio/music/singer/singer/view/b;
.super Ljava/lang/Object;
.source "IMsSingerHotView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract getHotData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract updatePlayState(Z)V
.end method
