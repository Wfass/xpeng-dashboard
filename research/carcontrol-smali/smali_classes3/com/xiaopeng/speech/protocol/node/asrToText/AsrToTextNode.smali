.class public Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$SingleHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isRecording:Z

.field private mInitParam:Ljava/lang/String;

.field private mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

.field private mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

.field private final recognizeListener:Lcom/xiaopeng/speech/asr/RecognizeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AsrToTextNode"

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 206
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;-><init>(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->recognizeListener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$SingleHolder;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    return-object v0
.end method

.method private getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    if-nez v0, :cond_5

    .line 69
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 87
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const/4 v1, 0x0

    const-string v2, "otp_audio_save_path"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const-string v1, "otp_keep_audio_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const-string v1, "otp_enable_punct"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const/4 v1, 0x0

    const-string v3, "otp_asr_buffer"

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const-string v1, "otp_audio_format"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 98
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    return-object v0
.end method

.method private startListen(Ljava/lang/String;)V
    .locals 12

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-nez v1, :cond_7

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListen param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "otp_disable_asr"

    const v4, 0xea60

    const-string v5, "otp_max_time"

    const/16 v6, 0x1b58

    const-string v7, "otp_bos"

    const-string v8, "otp_eos"

    const/4 v9, 0x0

    const-string v10, "otp_audio_save_path"

    const/4 v11, 0x1

    if-nez v1, :cond_5

    :try_start_1
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "externalAudio"

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "otp_external_audio"

    .line 147
    invoke-virtual {v0, p1, v11}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    const-string p1, "opt_asr_mode"

    .line 148
    invoke-virtual {v0, p1, v11}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {v0, v10, v9}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    .line 150
    invoke-virtual {v0, v8, p1}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v0, v7, v6}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v0, v5, v4}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_2

    .line 155
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 157
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 161
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :cond_3
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 163
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_0

    .line 164
    :cond_4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 165
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    :goto_1
    invoke-virtual {v0, v10, v9}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 142
    invoke-virtual {v0, v8, p1}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v7, v6}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v0, v5, v4}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 169
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->recognizeListener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/asr/Recognizer;->startListening(Lcom/xiaopeng/speech/asr/RecognizeListener;)V

    .line 170
    iput-boolean v11, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public destroyRecord()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    const-string v1, "destroyRecord"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    return-void
.end method

.method public initRecord(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->initRecord(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V

    return-void
.end method

.method public initRecord(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecognizer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    return-void
.end method

.method public onServiceConnect()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    :cond_0
    return-void
.end method

.method public onServiceDisconnect()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "messageCode"

    const-string v2, "501"

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->startRecord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->canPerformASRToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "messageCode"

    if-eqz v0, :cond_0

    .line 114
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz p1, :cond_2

    .line 115
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "501"

    .line 116
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->startListen(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz p2, :cond_2

    .line 126
    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->stopListening()V

    :cond_0
    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    return-void
.end method

.method public writeData([BII)V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeData"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer;->writeData([BII)V

    :cond_0
    return-void
.end method
