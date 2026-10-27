.class public Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_CALL_RECORD_ERROR:I = 0x3

.field public static final NO_ERROR:I = 0x0

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1


# instance fields
.field mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleStart:J

    .line 56
    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    .line 57
    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 59
    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 60
    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 63
    return-void
.end method

.method private setError(I)V
    .locals 1
    .param p1, "error"    # I

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;->onError(I)V

    .line 277
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 262
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iput p1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    .line 266
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->signalStateChanged(I)V

    .line 267
    return-void
.end method

.method private signalStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;->onStateChanged(I)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    .line 144
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->signalStateChanged(I)V

    .line 145
    return-void
.end method

.method public delete()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    .line 132
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->signalStateChanged(I)V

    .line 133
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .line 71
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 259
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 254
    return v0
.end method

.method public progress()I
    .locals 4

    .line 107
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .line 77
    const-string v0, "sample_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "samplePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 80
    :cond_0
    const-string v1, "sample_length"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "sampleLength":I
    if-ne v1, v2, :cond_1

    .line 82
    return-void

    .line 84
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 89
    return-void

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->delete()V

    .line 92
    iput-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 93
    iput v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    .line 95
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->signalStateChanged(I)V

    .line 96
    return-void
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .line 66
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "sample_length"

    iget v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public setOnStateChangedListener(Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mOnStateChangedListener:Lcom/xiaopeng/commonfunc/model/test/AudioRecorder$OnStateChangedListener;

    .line 100
    return-void
.end method

.method public startPlayback()V
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 215
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 219
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 221
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    nop

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleStart:J

    .line 233
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setState(I)V

    .line 234
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 228
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 229
    return-void

    .line 222
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 224
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 225
    return-void
.end method

.method public startRecording(ILjava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "outputfileformat"    # I
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stop()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "sampleDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/sdcard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 156
    :cond_0
    :try_start_0
    const-string v2, "recording"

    invoke-static {v2, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 159
    return-void

    .line 163
    .end local v0    # "sampleDir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    const/4 v2, 0x2

    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    nop

    .line 181
    :try_start_2
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    nop

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleStart:J

    .line 197
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setState(I)V

    .line 198
    return-void

    .line 182
    :catch_1
    move-exception v3

    .line 183
    .local v3, "exception":Ljava/lang/RuntimeException;
    const-string v4, "audio"

    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 184
    .local v4, "audioMngr":Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v2, :cond_3

    .line 185
    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    nop

    .line 186
    .local v1, "isInCall":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 187
    invoke-direct {p0, v6}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    goto :goto_2

    .line 189
    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 191
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 192
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 193
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 194
    return-void

    .line 172
    .end local v1    # "isInCall":Z
    .end local v3    # "exception":Ljava/lang/RuntimeException;
    .end local v4    # "audioMngr":Landroid/media/AudioManager;
    :catch_2
    move-exception v1

    .line 173
    .local v1, "exception":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setError(I)V

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 175
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 176
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 177
    return-void
.end method

.method public state()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 0

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stopRecording()V

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->stopPlayback()V

    .line 249
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setState(I)V

    .line 244
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->mSampleLength:I

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/AudioRecorder;->setState(I)V

    .line 210
    return-void
.end method
