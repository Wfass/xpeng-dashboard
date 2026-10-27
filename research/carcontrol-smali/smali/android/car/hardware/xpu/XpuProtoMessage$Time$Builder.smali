.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Time;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6453
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11000()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 6446
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDay()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6521
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6522
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11600(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public clearHour()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6567
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6568
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$12000(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public clearMin()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6590
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6591
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$12200(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public clearMonth()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6498
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6499
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11400(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public clearWeek()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6544
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6545
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11800(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public clearYear()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6475
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6476
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11200(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public getDay()I
    .locals 1

    .line 6507
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getDay()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 6553
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getHour()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 6576
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getMin()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 6484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getMonth()I

    move-result v0

    return v0
.end method

.method public getWeek()I
    .locals 1

    .line 6530
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getWeek()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 6461
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getYear()I

    move-result v0

    return v0
.end method

.method public setDay(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6513
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11500(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method

.method public setHour(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6559
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6560
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11900(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method

.method public setMin(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6582
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6583
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$12100(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method

.method public setMonth(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6490
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6491
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11300(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method

.method public setWeek(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6536
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6537
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11700(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method

.method public setYear(I)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6467
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->copyOnWrite()V

    .line 6468
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->access$11100(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V

    return-object p0
.end method
