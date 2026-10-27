.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12979
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$19800()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 12972
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;"
        }
    .end annotation

    .line 13099
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13060
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13061
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13073
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13074
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13047
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-object p0
.end method

.method public clearInfos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13111
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13112
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V

    return-object p0
.end method

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1

    .line 13011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    move-result-object p1

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 13002
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getInfosCount()I

    move-result v0

    return v0
.end method

.method public getInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;"
        }
    .end annotation

    .line 12991
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    .line 12992
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getInfosList()Ljava/util/List;

    move-result-object v0

    .line 12991
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13123
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13124
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;I)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13035
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$20000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 13022
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->copyOnWrite()V

    .line 13023
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->access$19900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-object p0
.end method
