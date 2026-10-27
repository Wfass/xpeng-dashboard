.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;


# instance fields
.field public final synthetic OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAddedWithHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    invoke-static {p1}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->access$getDongleListeners(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IDongleListener;

    .line 2
    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IDongleListener;->onDongleAttach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceDeniedByHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceRemoved(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    invoke-static {p1}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->access$getDongleListeners(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IDongleListener;

    .line 2
    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IDongleListener;->onDongleDetach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDonglePermissionDenied()V
    .locals 0

    return-void
.end method

.method public onDonglePermissionGranted(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
