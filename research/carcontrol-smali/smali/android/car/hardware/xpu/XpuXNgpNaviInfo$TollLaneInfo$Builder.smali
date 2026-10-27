.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6525
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$7800()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 6518
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTollGateInfo(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;"
        }
    .end annotation

    .line 6593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTollGateInfoValue(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;"
        }
    .end annotation

    .line 6663
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6664
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6580
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6581
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V

    return-object p0
.end method

.method public addTollGateInfoValue(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6651
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;I)V

    return-object p0
.end method

.method public clearTollGateInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6604
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V

    return-object p0
.end method

.method public getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;
    .locals 1

    .line 6557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;

    move-result-object p1

    return-object p1
.end method

.method public getTollGateInfoCount()I
    .locals 1

    .line 6547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getTollGateInfoCount()I

    move-result v0

    return v0
.end method

.method public getTollGateInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;",
            ">;"
        }
    .end annotation

    .line 6537
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getTollGateInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTollGateInfoValue(I)I
    .locals 1

    .line 6628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getTollGateInfoValue(I)I

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

    .line 6617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    .line 6618
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getTollGateInfoValueList()Ljava/util/List;

    move-result-object v0

    .line 6617
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6568
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6569
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$7900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V

    return-object p0
.end method

.method public setTollGateInfoValue(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6639
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->copyOnWrite()V

    .line 6640
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->access$8300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;II)V

    return-object p0
.end method
