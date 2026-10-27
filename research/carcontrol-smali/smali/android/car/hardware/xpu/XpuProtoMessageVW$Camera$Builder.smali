.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15068
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$33600()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 15061
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDistance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public clearPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15171
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public clearSpeed()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15241
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15102
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$33800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public getDistance()J
    .locals 2

    .line 15184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getDistance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 15125
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 15219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 15080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getType()I

    move-result v0

    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 15115
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->hasPosition()Z

    move-result v0

    return v0
.end method

.method public mergePosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15160
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setDistance(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15194
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15195
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;J)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15148
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15135
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15136
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$33900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setSpeed(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$34500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;I)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15090
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->copyOnWrite()V

    .line 15091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->access$33700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;I)V

    return-object p0
.end method
