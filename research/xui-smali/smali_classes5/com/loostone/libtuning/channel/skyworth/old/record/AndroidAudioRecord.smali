.class public Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mCreated:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidAudioRecord"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->TAG:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    return-void
.end method

.method private createAudioRecord(IIII)Landroid/media/AudioRecord;
    .locals 8

    .line 1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AndroidAudioRecord"

    const-string p3, "create record error,ERROR_BAD_VALUE"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x1

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 9
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AndroidAudioRecord"

    const-string p3, "create record success"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 14
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AndroidAudioRecord"

    const-string p3, "create record error"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public create(IIII)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create, bufferSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidAudioRecord"

    invoke-virtual {v0, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    const/16 v0, 0xc

    const/4 v2, 0x2

    if-ne p3, v1, :cond_1

    const/16 v0, 0x10

    :cond_1
    const/16 p3, 0x8

    if-ne p4, p3, :cond_2

    const/4 v2, 0x3

    .line 15
    :cond_2
    invoke-direct {p0, p2, v0, v2, p1}, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->createAudioRecord(IIII)Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    .line 5
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method

.method public read([BII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mCreated:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 7
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public read2Cache()V
    .locals 0

    return-void
.end method
