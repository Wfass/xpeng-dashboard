.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14601
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32300()Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 14594
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDistance()Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14691
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14692
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$33100(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public clearPosition()Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14668
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14669
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32900(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public clearSpeed()Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$33300(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32500(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public getDistance()J
    .locals 2

    .line 14677
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getDistance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 14638
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 14700
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 14609
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getType()I

    move-result v0

    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 14632
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->hasPosition()Z

    move-result v0

    return v0
.end method

.method public mergePosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14661
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14662
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32800(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setDistance(J)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14683
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14684
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$33000(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;J)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14653
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14654
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32700(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14644
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14645
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32600(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setSpeed(I)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14706
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$33200(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;I)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14615
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->copyOnWrite()V

    .line 14616
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->access$32400(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;I)V

    return-object p0
.end method
