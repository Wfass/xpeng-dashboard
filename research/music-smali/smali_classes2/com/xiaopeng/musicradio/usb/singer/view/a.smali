.class public interface abstract Lcom/xiaopeng/musicradio/usb/singer/view/a;
.super Ljava/lang/Object;
.source "ISingerMainView.java"


# virtual methods
.method public abstract notifySpeechChange()V
.end method

.method public abstract showData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showNoDataView()V
.end method

.method public abstract updateLogo()V
.end method

.method public abstract updatePlayState()V
.end method
