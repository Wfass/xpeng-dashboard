.class public interface abstract Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;
.super Ljava/lang/Object;
.source "IMsRadioTitleView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract getRadioData(Ljava/util/ArrayList;)V
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

.method public abstract updateRadioPlayState(Z)V
.end method
