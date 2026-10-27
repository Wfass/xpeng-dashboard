.class public interface abstract Lcom/loostone/libtuning/inf/extern/IBaseKeyService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J\u0011\u0010\r\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0014H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0014H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/loostone/libtuning/inf/extern/IBaseKeyService;",
        "",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "",
        "setDevice",
        "(Landroid/hardware/usb/UsbDevice;)V",
        "start",
        "()V",
        "resume",
        "pause",
        "stop",
        "Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "getMicControl",
        "()Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "listener",
        "registerKeyListener",
        "(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V",
        "unRegisterKeyListener",
        "Lcom/loostone/libtuning/inf/extern/IMicInfoListener;",
        "registerMicInfoListener",
        "(Lcom/loostone/libtuning/inf/extern/IMicInfoListener;)V",
        "unRegisterMicInfoListener",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getMicControl()Lcom/loostone/libtuning/inf/extern/IMicControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract registerKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V
    .param p1    # Lcom/loostone/libtuning/inf/extern/IKeyListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract registerMicInfoListener(Lcom/loostone/libtuning/inf/extern/IMicInfoListener;)V
    .param p1    # Lcom/loostone/libtuning/inf/extern/IMicInfoListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract resume()V
.end method

.method public abstract setDevice(Landroid/hardware/usb/UsbDevice;)V
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unRegisterKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V
    .param p1    # Lcom/loostone/libtuning/inf/extern/IKeyListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unRegisterMicInfoListener(Lcom/loostone/libtuning/inf/extern/IMicInfoListener;)V
    .param p1    # Lcom/loostone/libtuning/inf/extern/IMicInfoListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
