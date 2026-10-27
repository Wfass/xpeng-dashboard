.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23247
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$39600()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 23240
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCharacter()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23491
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public clearEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23444
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23445
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$39800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public clearIsFavorSlot()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23539
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23540
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$41200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public clearPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23375
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 23457
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getCharacter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 23468
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getCharacterBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 23398
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23259
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 23270
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getIdBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFavorSlot()Z
    .locals 1

    .line 23517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getIsFavorSlot()Z

    move-result v0

    return v0
.end method

.method public getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;
    .locals 1

    .line 23329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v0

    return-object v0
.end method

.method public hasEntryLine()Z
    .locals 1

    .line 23388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->hasEntryLine()Z

    move-result v0

    return v0
.end method

.method public hasPolygon()Z
    .locals 1

    .line 23319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->hasPolygon()Z

    move-result v0

    return v0
.end method

.method public mergeEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23433
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23434
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-object p0
.end method

.method public mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23364
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23365
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-object p0
.end method

.method public setCharacter(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23479
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCharacterBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$41000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23421
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V

    return-object p0
.end method

.method public setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23408
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23409
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23281
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$39700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23306
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$39900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsFavorSlot(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23527
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$41100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Z)V

    return-object p0
.end method

.method public setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V

    return-object p0
.end method

.method public setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23339
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->copyOnWrite()V

    .line 23340
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->access$40000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-object p0
.end method
