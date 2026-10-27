.class public interface abstract Lcom/xiaopeng/musicradio/netradio/main/view/a;
.super Ljava/lang/Object;
.source "INrBaseView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/d;


# virtual methods
.method public abstract getData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract updatePlayState(Z)V
.end method
