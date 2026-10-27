.class public Lorg/opencv/dnn/Net;
.super Ljava/lang/Object;
.source "Net.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/opencv/dnn/Net;->Net_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    .line 46
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    return-void
.end method

.method private static native Net_0()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/dnn/Net;
    .locals 1
    .param p0, "addr"    # J

    .line 38
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-direct {v0, p0, p1}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method private static native connect_0(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native delete(J)V
.end method

.method private static native dumpToFile_0(JLjava/lang/String;)V
.end method

.method private static native dump_0(J)Ljava/lang/String;
.end method

.method private static native empty_0(J)Z
.end method

.method private static native enableFusion_0(JZ)V
.end method

.method private static native forward_0(JLjava/lang/String;)J
.end method

.method private static native forward_1(J)J
.end method

.method private static native forward_2(JJLjava/lang/String;)V
.end method

.method private static native forward_3(JJ)V
.end method

.method private static native forward_4(JJLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getFLOPS_0(JJ)J
.end method

.method private static native getFLOPS_1(JIJ)J
.end method

.method private static native getFLOPS_2(JILjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native getFLOPS_3(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native getLayerId_0(JLjava/lang/String;)I
.end method

.method private static native getLayerNames_0(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native getLayerTypes_0(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getLayer_0(JJ)J
.end method

.method private static native getLayersCount_0(JLjava/lang/String;)I
.end method

.method private static native getMemoryConsumption_0(JJ[D[D)V
.end method

.method private static native getMemoryConsumption_1(JIJ[D[D)V
.end method

.method private static native getMemoryConsumption_2(JILjava/util/List;[D[D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[D[D)V"
        }
    .end annotation
.end method

.method private static native getParam_0(JJI)J
.end method

.method private static native getParam_1(JJ)J
.end method

.method private static native getPerfProfile_0(JJ)J
.end method

.method private static native getUnconnectedOutLayersNames_0(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native getUnconnectedOutLayers_0(J)J
.end method

.method public static readFromModelOptimizer(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "bin"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Net;->readFromModelOptimizer_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readFromModelOptimizer(Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "bufferModelConfig"    # Lorg/opencv/core/MatOfByte;
    .param p1, "bufferWeights"    # Lorg/opencv/core/MatOfByte;

    .line 134
    move-object v0, p0

    .line 135
    .local v0, "bufferModelConfig_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 136
    .local v1, "bufferWeights_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/dnn/Net;->readFromModelOptimizer_1(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method private static native readFromModelOptimizer_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readFromModelOptimizer_1(JJ)J
.end method

.method private static native setHalideScheduler_0(JLjava/lang/String;)V
.end method

.method private static native setInputShape_0(JLjava/lang/String;J)V
.end method

.method private static native setInput_0(JJLjava/lang/String;DDDDD)V
.end method

.method private static native setInput_1(JJLjava/lang/String;D)V
.end method

.method private static native setInput_2(JJLjava/lang/String;)V
.end method

.method private static native setInput_3(JJ)V
.end method

.method private static native setInputsNames_0(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native setParam_0(JJIJ)V
.end method

.method private static native setPreferableBackend_0(JI)V
.end method

.method private static native setPreferableTarget_0(JI)V
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "outPin"    # Ljava/lang/String;
    .param p2, "inpPin"    # Ljava/lang/String;

    .line 323
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/dnn/Net;->connect_0(JLjava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .line 164
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->dump_0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpToFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 337
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->dumpToFile_0(JLjava/lang/String;)V

    .line 338
    return-void
.end method

.method public empty()Z
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->empty_0(J)Z

    move-result v0

    return v0
.end method

.method public enableFusion(Z)V
    .locals 2
    .param p1, "fusion"    # Z

    .line 350
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->enableFusion_0(JZ)V

    .line 351
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 652
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->delete(J)V

    .line 653
    return-void
.end method

.method public forward()Lorg/opencv/core/Mat;
    .locals 3

    .line 76
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Net;->forward_1(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public forward(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3
    .param p1, "outputName"    # Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v1, v2, p1}, Lorg/opencv/dnn/Net;->forward_0(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public forward(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 378
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/dnn/Net;->forward_3(JJ)V

    .line 379
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 380
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 381
    return-void
.end method

.method public forward(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 365
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 366
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4, p2}, Lorg/opencv/dnn/Net;->forward_2(JJLjava/lang/String;)V

    .line 367
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 368
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 369
    return-void
.end method

.method public forward(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "outBlobNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 395
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4, p2}, Lorg/opencv/dnn/Net;->forward_4(JJLjava/util/List;)V

    .line 396
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 397
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 398
    return-void
.end method

.method public getFLOPS(ILjava/util/List;)J
    .locals 2
    .param p1, "layerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation

    .line 234
    .local p2, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/dnn/Net;->getFLOPS_2(JILjava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFLOPS(ILorg/opencv/core/MatOfInt;)J
    .locals 5
    .param p1, "layerId"    # I
    .param p2, "netInputShape"    # Lorg/opencv/core/MatOfInt;

    .line 224
    move-object v0, p2

    .line 225
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1, v3, v4}, Lorg/opencv/dnn/Net;->getFLOPS_1(JIJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public getFLOPS(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation

    .line 248
    .local p1, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->getFLOPS_3(JLjava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFLOPS(Lorg/opencv/core/MatOfInt;)J
    .locals 5
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;

    .line 214
    move-object v0, p1

    .line 215
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/dnn/Net;->getFLOPS_0(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLayer(Lorg/opencv/dnn/DictValue;)Lorg/opencv/dnn/Layer;
    .locals 4
    .param p1, "layerId"    # Lorg/opencv/dnn/DictValue;

    .line 150
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/dnn/Net;->getLayer_0(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/dnn/Layer;->__fromPtr__(J)Lorg/opencv/dnn/Layer;

    move-result-object v0

    return-object v0
.end method

.method public getLayerId(Ljava/lang/String;)I
    .locals 2
    .param p1, "layer"    # Ljava/lang/String;

    .line 191
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->getLayerId_0(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayerNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->getLayerNames_0(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLayerTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p1, "layersTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->getLayerTypes_0(JLjava/util/List;)V

    .line 418
    return-void
.end method

.method public getLayersCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "layerType"    # Ljava/lang/String;

    .line 205
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->getLayersCount_0(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMemoryConsumption(ILjava/util/List;[J[J)V
    .locals 8
    .param p1, "layerId"    # I
    .param p3, "weights"    # [J
    .param p4, "blobs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[J[J)V"
        }
    .end annotation

    .line 468
    .local p2, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    const/4 v0, 0x1

    new-array v7, v0, [D

    .line 469
    .local v7, "weights_out":[D
    new-array v0, v0, [D

    .line 470
    .local v0, "blobs_out":[D
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    move v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/opencv/dnn/Net;->getMemoryConsumption_2(JILjava/util/List;[D[D)V

    .line 471
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    aget-wide v2, v7, v1

    double-to-long v2, v2

    aput-wide v2, p3, v1

    .line 472
    :cond_0
    if-eqz p4, :cond_1

    aget-wide v2, v0, v1

    double-to-long v2, v2

    aput-wide v2, p4, v1

    .line 473
    :cond_1
    return-void
.end method

.method public getMemoryConsumption(ILorg/opencv/core/MatOfInt;[J[J)V
    .locals 10
    .param p1, "layerId"    # I
    .param p2, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p3, "weights"    # [J
    .param p4, "blobs"    # [J

    .line 454
    move-object v0, p2

    .line 455
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    const/4 v1, 0x1

    new-array v9, v1, [D

    .line 456
    .local v9, "weights_out":[D
    new-array v1, v1, [D

    .line 457
    .local v1, "blobs_out":[D
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p1

    move-object v7, v9

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Lorg/opencv/dnn/Net;->getMemoryConsumption_1(JIJ[D[D)V

    .line 458
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    aget-wide v3, v9, v2

    double-to-long v3, v3

    aput-wide v3, p3, v2

    .line 459
    :cond_0
    if-eqz p4, :cond_1

    aget-wide v3, v1, v2

    double-to-long v3, v3

    aput-wide v3, p4, v2

    .line 460
    :cond_1
    return-void
.end method

.method public getMemoryConsumption(Lorg/opencv/core/MatOfInt;[J[J)V
    .locals 9
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p2, "weights"    # [J
    .param p3, "blobs"    # [J

    .line 440
    move-object v0, p1

    .line 441
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    const/4 v1, 0x1

    new-array v8, v1, [D

    .line 442
    .local v8, "weights_out":[D
    new-array v1, v1, [D

    .line 443
    .local v1, "blobs_out":[D
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v6, v8

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lorg/opencv/dnn/Net;->getMemoryConsumption_0(JJ[D[D)V

    .line 444
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    aget-wide v3, v8, v2

    double-to-long v3, v3

    aput-wide v3, p2, v2

    .line 445
    :cond_0
    if-eqz p3, :cond_1

    aget-wide v3, v1, v2

    double-to-long v3, v3

    aput-wide v3, p3, v2

    .line 446
    :cond_1
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    return-wide v0
.end method

.method public getParam(Lorg/opencv/dnn/DictValue;)Lorg/opencv/core/Mat;
    .locals 5
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;

    .line 102
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/dnn/Net;->getParam_1(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public getParam(Lorg/opencv/dnn/DictValue;I)Lorg/opencv/core/Mat;
    .locals 5
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;
    .param p2, "numParam"    # I

    .line 92
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p2}, Lorg/opencv/dnn/Net;->getParam_0(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public getPerfProfile(Lorg/opencv/core/MatOfDouble;)J
    .locals 5
    .param p1, "timings"    # Lorg/opencv/core/MatOfDouble;

    .line 264
    move-object v0, p1

    .line 265
    .local v0, "timings_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/dnn/Net;->getPerfProfile_0(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUnconnectedOutLayers()Lorg/opencv/core/MatOfInt;
    .locals 2

    .line 300
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->getUnconnectedOutLayers_0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/core/MatOfInt;->fromNativeAddr(J)Lorg/opencv/core/MatOfInt;

    move-result-object v0

    return-object v0
.end method

.method public getUnconnectedOutLayersNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->getUnconnectedOutLayersNames_0(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setHalideScheduler(Ljava/lang/String;)V
    .locals 2
    .param p1, "scheduler"    # Ljava/lang/String;

    .line 490
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->setHalideScheduler_0(JLjava/lang/String;)V

    .line 491
    return-void
.end method

.method public setInput(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "blob"    # Lorg/opencv/core/Mat;

    .line 553
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/dnn/Net;->setInput_3(JJ)V

    .line 554
    return-void
.end method

.method public setInput(Lorg/opencv/core/Mat;Ljava/lang/String;)V
    .locals 4
    .param p1, "blob"    # Lorg/opencv/core/Mat;
    .param p2, "name"    # Ljava/lang/String;

    .line 540
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/dnn/Net;->setInput_2(JJLjava/lang/String;)V

    .line 541
    return-void
.end method

.method public setInput(Lorg/opencv/core/Mat;Ljava/lang/String;D)V
    .locals 7
    .param p1, "blob"    # Lorg/opencv/core/Mat;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "scalefactor"    # D

    .line 526
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/dnn/Net;->setInput_1(JJLjava/lang/String;D)V

    .line 527
    return-void
.end method

.method public setInput(Lorg/opencv/core/Mat;Ljava/lang/String;DLorg/opencv/core/Scalar;)V
    .locals 18
    .param p1, "blob"    # Lorg/opencv/core/Mat;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "scalefactor"    # D
    .param p5, "mean"    # Lorg/opencv/core/Scalar;

    .line 511
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/dnn/Net;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v9, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v11, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v13, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v16, v6, v7

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v15, v16

    invoke-static/range {v2 .. v16}, Lorg/opencv/dnn/Net;->setInput_0(JJLjava/lang/String;DDDDD)V

    .line 512
    return-void
.end method

.method public setInputShape(Ljava/lang/String;Lorg/opencv/core/MatOfInt;)V
    .locals 5
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "shape"    # Lorg/opencv/core/MatOfInt;

    .line 567
    move-object v0, p2

    .line 568
    .local v0, "shape_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1, v3, v4}, Lorg/opencv/dnn/Net;->setInputShape_0(JLjava/lang/String;J)V

    .line 569
    return-void
.end method

.method public setInputsNames(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 586
    .local p1, "inputBlobNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->setInputsNames_0(JLjava/util/List;)V

    .line 587
    return-void
.end method

.method public setParam(Lorg/opencv/dnn/DictValue;ILorg/opencv/core/Mat;)V
    .locals 7
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;
    .param p2, "numParam"    # I
    .param p3, "blob"    # Lorg/opencv/core/Mat;

    .line 604
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v2

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/dnn/Net;->setParam_0(JJIJ)V

    .line 605
    return-void
.end method

.method public setPreferableBackend(I)V
    .locals 2
    .param p1, "backendId"    # I

    .line 621
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->setPreferableBackend_0(JI)V

    .line 622
    return-void
.end method

.method public setPreferableTarget(I)V
    .locals 2
    .param p1, "targetId"    # I

    .line 646
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->setPreferableTarget_0(JI)V

    .line 647
    return-void
.end method
