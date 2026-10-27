.class public final Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "ZgApMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 224
    invoke-static {}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$000()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/ZgApMsg$1;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearETHXPUCDUAIDrivePkOutSelDir()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 246
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 247
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$200(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-object p0
.end method

.method public clearETHXPUCDUAppointmentEndTime()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 292
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 293
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$600(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-object p0
.end method

.method public clearETHXPUCDURemotePkOutTips()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 270
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$400(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-object p0
.end method

.method public getETHXPUCDUAIDrivePkOutSelDir()I
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getETHXPUCDUAIDrivePkOutSelDir()I

    move-result v0

    return v0
.end method

.method public getETHXPUCDUAppointmentEndTime()I
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getETHXPUCDUAppointmentEndTime()I

    move-result v0

    return v0
.end method

.method public getETHXPUCDURemotePkOutTips()I
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getETHXPUCDURemotePkOutTips()I

    move-result v0

    return v0
.end method

.method public setETHXPUCDUAIDrivePkOutSelDir(I)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$100(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V

    return-object p0
.end method

.method public setETHXPUCDUAppointmentEndTime(I)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 284
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 285
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$500(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V

    return-object p0
.end method

.method public setETHXPUCDURemotePkOutTips(I)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->access$300(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V

    return-object p0
.end method
