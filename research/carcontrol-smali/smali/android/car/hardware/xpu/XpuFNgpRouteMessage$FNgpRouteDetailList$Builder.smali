.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10781
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$15700()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 10774
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFngpRouteDefailList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;"
        }
    .end annotation

    .line 10936
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFngpRouteDefailList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10923
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10924
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)V

    return-object p0
.end method

.method public addFngpRouteDefailList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10897
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10898
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method

.method public addFngpRouteDefailList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10910
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10911
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)V

    return-object p0
.end method

.method public addFngpRouteDefailList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10884
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10885
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method

.method public clearFlag()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10815
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10816
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$15900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;)V

    return-object p0
.end method

.method public clearFngpRouteDefailList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;)V

    return-object p0
.end method

.method public getFlag()I
    .locals 1

    .line 10793
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->getFlag()I

    move-result v0

    return v0
.end method

.method public getFngpRouteDefailList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1

    .line 10848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->getFngpRouteDefailList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    move-result-object p1

    return-object p1
.end method

.method public getFngpRouteDefailListCount()I
    .locals 1

    .line 10839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->getFngpRouteDefailListCount()I

    move-result v0

    return v0
.end method

.method public getFngpRouteDefailListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
            ">;"
        }
    .end annotation

    .line 10828
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    .line 10829
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->getFngpRouteDefailListList()Ljava/util/List;

    move-result-object v0

    .line 10828
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFngpRouteDefailList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10960
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10961
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;I)V

    return-object p0
.end method

.method public setFlag(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10803
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10804
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$15800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;I)V

    return-object p0
.end method

.method public setFngpRouteDefailList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10872
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10873
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;)V

    return-object p0
.end method

.method public setFngpRouteDefailList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;
    .locals 1

    .line 10859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->copyOnWrite()V

    .line 10860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->access$16000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method
