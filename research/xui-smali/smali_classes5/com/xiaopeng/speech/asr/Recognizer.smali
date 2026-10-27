.class public Lcom/xiaopeng/speech/asr/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# static fields
.field public static final ASR_BUFFER:Ljava/lang/String; = "otp_asr_buffer"

.field public static final ASR_MODE:Ljava/lang/String; = "opt_asr_mode"

.field public static final AUDIO_EXTERNAL:Ljava/lang/String; = "otp_external_audio"

.field public static final AUDIO_FORMAT:Ljava/lang/String; = "otp_audio_format"

.field public static final AUDIO_SAVE_PATH:Ljava/lang/String; = "otp_audio_save_path"

.field public static final BOS:Ljava/lang/String; = "otp_bos"

.field public static final DISABLE_ASR:Ljava/lang/String; = "otp_disable_asr"

.field public static final DISABLE_VAD:Ljava/lang/String; = "otp_disable_vad"

.field public static final ENABLE_ASR_PUNCT:Ljava/lang/String; = "otp_enable_punct"

.field public static final EOS:Ljava/lang/String; = "otp_eos"

.field public static final EXT_ASR_AUDIO:I = 0x2

.field public static final EXT_VOL:I = 0x1

.field public static final FMT_AMR:I = 0x1

.field public static final FMT_PCM:I = 0x0

.field public static final KEEP_AUDIO_RECORD:Ljava/lang/String; = "otp_keep_audio_record"

.field public static final MAX_ACTIVE_TIME:Ljava/lang/String; = "otp_max_time"

.field public static final STATE_ASR_END:I = 0x5

.field public static final STATE_BOS:I = 0x1

.field public static final STATE_BOS_TIMEOUT:I = 0x3

.field public static final STATE_END:I = 0x6

.field public static final STATE_EOS:I = 0x2

.field public static final STATE_RECORD_END:I = 0x4

.field public static final STATE_RECORD_START:I = 0x0

.field public static final TYPE_EXTERNAL_AUDIO:Ljava/lang/String; = "externalAudio"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final connectCallback:Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

.field private final handler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

.field private volatile iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

.field private ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/asr/IRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile listenerImpl:Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "Recognizer"

    iput-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->TAG:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "IRecognizerProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 304
    new-instance v0, Lcom/xiaopeng/speech/asr/Recognizer$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/asr/Recognizer$9;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->connectCallback:Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer;->handler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 161
    return-void
.end method

.method private _cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    const-string v0, "Recognizer"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 360
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v0}, Lcom/xiaopeng/speech/asr/IRecognizer;->cancel()V

    .line 363
    :cond_0
    return-void
.end method

.method private _isListening()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 354
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaopeng/speech/asr/IRecognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private _setBool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 388
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer;->setBool(Ljava/lang/String;Z)V

    .line 391
    :cond_0
    return-void
.end method

.method private _setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 395
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/IRecognizer;->setDouble(Ljava/lang/String;D)V

    .line 398
    :cond_0
    return-void
.end method

.method private _setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 381
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer;->setInt(Ljava/lang/String;I)V

    .line 384
    :cond_0
    return-void
.end method

.method private _setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 374
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method private _startListening(Lcom/xiaopeng/speech/asr/RecognizeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/speech/asr/RecognizeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    const-string v0, "Recognizer"

    const-string v1, "startListening with RecognizeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 328
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    const/16 v1, 0x7d3

    if-nez v0, :cond_0

    .line 329
    const-string v2, "Recognizer"

    const-string v3, "service is disconnected"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    const-string v2, "service is disconnected"

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onError(ILjava/lang/String;)V

    .line 331
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const-string v2, "Recognizer"

    const-string v3, "last asr still running"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    const-string v2, "last asr still running"

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onError(ILjava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;

    invoke-direct {v1, p1}, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;-><init>(Lcom/xiaopeng/speech/asr/RecognizeListener;)V

    iput-object v1, p0, Lcom/xiaopeng/speech/asr/Recognizer;->listenerImpl:Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/speech/asr/Recognizer;->listenerImpl:Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/asr/IRecognizer;->startListening(Lcom/xiaopeng/speech/asr/IRecognizeListener;)V

    .line 342
    return-void
.end method

.method private _stopListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const-string v0, "Recognizer"

    const-string v1, "stop listening"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 347
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/xiaopeng/speech/asr/IRecognizer;->stopListening()V

    .line 350
    :cond_0
    return-void
.end method

.method private _writeData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 367
    .local v0, "recognizer":Lcom/xiaopeng/speech/asr/IRecognizer;
    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/IRecognizer;->writeData([BII)V

    .line 370
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/asr/Recognizer;Lcom/xiaopeng/speech/asr/RecognizeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Lcom/xiaopeng/speech/asr/RecognizeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/asr/Recognizer;->_startListening(Lcom/xiaopeng/speech/asr/RecognizeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/asr/Recognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->_stopListening()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/asr/Recognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->_cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/asr/Recognizer;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer;->_writeData([BII)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer;->_setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer;->_setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer;->_setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;D)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer;->_setDouble(Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/asr/Recognizer;)Lcom/xiaopeng/speech/common/util/IPCRunner;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/speech/asr/Recognizer;Lcom/xiaopeng/speech/asr/IRecognizer;)Lcom/xiaopeng/speech/asr/IRecognizer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/asr/Recognizer;
    .param p1, "x1"    # Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer;->iRecognizer:Lcom/xiaopeng/speech/asr/IRecognizer;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/asr/Recognizer$3;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public getConnectCallback()Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->connectCallback:Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    return-object v0
.end method

.method public isListening()Z
    .locals 3

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/asr/Recognizer;->_isListening()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Recognizer"

    const-string v2, "error: "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    const/4 v1, 0x0

    return v1
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer$7;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer$8;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer$6;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/asr/Recognizer$5;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public startListening(Lcom/xiaopeng/speech/asr/RecognizeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/speech/asr/RecognizeListener;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/asr/Recognizer$1;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;Lcom/xiaopeng/speech/asr/RecognizeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/asr/Recognizer$2;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public writeData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer;->ipcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/asr/Recognizer$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/asr/Recognizer$4;-><init>(Lcom/xiaopeng/speech/asr/Recognizer;[BII)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
