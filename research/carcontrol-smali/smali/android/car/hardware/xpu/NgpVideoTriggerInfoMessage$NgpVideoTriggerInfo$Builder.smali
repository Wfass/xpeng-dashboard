.class public final Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "NgpVideoTriggerInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 660
    invoke-static {}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$000()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$1;)V
    .locals 0

    .line 653
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSceneDuration()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$700(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V

    return-object p0
.end method

.method public clearScenePriority()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$900(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V

    return-object p0
.end method

.method public clearTrajectoryId()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 694
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$200(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V

    return-object p0
.end method

.method public clearTriggerStatus()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 751
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$500(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V

    return-object p0
.end method

.method public getSceneDuration()I
    .locals 1

    .line 764
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getSceneDuration()I

    move-result v0

    return v0
.end method

.method public getScenePriority()I
    .locals 1

    .line 799
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getScenePriority()I

    move-result v0

    return v0
.end method

.method public getTrajectoryId()I
    .locals 1

    .line 672
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getTrajectoryId()I

    move-result v0

    return v0
.end method

.method public getTriggerStatus()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 1

    .line 729
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getTriggerStatus()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerStatusValue()I
    .locals 1

    .line 707
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getTriggerStatusValue()I

    move-result v0

    return v0
.end method

.method public setSceneDuration(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 774
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$600(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V

    return-object p0
.end method

.method public setScenePriority(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 809
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 810
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$800(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V

    return-object p0
.end method

.method public setTrajectoryId(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$100(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V

    return-object p0
.end method

.method public setTriggerStatus(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 739
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 740
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$400(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;)V

    return-object p0
.end method

.method public setTriggerStatusValue(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->access$300(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V

    return-object p0
.end method
