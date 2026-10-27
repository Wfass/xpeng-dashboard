.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2FullOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2FullOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22221
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$51900()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 22214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;"
        }
    .end annotation

    .line 22301
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22302
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22292
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22283
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22284
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22265
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22266
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearNaviRoutingInfoV2Full()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22309
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public clearRequestCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22378
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$53200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public clearRequestSource()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$53000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V

    return-object p0
.end method

.method public getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1

    .line 22241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullCount()I
    .locals 1

    .line 22236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2FullCount()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2FullList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 22229
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    .line 22230
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getNaviRoutingInfoV2FullList()Ljava/util/List;

    move-result-object v0

    .line 22229
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 22364
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getRequestCode()I

    move-result v0

    return v0
.end method

.method public getRequestSource()I
    .locals 1

    .line 22331
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getRequestSource()I

    move-result v0

    return v0
.end method

.method public removeNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22317
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22257
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22248
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22249
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public setRequestCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22370
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22371
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$53100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method

.method public setRequestSource(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22342
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->copyOnWrite()V

    .line 22343
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->access$52900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V

    return-object p0
.end method
