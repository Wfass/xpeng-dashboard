.class public interface abstract Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;
.super Ljava/lang/Object;
.source "IMsRmTitleView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract getData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract updateRmPlayState(Z)V
.end method
