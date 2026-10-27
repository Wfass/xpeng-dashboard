.class public final LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;


# instance fields
.field public final OooO00o:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO00o:Landroid/content/Context;

    .line 15
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0OO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0OO;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 83
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooOO0;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooOO0;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 96
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 135
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0O0;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0O0;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 5
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDongleDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0o/OooO00o;

    .line 52
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 53
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v2, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;

    invoke-direct {v2}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;-><init>()V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setVid(Ljava/lang/String;)V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setPid(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setVendor(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setDeviceName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setSerial(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v1}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setPackageName(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getBrand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setBrand(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/loostone/libserver/version1/entity/MachineInfoConfig;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/loostone/libserver/version1/entity/request/statistical/RequestStatisticalMic;->setModel(Ljava/lang/String;)V

    .line 97
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->getAddress(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/loostone/libserver/version1/entity/request/BaseRequest;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;)V

    return-void
.end method

.method public OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V
    .locals 3
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;",
            "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cachedDongleDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0o0/OooO00o;

    .line 2
    new-instance v1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;

    invoke-direct {v1, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p2, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;

    invoke-direct {p2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;-><init>()V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setHidResult(I)V

    .line 35
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setHidSn(Ljava/lang/String;)V

    .line 37
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setHidVersion(Ljava/lang/String;)V

    .line 39
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oo:Ljava/lang/String;

    .line 40
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setSerial(Ljava/lang/String;)V

    .line 41
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0Oo:Ljava/lang/String;

    .line 42
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setVid(Ljava/lang/String;)V

    .line 43
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0o0:Ljava/lang/String;

    .line 44
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setPid(Ljava/lang/String;)V

    .line 45
    iget-object v2, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0o:Ljava/lang/String;

    .line 46
    invoke-virtual {p2, v2}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setVendor(Ljava/lang/String;)V

    .line 47
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 48
    invoke-virtual {p2, p1}, Lcom/loostone/libserver/version1/entity/request/config/RequestMicLimitInfo;->setDeviceName(Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->getAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/loostone/libserver/version1/entity/request/BaseRequest;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;)V

    return-void
.end method
