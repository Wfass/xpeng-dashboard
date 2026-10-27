.class public final Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1926
    invoke-static {}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$3900()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;)V
    .locals 0

    .line 1919
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDetailInfo(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;"
        }
    .end annotation

    .line 2098
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2099
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2089
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2090
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-object p0
.end method

.method public addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2071
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2072
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2081
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-object p0
.end method

.method public addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2062
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2063
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearDetailInfo()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2106
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2107
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V

    return-object p0
.end method

.method public clearPathId()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1949
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V

    return-object p0
.end method

.method public clearTotalRemainDist()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1994
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1995
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V

    return-object p0
.end method

.method public clearTotalTimeOfSecond()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1971
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1972
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V

    return-object p0
.end method

.method public clearUnobstructed()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2018
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V

    return-object p0
.end method

.method public getDetailInfo(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1

    .line 2038
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getDetailInfo(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDetailInfoCount()I
    .locals 1

    .line 2033
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getDetailInfoCount()I

    move-result v0

    return v0
.end method

.method public getDetailInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation

    .line 2026
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    .line 2027
    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getDetailInfoList()Ljava/util/List;

    move-result-object v0

    .line 2026
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPathId()J
    .locals 2

    .line 1934
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getPathId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRemainDist()J
    .locals 2

    .line 1980
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getTotalRemainDist()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTimeOfSecond()J
    .locals 2

    .line 1957
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getTotalTimeOfSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnobstructed()Z
    .locals 1

    .line 2003
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getUnobstructed()Z

    move-result v0

    return v0
.end method

.method public removeDetailInfo(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2114
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2115
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$5600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;I)V

    return-object p0
.end method

.method public setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2054
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2055
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-object p0
.end method

.method public setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2046
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public setPathId(J)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1941
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V

    return-object p0
.end method

.method public setTotalRemainDist(J)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1987
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V

    return-object p0
.end method

.method public setTotalTimeOfSecond(J)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1963
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 1964
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V

    return-object p0
.end method

.method public setUnobstructed(Z)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 2009
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->copyOnWrite()V

    .line 2010
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->access$4600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Z)V

    return-object p0
.end method
