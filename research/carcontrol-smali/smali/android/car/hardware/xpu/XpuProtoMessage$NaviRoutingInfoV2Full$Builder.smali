.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2FullOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2FullOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23877
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55200()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 23870
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;"
        }
    .end annotation

    .line 23957
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23958
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23930
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23931
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23939
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23940
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23921
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23922
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearNaviRoutingInfoV2Full()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23966
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public clearRequestCode()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 24034
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 24035
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public clearRequestSource()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 24011
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 24012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public clearTimestamp()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 24069
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 24070
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1

    .line 23897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullCount()I
    .locals 1

    .line 23892
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2FullCount()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2FullList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 23885
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    .line 23886
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2FullList()Ljava/util/List;

    move-result-object v0

    .line 23885
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 24020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getRequestCode()I

    move-result v0

    return v0
.end method

.method public getRequestSource()I
    .locals 1

    .line 23987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getRequestSource()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 24047
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23973
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23913
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23904
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23905
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$55300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public setRequestCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 24026
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 24027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method

.method public setRequestSource(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23998
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 23999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 24057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 24058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->access$56600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;J)V

    return-object p0
.end method
