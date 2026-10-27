.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;
.super Ljava/lang/Object;
.source "FeedbackModel.java"


# static fields
.field public static final AUDIO_SAMPLE_RATE:I = 0xac44

.field public static final MAX_LENGTH:I = 0x927c0

.field private static final TAG:Ljava/lang/String; = "FeedbackModel"


# instance fields
.field private final PARAMETER_LOOPBACK:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_DEST:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_SRC:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_START:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_STOP:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBufferSizeInBytes:I

.field private mIsRecording:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "ftmtest=loopback"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->PARAMETER_LOOPBACK:Ljava/lang/String;

    .line 31
    const-string v0, "action=start"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->PARAMETER_LOOPBACK_START:Ljava/lang/String;

    .line 32
    const-string v0, "action=stop"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->PARAMETER_LOOPBACK_STOP:Ljava/lang/String;

    .line 33
    const-string v0, "source="

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->PARAMETER_LOOPBACK_SRC:Ljava/lang/String;

    .line 34
    const-string v0, "dest="

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->PARAMETER_LOOPBACK_DEST:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mBufferSizeInBytes:I

    .line 44
    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mIsRecording:Z

    .line 49
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    return-void
.end method

.method static synthetic lambda$play$0(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 76
    const-string v0, "FeedbackModel"

    const-string v1, " mMediaPlayer onPrepared sound 1khz"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 78
    return-void
.end method

.method static synthetic lambda$play$1(Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 96
    const-string v0, "FeedbackModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMediaPlayer onPrepared path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 98
    return-void
.end method

.method public static synthetic lambda$startRecord$2(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->saveWavFile(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private saveWavFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 161
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mBufferSizeInBytes:I

    new-array v0, v0, [B

    .line 162
    .local v0, "audiodata":[B
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/FileUtil;->createFileOS(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 163
    .local v1, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v2, 0x0

    .line 165
    .local v2, "totalsize":J
    const/16 v4, 0x2c

    new-array v4, v4, [B

    .line 166
    .local v4, "emptyheader":[B
    invoke-static {v1, v4}, Lcom/xiaopeng/factory/utils/FileUtil;->writeFileOS(Ljava/io/FileOutputStream;[B)Z

    .line 167
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mIsRecording:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 168
    iget-object v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mBufferSizeInBytes:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    int-to-long v5, v5

    .line 169
    .local v5, "readsize":J
    const-wide/16 v7, -0x3

    cmp-long v7, v7, v5

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1, v0}, Lcom/xiaopeng/factory/utils/FileUtil;->writeFileOS(Ljava/io/FileOutputStream;[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    add-long/2addr v2, v5

    goto :goto_0

    .line 175
    .end local v5    # "readsize":J
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->closeFileOS(Ljava/io/FileOutputStream;)Z

    .line 177
    invoke-direct {p0, p1, v2, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->writeWaveHeader(Ljava/lang/String;J)V

    .line 178
    return-void
.end method

.method private writeWaveHeader(Ljava/lang/String;J)V
    .locals 20
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "totalAudioLen"    # J

    .line 182
    const-wide/16 v0, 0x24

    add-long v0, p2, v0

    .line 183
    .local v0, "totalDataLen":J
    const-wide/32 v2, 0xac44

    .line 184
    .local v2, "longSampleRate":J
    const/4 v4, 0x2

    .line 185
    .local v4, "channels":I
    const v5, 0xac440

    mul-int/2addr v5, v4

    const/16 v6, 0x8

    div-int/2addr v5, v6

    int-to-long v7, v5

    .line 186
    .local v7, "byteRate":J
    const/16 v5, 0x2c

    new-array v5, v5, [B

    .line 187
    .local v5, "header":[B
    const/4 v9, 0x0

    const/16 v10, 0x52

    aput-byte v10, v5, v9

    .line 188
    const/4 v10, 0x1

    const/16 v11, 0x49

    aput-byte v11, v5, v10

    .line 189
    const/16 v11, 0x46

    const/4 v12, 0x2

    aput-byte v11, v5, v12

    .line 190
    const/4 v12, 0x3

    aput-byte v11, v5, v12

    .line 191
    const-wide/16 v11, 0xff

    and-long v9, v0, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x4

    aput-byte v9, v5, v10

    .line 192
    shr-long v15, v0, v6

    move-wide/from16 v17, v7

    and-long v6, v15, v11

    .end local v7    # "byteRate":J
    .local v17, "byteRate":J
    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x5

    aput-byte v6, v5, v7

    .line 193
    const/16 v6, 0x10

    shr-long v7, v0, v6

    and-long/2addr v7, v11

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x6

    aput-byte v7, v5, v8

    .line 194
    const/16 v7, 0x18

    shr-long v8, v0, v7

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x7

    aput-byte v8, v5, v9

    .line 195
    const/16 v8, 0x57

    const/16 v9, 0x8

    aput-byte v8, v5, v9

    .line 196
    const/16 v8, 0x9

    const/16 v9, 0x41

    aput-byte v9, v5, v8

    .line 197
    const/16 v8, 0xa

    const/16 v9, 0x56

    aput-byte v9, v5, v8

    .line 198
    const/16 v8, 0xb

    const/16 v9, 0x45

    aput-byte v9, v5, v8

    .line 199
    const/16 v8, 0xc

    const/16 v9, 0x66

    aput-byte v9, v5, v8

    .line 200
    const/16 v8, 0xd

    const/16 v9, 0x6d

    aput-byte v9, v5, v8

    .line 201
    const/16 v8, 0x74

    const/16 v9, 0xe

    aput-byte v8, v5, v9

    .line 202
    const/16 v9, 0x20

    const/16 v15, 0xf

    aput-byte v9, v5, v15

    .line 203
    aput-byte v6, v5, v6

    .line 204
    const/16 v15, 0x11

    const/4 v13, 0x0

    aput-byte v13, v5, v15

    .line 205
    const/16 v15, 0x12

    aput-byte v13, v5, v15

    .line 206
    const/16 v15, 0x13

    aput-byte v13, v5, v15

    .line 207
    const/16 v15, 0x14

    const/4 v14, 0x1

    aput-byte v14, v5, v15

    .line 208
    const/16 v14, 0x15

    aput-byte v13, v5, v14

    .line 209
    int-to-byte v8, v4

    const/16 v14, 0x16

    aput-byte v8, v5, v14

    .line 210
    const/16 v8, 0x17

    aput-byte v13, v5, v8

    .line 211
    and-long v9, v2, v11

    long-to-int v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 212
    const/16 v8, 0x8

    shr-long v9, v2, v8

    and-long v8, v9, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x19

    aput-byte v8, v5, v9

    .line 213
    shr-long v8, v2, v6

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1a

    aput-byte v8, v5, v9

    .line 214
    shr-long v8, v2, v7

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1b

    aput-byte v8, v5, v9

    .line 215
    and-long v8, v17, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1c

    aput-byte v8, v5, v9

    .line 216
    const/16 v8, 0x8

    shr-long v9, v17, v8

    and-long v8, v9, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1d

    aput-byte v8, v5, v9

    .line 217
    shr-long v8, v17, v6

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1e

    aput-byte v8, v5, v9

    .line 218
    shr-long v8, v17, v7

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x1f

    aput-byte v8, v5, v9

    .line 219
    const/4 v8, 0x4

    const/16 v9, 0x20

    aput-byte v8, v5, v9

    .line 220
    const/16 v8, 0x21

    const/4 v9, 0x0

    aput-byte v9, v5, v8

    .line 221
    const/16 v8, 0x22

    aput-byte v6, v5, v8

    .line 222
    const/16 v8, 0x23

    aput-byte v9, v5, v8

    .line 223
    const/16 v8, 0x24

    const/16 v9, 0x64

    aput-byte v9, v5, v8

    .line 224
    const/16 v8, 0x61

    const/16 v9, 0x25

    aput-byte v8, v5, v9

    .line 225
    const/16 v9, 0x26

    const/16 v10, 0x74

    aput-byte v10, v5, v9

    .line 226
    const/16 v9, 0x27

    aput-byte v8, v5, v9

    .line 227
    and-long v8, p2, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x28

    aput-byte v8, v5, v9

    .line 228
    const/16 v8, 0x8

    shr-long v8, p2, v8

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x29

    aput-byte v8, v5, v9

    .line 229
    shr-long v8, p2, v6

    and-long/2addr v8, v11

    long-to-int v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x2a

    aput-byte v6, v5, v8

    .line 230
    shr-long v6, p2, v7

    and-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x2b

    aput-byte v6, v5, v7

    .line 231
    move-object/from16 v6, p1

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/xiaopeng/factory/utils/FileUtil;->coverToFile(Ljava/lang/String;I[B)Z

    .line 232
    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 5
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 72
    const-string v1, "FeedbackModel"

    const-string v2, "play mMediaPlayer == null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$3j6dg1a-FloV9KalLHfG0NGRnGM;->INSTANCE:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$3j6dg1a-FloV9KalLHfG0NGRnGM;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "FeedbackModel"

    const-string v2, "play mMediaPlayer != null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 88
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "FeedbackModel"

    const-string v1, "play mMediaPlayer == null "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$BJiS4h8IiQD_Vu3kuokmi4eBET8;

    invoke-direct {v1, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$BJiS4h8IiQD_Vu3kuokmi4eBET8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "FeedbackModel"

    const-string v1, "play mMediaPlayer != null "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 108
    return-void
.end method

.method public releaseAll()V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->stopRecord()V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->stopPlay()V

    .line 237
    return-void
.end method

.method public startFeedback(II)V
    .locals 3
    .param p1, "src"    # I
    .param p2, "dest"    # I

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ftmtest=loopback;action=start;source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 127
    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mBufferSizeInBytes:I

    .line 131
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const v3, 0xac44

    const/16 v4, 0xc

    const/4 v5, 0x2

    iget v6, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mBufferSizeInBytes:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mIsRecording:Z

    .line 139
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$VyAw54UElMXq9PR7TxpoyGV1b4U;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$VyAw54UElMXq9PR7TxpoyGV1b4U;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public stopFeedback()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftmtest=loopback;action=stop"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "FeedbackModel"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mIsRecording:Z

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->mAudioRecord:Landroid/media/AudioRecord;

    .line 152
    :cond_0
    return-void
.end method
