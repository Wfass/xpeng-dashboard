.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17617
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29300()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 17610
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEndOffset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17755
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17756
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$30100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public clearHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17686
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public clearInternalRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17812
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17813
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$30400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public clearStartOffset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17720
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17721
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public getEndOffset()J
    .locals 2

    .line 17733
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getEndOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 17639
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
    .locals 1

    .line 17790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getInternalRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRouteTypeValue()I
    .locals 1

    .line 17768
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getInternalRouteTypeValue()I

    move-result v0

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 17698
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getStartOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 17629
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->hasHeader()Z

    move-result v0

    return v0
.end method

.method public mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17674
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public setEndOffset(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17743
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17744
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$30000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;J)V

    return-object p0
.end method

.method public setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17662
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V

    return-object p0
.end method

.method public setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17650
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public setInternalRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17800
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17801
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$30300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-object p0
.end method

.method public setInternalRouteTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17778
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17779
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$30200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;I)V

    return-object p0
.end method

.method public setStartOffset(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17708
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->copyOnWrite()V

    .line 17709
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->access$29800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;J)V

    return-object p0
.end method
