.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1151
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1000()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V
    .locals 0

    .line 1144
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllParallelRoadList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;)",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;"
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1430
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1416
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1417
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-object p0
.end method

.method public addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1390
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1391
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1403
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1404
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-object p0
.end method

.method public addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1377
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1378
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public clearCount()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1308
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1309
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V

    return-object p0
.end method

.method public clearFlag()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1230
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V

    return-object p0
.end method

.method public clearHwFlag()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1273
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1274
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V

    return-object p0
.end method

.method public clearParallelRoadList()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1442
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V

    return-object p0
.end method

.method public clearStatus()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1185
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1186
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 1286
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getCount()I

    move-result v0

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 1201
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getFlag()I

    move-result v0

    return v0
.end method

.method public getHwFlag()I
    .locals 1

    .line 1245
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getHwFlag()I

    move-result v0

    return v0
.end method

.method public getParallelRoadList(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1

    .line 1341
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getParallelRoadList(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    move-result-object p1

    return-object p1
.end method

.method public getParallelRoadListCount()I
    .locals 1

    .line 1332
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getParallelRoadListCount()I

    move-result v0

    return v0
.end method

.method public getParallelRoadListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    .line 1322
    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getParallelRoadListList()Ljava/util/List;

    move-result-object v0

    .line 1321
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1163
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getStatus()I

    move-result v0

    return v0
.end method

.method public removeParallelRoadList(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1453
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1454
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V

    return-object p0
.end method

.method public setCount(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1296
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V

    return-object p0
.end method

.method public setFlag(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1214
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1215
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V

    return-object p0
.end method

.method public setHwFlag(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1258
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1259
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V

    return-object p0
.end method

.method public setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1366
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$2000(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-object p0
.end method

.method public setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1900(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public setStatus(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1173
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->copyOnWrite()V

    .line 1174
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->access$1100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V

    return-object p0
.end method
