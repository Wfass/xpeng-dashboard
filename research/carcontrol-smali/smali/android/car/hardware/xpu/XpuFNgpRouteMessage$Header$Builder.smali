.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$HeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$HeaderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20841
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 20834
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20887
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public clearPpUpdateTime()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 21065
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 21066
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$36200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public clearPpVersion()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 21017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 21018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20935
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20936
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public clearRouteVersion()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20864
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getIdBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 21043
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 20983
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20994
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20913
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 20948
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getRouteVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20875
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20876
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20900
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20901
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPpUpdateTime(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 21053
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 21054
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$36100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V

    return-object p0
.end method

.method public setPpVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 21005
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 21006
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 21030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 21031
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$36000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20923
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20924
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V

    return-object p0
.end method

.method public setRouteVersion(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20958
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->copyOnWrite()V

    .line 20959
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->access$35600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V

    return-object p0
.end method
