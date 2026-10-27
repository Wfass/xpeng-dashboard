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

    .line 22
    const-string v0, "AsrToTextNode"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 206
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;-><init>(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->recognizeListener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$SingleHolder;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    return-object v0
.end method

.method private getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    if-nez v0, :cond_6

    .line 69
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "paramObj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 86
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_1

    .line 88
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 89
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    goto :goto_0

    .line 94
    .end local v0    # "paramObj":Lorg/json/JSONObject;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    goto :goto_3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_3

    .line 72
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const-string v1, "otp_audio_save_path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "otp_asr_buffer"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    const-string v1, "otp_audio_format"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 98
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    return-object v0
.end method

.method private startListen(Ljava/lang/String;)V
    .locals 7
    .param p1, "param"    # Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    .line 138
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/Recognizer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-nez v1, :cond_7

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListen param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0xea60

    const/16 v4, 0x1b58

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 146
    :cond_0
    const-string v1, "externalAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "otp_external_audio"

    invoke-virtual {v0, v1, v6}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 148
    const-string v1, "opt_asr_mode"

    invoke-virtual {v0, v1, v6}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "otp_audio_save_path"

    invoke-virtual {v0, v1, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "otp_eos"

    const/16 v5, 0x2710

    invoke-virtual {v0, v1, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 151
    const-string v1, "otp_bos"

    invoke-virtual {v0, v1, v4}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 152
    const-string v1, "otp_max_time"

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 153
    const-string v1, "otp_disable_asr"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_3

    .line 155
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "paramObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 160
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 161
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 162
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 163
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    goto :goto_1

    .line 164
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 165
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_0

    .line 141
    .end local v1    # "paramObj":Lorg/json/JSONObject;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    const-string v1, "otp_audio_save_path"

    invoke-virtual {v0, v1, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "otp_eos"

    const/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 143
    const-string v1, "otp_bos"

    invoke-virtual {v0, v1, v4}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 144
    const-string v1, "otp_max_time"

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/speech/asr/Recognizer;->setInt(Ljava/lang/String;I)V

    .line 145
    const-string v1, "otp_disable_asr"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V

    .line 169
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->recognizeListener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/asr/Recognizer;->startListening(Lcom/xiaopeng/speech/asr/RecognizeListener;)V

    .line 170
    iput-boolean v6, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "recognizer":Lcom/xiaopeng/speech/asr/Recognizer;
    :cond_7
    goto :goto_4

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
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

    .line 198
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/Recognizer;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->cancel()V

    .line 200
    const/4 v0, 0x0

    .line 202
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 204
    return-void
.end method

.method public initRecord(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->initRecord(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V

    .line 103
    return-void
.end method

.method public initRecord(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecognizer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mInitParam:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    .line 65
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

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    .line 33
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

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mRecognizer:Lcom/xiaopeng/speech/asr/Recognizer;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v0, "asr_result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "messageCode"

    const-string v2, "501"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 50
    .end local v0    # "asr_result":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->startRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->canPerformASRToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v1, "asr_result":Lorg/json/JSONObject;
    const-string v2, "messageCode"

    const-string v3, "501"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 118
    .end local v1    # "asr_result":Lorg/json/JSONObject;
    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v1    # "asr_result":Lorg/json/JSONObject;
    const-string v2, "messageCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "message":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->startListen(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->mListener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "asr_result":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 133
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
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

    .line 189
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/Recognizer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->stopListening()V

    .line 192
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->isRecording:Z

    .line 193
    return-void
.end method

.method public writeData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getRecognizer()Lcom/xiaopeng/speech/asr/Recognizer;

    move-result-object v0

    .line 180
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/Recognizer;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->TAG:Ljava/lang/String;

    const-string v2, "writeData"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer;->writeData([BII)V

    .line 184
    :cond_0
    return-void
.end method
