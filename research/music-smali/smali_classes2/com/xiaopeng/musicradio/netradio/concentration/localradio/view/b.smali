.class public interface abstract Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;
.super Ljava/lang/Object;
.source "INrLocalRadioView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract getData(Ljava/util/ArrayList;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract refreshPlayInfo(Z)V
.end method

.method public abstract refreshView()V
.end method

.method public abstract updatePlayState(Z)V
.end method
