.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7065
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$14900()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 7058
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearColor()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7294
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7295
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7087
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7088
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public clearPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7214
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public clearPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7259
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7260
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public clearSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7132
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7133
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7169
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7170
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 7272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getColor()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 7073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getId()I

    move-result v0

    return v0
.end method

.method public getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;
    .locals 1

    .line 7184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v0

    return-object v0
.end method

.method public getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 7229
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 7102
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 1

    .line 7155
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 7141
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public hasPose()Z
    .locals 1

    .line 7178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->hasPose()Z

    move-result v0

    return v0
.end method

.method public hasPt()Z
    .locals 1

    .line 7223
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->hasPt()Z

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 7096
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->hasSize()Z

    move-result v0

    return v0
.end method

.method public mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7207
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7125
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7126
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public setColor(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7282
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V

    return-object p0
.end method

.method public setId(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7079
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V

    return-object p0
.end method

.method public setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7199
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7200
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V

    return-object p0
.end method

.method public setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7190
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7244
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7245
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-object p0
.end method

.method public setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7235
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$16300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7117
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V

    return-object p0
.end method

.method public setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7108
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7109
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7161
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;)V

    return-object p0
.end method

.method public setTypeValue(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7147
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->copyOnWrite()V

    .line 7148
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->access$15600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V

    return-object p0
.end method
