.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6192
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$10800()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 6185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDay()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6260
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public clearHour()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6306
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public clearMin()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6329
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$12000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public clearMonth()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6237
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public clearWeek()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6283
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6284
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public clearYear()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6214
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public getDay()I
    .locals 1

    .line 6246
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getDay()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 6292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getHour()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 6315
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getMin()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 6223
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getMonth()I

    move-result v0

    return v0
.end method

.method public getWeek()I
    .locals 1

    .line 6269
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getWeek()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 6200
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getYear()I

    move-result v0

    return v0
.end method

.method public setDay(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method

.method public setHour(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6298
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6299
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method

.method public setMin(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6321
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method

.method public setMonth(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method

.method public setWeek(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6275
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6276
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$11500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method

.method public setYear(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->copyOnWrite()V

    .line 6207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->access$10900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V

    return-object p0
.end method
