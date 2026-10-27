.class public abstract Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;
.super Ljava/lang/Object;
.source "AbsA2DPControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onA2DPBrowsingCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "errorCode"    # I
    .param p4, "complete"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "artist"    # Ljava/lang/String;
    .param p7, "itemType"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected onA2DPFeatureSupport(ZZ)V
    .locals 0
    .param p1, "isSupportMetaData"    # Z
    .param p2, "isSupportPlayStatus"    # Z

    .line 23
    return-void
.end method

.method protected onA2DPMetaData(IILjava/lang/String;)V
    .locals 0
    .param p1, "dataType"    # I
    .param p2, "attributeId"    # I
    .param p3, "metaData"    # Ljava/lang/String;

    .line 91
    return-void
.end method

.method protected onA2DPMetaData(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "songMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method protected onA2DPPlayBackPos(I)V
    .locals 0
    .param p1, "position"    # I

    .line 147
    return-void
.end method

.method protected onA2DPPlayStatus(I)V
    .locals 0
    .param p1, "playStatus"    # I

    .line 187
    return-void
.end method

.method protected onA2DPStreamStatus(I)V
    .locals 0
    .param p1, "streamStatus"    # I

    .line 198
    return-void
.end method

.method protected onAVRCPBrowsingEvent(I)V
    .locals 0
    .param p1, "eventId"    # I

    .line 266
    return-void
.end method

.method protected onAVRCPChangedEvent(II)V
    .locals 0
    .param p1, "attributeId"    # I
    .param p2, "attributeValue"    # I

    .line 276
    return-void
.end method

.method protected varargs onAVRCPFeatureSupport([Z)V
    .locals 0
    .param p1, "supportFeatures"    # [Z

    .line 257
    return-void
.end method

.method protected onAVRCPSupportedEvent(ILjava/util/List;)V
    .locals 0
    .param p1, "attributeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p2, "allowAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method protected onBindSuccess()V
    .locals 0

    .line 293
    return-void
.end method
