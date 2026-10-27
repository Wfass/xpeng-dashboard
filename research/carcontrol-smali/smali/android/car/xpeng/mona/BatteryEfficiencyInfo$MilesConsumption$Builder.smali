.class public final Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "BatteryEfficiencyInfo.java"

# interfaces
.implements Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;",
        ">;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 356
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$000()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V

    return-object p0
.end method

.method public clearConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 490
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$1200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V

    return-object p0
.end method

.method public clearConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V

    return-object p0
.end method

.method public clearMilesCalculated()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 513
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$1400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V

    return-object p0
.end method

.method public getConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    return-object v0
.end method

.method public getConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 460
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    return-object v0
.end method

.method public getConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    return-object v0
.end method

.method public getMilesCalculated()I
    .locals 1

    .line 499
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getMilesCalculated()I

    move-result v0

    return v0
.end method

.method public hasConsumptionKm10()Z
    .locals 1

    .line 364
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->hasConsumptionKm10()Z

    move-result v0

    return v0
.end method

.method public hasConsumptionKm100()Z
    .locals 1

    .line 454
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->hasConsumptionKm100()Z

    move-result v0

    return v0
.end method

.method public hasConsumptionKm50()Z
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->hasConsumptionKm50()Z

    move-result v0

    return v0
.end method

.method public mergeConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public mergeConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 483
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 484
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$1100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public mergeConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 385
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-object p0
.end method

.method public setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$1000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-object p0
.end method

.method public setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$600(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-object p0
.end method

.method public setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 421
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$500(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public setMilesCalculated(I)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 505
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->access$1300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;I)V

    return-object p0
.end method
