.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6175
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7100()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 6168
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTollGateInfo(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;"
        }
    .end annotation

    .line 6243
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTollGateInfoValue(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;"
        }
    .end annotation

    .line 6313
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6230
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6231
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V

    return-object p0
.end method

.method public addTollGateInfoValue(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6301
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;I)V

    return-object p0
.end method

.method public clearTollGateInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6254
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6255
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V

    return-object p0
.end method

.method public getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 1

    .line 6207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    move-result-object p1

    return-object p1
.end method

.method public getTollGateInfoCount()I
    .locals 1

    .line 6197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getTollGateInfoCount()I

    move-result v0

    return v0
.end method

.method public getTollGateInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation

    .line 6187
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getTollGateInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTollGateInfoValue(I)I
    .locals 1

    .line 6278
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getTollGateInfoValue(I)I

    move-result p1

    return p1
.end method

.method public getTollGateInfoValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    .line 6268
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getTollGateInfoValueList()Ljava/util/List;

    move-result-object v0

    .line 6267
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6218
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V

    return-object p0
.end method

.method public setTollGateInfoValue(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6289
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6290
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->access$7600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;II)V

    return-object p0
.end method
