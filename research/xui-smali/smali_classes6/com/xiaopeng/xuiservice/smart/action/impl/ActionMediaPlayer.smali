.class abstract Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionMediaPlayer.java"


# instance fields
.field private final audioFocus:I

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private final file:Ljava/lang/String;

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field private final repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

.field private requestAudioFocusResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "audioFocus"    # I

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    invoke-direct {v0, p2, p0}, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;-><init>(ILcom/xiaopeng/xuiservice/smart/action/Action;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    .line 32
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocus:I

    .line 33
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 6

    .line 118
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocus:I

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->isValidFocusGain(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 125
    const-string v0, "audioFocusRequest is null, skip abandon audio focus"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 126
    return-void

    .line 129
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->requestAudioFocusResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 130
    const-string v0, "abandonAudioFocus skip, request not granted before"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 131
    return-void

    .line 134
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 136
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_4

    .line 137
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v3

    .line 138
    .local v3, "abandonResult":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abandonAudioFocusRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    if-ne v3, v1, :cond_3

    const-string v1, "GRANTED"

    goto :goto_0

    :cond_3
    const-string v1, "FAILED"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 142
    .end local v3    # "abandonResult":I
    :cond_4
    return-void
.end method

.method static isValidFocusGain(I)Z
    .locals 1
    .param p0, "focusGain"    # I

    .line 145
    packed-switch p0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 150
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$MMXHIST66pe1ksc_ABl49qiicAI(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public static synthetic lambda$initMediaPlayer$0(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer onPrepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->requestAudioFocus()V

    .line 42
    return-void
.end method

.method public static synthetic lambda$initMediaPlayer$1(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer onCompletion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$MMXHIST66pe1ksc_ABl49qiicAI;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$MMXHIST66pe1ksc_ABl49qiicAI;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public static synthetic lambda$initMediaPlayer$2(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->stop()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$requestAudioFocus$3(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;I)V
    .locals 2
    .param p1, "focusChange"    # I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get onAudioFocusChange, focusChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 95
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 103
    const-string v0, "AUDIOFOCUS_GAIN resume mediaPlayer"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore onAudioFocusChange, focusChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 98
    const-string v0, "AUDIOFOCUS_LOSS, pause mediaPlayer"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 108
    :cond_3
    :goto_1
    return-void
.end method

.method private requestAudioFocus()V
    .locals 6

    .line 84
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocus:I

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->isValidFocusGain(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 91
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    .line 92
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocus:I

    invoke-direct {v2, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 93
    .local v2, "builder":Landroid/media/AudioFocusRequest$Builder;
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$sPeBJkJhgAF9JB3CzjNvlMPEZk8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$sPeBJkJhgAF9JB3CzjNvlMPEZk8;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    .line 109
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 110
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->requestAudioFocusResult:I

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAudioFocus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->requestAudioFocusResult:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "GRANTED"

    goto :goto_0

    :cond_1
    const-string v4, "FAILED"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 115
    .end local v2    # "builder":Landroid/media/AudioFocusRequest$Builder;
    :cond_2
    return-void
.end method


# virtual methods
.method protected audioSteamType()I
    .locals 1

    .line 64
    const/4 v0, 0x3

    return v0
.end method

.method initMediaPlayer()Z
    .locals 2

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$_ddgCZtR8ztGJsYsZNiUyNfSWJg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$_ddgCZtR8ztGJsYsZNiUyNfSWJg;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$yIwoQq7wjtHGdhAWOPJJ_F9ecRc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$yIwoQq7wjtHGdhAWOPJJ_F9ecRc;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$BdF7Fs6GP5sK0KzmPcbnxVnsCxM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$BdF7Fs6GP5sK0KzmPcbnxVnsCxM;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioSteamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "startAudio error"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->stop()V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method stopAndReleaseMediaPlayer()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer stop(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->abandonAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "release MediaPlayer error"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", repeater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->repeater:Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->audioFocus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
