.class public Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordMgr"

.field private static mInstance:Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;


# instance fields
.field private final AUDIO_FORMAT:I

.field private final BUFFER_SIZE:I

.field private final CHANNEL:I

.field private final NODE_SIZE_MAX:I

.field private final SAMPLE_RATE:I

.field private final VOICE_RATE:I

.field private fo:Ljava/io/FileOutputStream;

.field private jniBuffer:[B

.field private mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

.field private mBuffer:[B

.field private mCreated:Z

.field private position:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x32400

    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->BUFFER_SIZE:I

    .line 3
    const v1, 0xbb80

    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->SAMPLE_RATE:I

    .line 4
    const/16 v1, 0x3e80

    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->VOICE_RATE:I

    .line 5
    const/4 v1, 0x2

    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->CHANNEL:I

    .line 6
    const/16 v1, 0x10

    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->AUDIO_FORMAT:I

    .line 7
    const v1, 0x32000

    iput v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->NODE_SIZE_MAX:I

    .line 10
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mBuffer:[B

    .line 11
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->jniBuffer:[B

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mCreated:Z

    .line 55
    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->position:I

    return-void
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "\\."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "compareVersion error:illegal params."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;
    .locals 2

    const-class v0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    invoke-direct {v1}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;-><init>()V

    sput-object v1, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    .line 4
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isCanUseNode()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/pm_kara_wet"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "cat /sys/class/pmkaraoke/version"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o([Ljava/lang/String;ZZ)LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;

    move-result-object v0

    .line 3
    iget v3, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;->OooO00o:I

    if-nez v3, :cond_2

    iget-object v3, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2.6.10"

    invoke-direct {p0, v0, v3}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 8
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static resample([B[BIII)I
    .locals 4

    .line 1
    div-int/2addr p3, p4

    const/4 p4, 0x0

    move v0, p4

    .line 3
    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-ge p4, v1, :cond_1

    .line 4
    rem-int v1, p4, p3

    if-nez v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, p4, 0x2

    .line 5
    aget-byte v3, p0, v2

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 6
    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static stereo2mono([BI)I
    .locals 4

    .line 1
    div-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    .line 4
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v1, v0, 0x2

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 5
    aput-byte v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 6
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method


# virtual methods
.method public declared-synchronized create()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "RecordMgr"

    const-string v2, "RecordMgr create"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_1
    iput-boolean v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mCreated:Z

    .line 6
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->isCanUseNode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RecordMgr"

    const-string v2, "node mode"

    .line 7
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/record/NodeAudioRecord;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/skyworth/old/record/NodeAudioRecord;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    goto :goto_0

    :cond_1
    const-string v1, "RecordMgr"

    const-string v2, "android mode"

    .line 10
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/skyworth/old/record/AndroidAudioRecord;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    const v1, 0x32400

    const v2, 0xbb80

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;->create(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public foClose()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->position:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string v0, "RecordMgr"

    .line 4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foClose: --------> pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 10
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    iput-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    .line 13
    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public foOpen()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "RecordMgr"

    .line 6
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foOpen: --------------> PATH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->fo:Ljava/io/FileOutputStream;

    goto :goto_0

    :cond_0
    const-string v0, "instance"

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized read([BII)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->jniBuffer:[B

    const v2, 0x32000

    invoke-interface {p3, v1, v0, v2}, Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;->read([BII)I

    move-result p3

    .line 4
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mAudioRecord:Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;

    invoke-interface {v1}, Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;->read2Cache()V

    .line 5
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->jniBuffer:[B

    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mBuffer:[B

    const v3, 0xbb80

    const/16 v4, 0x3e80

    invoke-static {v1, v2, p3, v3, v4}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->resample([B[BIII)I

    move-result p3

    .line 6
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mBuffer:[B

    invoke-static {v1, p3}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->stereo2mono([BI)I

    move-result p3

    .line 17
    array-length v1, p1

    if-ge v1, p3, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read: -----------------> data.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->mBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p3

    :cond_1
    monitor-exit p0

    return v0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
