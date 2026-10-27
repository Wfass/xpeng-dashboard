.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15755
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 15748
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15777
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->copyOnWrite()V

    .line 15778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-object p0
.end method

.method public clearMessage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15808
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->copyOnWrite()V

    .line 15809
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    .line 15763
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 15786
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 15793
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getMessageBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15769
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->copyOnWrite()V

    .line 15770
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15800
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->copyOnWrite()V

    .line 15801
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15817
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->copyOnWrite()V

    .line 15818
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->access$26900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method
