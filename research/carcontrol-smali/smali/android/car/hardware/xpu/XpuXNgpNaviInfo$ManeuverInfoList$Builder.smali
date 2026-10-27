.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5621
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6100()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 5614
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;"
        }
    .end annotation

    .line 5741
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5729
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5702
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5703
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5715
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5716
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5689
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5690
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearInfos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5753
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5754
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V

    return-object p0
.end method

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 5653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 5644
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getInfosCount()I

    move-result v0

    return v0
.end method

.method public getInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 5633
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    .line 5634
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getInfosList()Ljava/util/List;

    move-result-object v0

    .line 5633
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5765
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$7000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;I)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5677
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5678
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5664
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->copyOnWrite()V

    .line 5665
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->access$6200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method
