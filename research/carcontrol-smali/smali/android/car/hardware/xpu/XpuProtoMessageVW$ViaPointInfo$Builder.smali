.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15649
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$34800()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 15642
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDirection()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15761
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15762
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35800(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method

.method public clearProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15738
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15739
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35600(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method

.method public clearShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15693
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15694
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35200(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method

.method public getDirection()I
    .locals 1

    .line 15747
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getDirection()I

    move-result v0

    return v0
.end method

.method public getProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 15708
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 15663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public hasProjective()Z
    .locals 1

    .line 15702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->hasProjective()Z

    move-result v0

    return v0
.end method

.method public hasShow()Z
    .locals 1

    .line 15657
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->hasShow()Z

    move-result v0

    return v0
.end method

.method public mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15731
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15732
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35500(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public mergeShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15686
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35100(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setDirection(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15753
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15754
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35700(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;I)V

    return-object p0
.end method

.method public setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15723
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15678
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15679
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$35000(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15669
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15670
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->access$34900(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method
