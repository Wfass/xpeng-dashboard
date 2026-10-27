.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$LocationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2185
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3200()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 2178
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEpsangle()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2320
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearIndex()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2366
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2367
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearIsMapPos()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2389
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$5000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearOdometer()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2343
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public clearVelocity()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2297
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public getEpsangle()F
    .locals 1

    .line 2306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getEpsangle()F

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 2352
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getIndex()I

    move-result v0

    return v0
.end method

.method public getIsMapPos()I
    .locals 1

    .line 2375
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getIsMapPos()I

    move-result v0

    return v0
.end method

.method public getOdometer()F
    .locals 1

    .line 2329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getOdometer()F

    move-result v0

    return v0
.end method

.method public getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;
    .locals 1

    .line 2244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v0

    return-object v0
.end method

.method public getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2199
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity()F
    .locals 1

    .line 2283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getVelocity()F

    move-result v0

    return v0
.end method

.method public hasPose()Z
    .locals 1

    .line 2238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->hasPose()Z

    move-result v0

    return v0
.end method

.method public hasPt()Z
    .locals 1

    .line 2193
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->hasPt()Z

    move-result v0

    return v0
.end method

.method public mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2267
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2268
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2222
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public setEpsangle(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2312
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V

    return-object p0
.end method

.method public setIndex(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2358
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2359
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;I)V

    return-object p0
.end method

.method public setIsMapPos(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2381
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2382
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;I)V

    return-object p0
.end method

.method public setOdometer(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2335
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V

    return-object p0
.end method

.method public setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2259
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2260
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V

    return-object p0
.end method

.method public setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2250
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2214
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-object p0
.end method

.method public setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2205
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2206
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$3300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public setVelocity(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2289
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->copyOnWrite()V

    .line 2290
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->access$4100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V

    return-object p0
.end method
