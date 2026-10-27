.class public interface abstract Lcom/xiaopeng/musicradio/netradio/player/view/a;
.super Ljava/lang/Object;
.source "INetRadioPlayListView.java"


# virtual methods
.method public abstract notifyList()V
.end method

.method public abstract refreshState(II)V
.end method

.method public abstract updateData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateError()V
.end method

.method public abstract updateLoading()V
.end method
