.class public interface abstract Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;
.super Ljava/lang/Object;
.source "IMsDailyView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
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

.method public abstract openDaily()V
.end method

.method public abstract updateRadioPlayState(Z)V
.end method

.method public abstract updateTime()V
.end method
