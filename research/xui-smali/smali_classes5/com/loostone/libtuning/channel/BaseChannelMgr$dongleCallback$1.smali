.class public final Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "com/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "",
        "onDonglePermissionGranted",
        "(Landroid/hardware/usb/UsbDevice;)V",
        "onDonglePermissionDenied",
        "()V",
        "LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;",
        "cachedDevice",
        "onDeviceAddedWithHid",
        "(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V",
        "onDeviceDeniedByHid",
        "onDeviceRemoved",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

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
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$setVerifyStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

    .line 3
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$sendDongleInfo(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

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
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$setVerifyStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

    .line 3
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$sendDongleInfo(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

    return-void
.end method

.method public onDonglePermissionDenied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$setVerifyStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

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
