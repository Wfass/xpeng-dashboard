.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14439
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$34600()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 14432
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIndex()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14561
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14562
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35600(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V

    return-object p0
.end method

.method public clearMsgData()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14584
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14585
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35800(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V

    return-object p0
.end method

.method public clearMsgType()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35200(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V

    return-object p0
.end method

.method public clearSataus()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14538
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14539
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35400(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V

    return-object p0
.end method

.method public clearVer()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14469
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14470
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$34800(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V

    return-object p0
.end method

.method public getIndex()I
    .locals 1

    .line 14547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getIndex()I

    move-result v0

    return v0
.end method

.method public getMsgData()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 14570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getMsgData()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsgType()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 1

    .line 14501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getMsgType()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTypeValue()I
    .locals 1

    .line 14487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getMsgTypeValue()I

    move-result v0

    return v0
.end method

.method public getSataus()I
    .locals 1

    .line 14524
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getSataus()I

    move-result v0

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 14447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 14454
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getVerBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14553
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14554
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35500(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V

    return-object p0
.end method

.method public setMsgData(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14576
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14577
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35700(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMsgType(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35100(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;)V

    return-object p0
.end method

.method public setMsgTypeValue(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14493
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35000(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V

    return-object p0
.end method

.method public setSataus(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14530
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14531
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$35300(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V

    return-object p0
.end method

.method public setVer(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14461
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$34700(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVerBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14478
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->copyOnWrite()V

    .line 14479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->access$34900(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method
