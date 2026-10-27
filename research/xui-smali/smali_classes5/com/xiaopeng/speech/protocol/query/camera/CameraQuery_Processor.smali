.class public Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;
.super Ljava/lang/Object;
.source "CameraQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 7

    .line 36
    const-string v0, "camera.support.top.status"

    const-string v1, "camera.support.panoramic.status"

    const-string v2, "camera.support.rear.status"

    const-string v3, "camera.business.status"

    const-string v4, "camera.three.d.support"

    const-string v5, "camera.transparent.chassis.support"

    const-string v6, "camera.is.recording"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "camera.support.panoramic.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "camera.support.rear.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "camera.business.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "camera.transparent.chassis.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "camera.is.recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "camera.support.top.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "camera.three.d.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->isCameraRecording(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getCameraTransparentChassisSupport(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getCameraThreeDSupport(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getBusinessCameraStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getSupportRearStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getSupportPanoramicStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->getSupportTopStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba350d4 -> :sswitch_6
        -0x1e14a46d -> :sswitch_5
        -0x5a7a1aa -> :sswitch_4
        -0x932bde -> :sswitch_3
        0xabb3517 -> :sswitch_2
        0x4be5f794 -> :sswitch_1
        0x52f13c42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
