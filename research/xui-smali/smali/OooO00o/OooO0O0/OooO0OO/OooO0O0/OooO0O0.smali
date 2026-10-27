.class public final LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;


# instance fields
.field public final OooO00o:Landroid/hardware/usb/UsbInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbInterface;)V
    .locals 1
    .param p1    # Landroid/hardware/usb/UsbInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usbInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO00o:Landroid/hardware/usb/UsbInterface;

    .line 8
    new-instance p1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    .line 11
    :try_start_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO00o:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 12
    :goto_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method

.method public OooO00o(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO00o()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO00o:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    .line 8
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO00o()V

    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(BBB)[B
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    sget-object v0, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    iget-object v2, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 20
    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loostone/libcore/jni/JniCall;->getBytes(Landroid/hardware/usb/UsbDeviceConnection;IBBB)[B

    move-result-object p1

    return-object p1
.end method
