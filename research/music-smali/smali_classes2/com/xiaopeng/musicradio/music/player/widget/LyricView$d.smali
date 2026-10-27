.class public interface abstract Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;
.super Ljava/lang/Object;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract onLrcLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLrcLoading()V
.end method

.method public abstract onNoLrc()V
.end method
