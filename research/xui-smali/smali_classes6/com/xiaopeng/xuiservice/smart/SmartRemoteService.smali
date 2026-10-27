.class public Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final PATH_SURPRISE_SOUND:[Ljava/lang/String;

.field private static final XPAPP_EFFECT_ACCHARGE:Ljava/lang/String; = "xpapp_accharge"

.field private static final XPAPP_EFFECT_AWAKE:Ljava/lang/String; = "xpapp_awake"

.field private static final XPAPP_EFFECT_DCCHARGE:Ljava/lang/String; = "xpapp_dccharge"

.field private static final XPAPP_EFFECT_FULLCHARGED:Ljava/lang/String; = "xpapp_fullcharged"

.field private static final XPAPP_EFFECT_SHOWOFF:Ljava/lang/String; = "xpapp_showoff"

.field private static final XPAPP_EFFECT_SLEEP:Ljava/lang/String; = "xpapp_sleep"

.field private static final XPAPP_EFFECT_SURPRISE_NORMAL:Ljava/lang/String; = "xpapp_surprise_normal"

.field private static final XPAPP_REMOTE_COMMAND_0:I = 0x1

.field private static final XPAPP_REMOTE_COMMAND_1:I = 0x2

.field private static final XPAPP_REMOTE_COMMAND_2:I = 0x3

.field private static final XPAPP_REMOTE_COMMAND_3:I = 0x4

.field private static final XPAPP_REMOTE_COMMAND_4:I = 0x5

.field private static final XPAPP_REMOTE_COMMAND_5:I = 0x6

.field private static final XPAPP_REMOTE_COMMAND_6:I = 0x7


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

.field private mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private soundEffectStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "/system/media/audio/xiaopeng/cdu/mp3/surprise_normal.mp3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->PATH_SURPRISE_SOUND:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->soundEffectStreamType:I

    .line 55
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->handleRemoteCommand(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;
    .param p1, "x1"    # Z

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->startfinishPlayer(Z)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;
    .locals 1

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    move-result-object v0

    return-object v0
.end method

.method private handleRemoteCommand(I)V
    .locals 5
    .param p1, "cmd"    # I

    .line 134
    const/4 v0, -0x1

    .line 135
    .local v0, "avasType":I
    const/4 v1, 0x0

    .line 136
    .local v1, "lluEffect":Ljava/lang/String;
    const/4 v2, 0x0

    .line 137
    .local v2, "needPlaySnd":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    const-string/jumbo v1, "xpapp_surprise_normal"

    .line 164
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    :pswitch_1
    const/4 v0, 0x6

    .line 160
    const-string/jumbo v1, "xpapp_showoff"

    .line 161
    goto :goto_0

    .line 155
    :pswitch_2
    const/16 v0, 0xc

    .line 156
    const-string/jumbo v1, "xpapp_dccharge"

    .line 157
    goto :goto_0

    .line 151
    :pswitch_3
    const/16 v0, 0xb

    .line 152
    const-string/jumbo v1, "xpapp_accharge"

    .line 153
    goto :goto_0

    .line 147
    :pswitch_4
    const/16 v0, 0xa

    .line 148
    const-string/jumbo v1, "xpapp_sleep"

    .line 149
    goto :goto_0

    .line 143
    :pswitch_5
    const/16 v0, 0x9

    .line 144
    const-string/jumbo v1, "xpapp_fullcharged"

    .line 145
    goto :goto_0

    .line 139
    :pswitch_6
    const/16 v0, 0x8

    .line 140
    const-string/jumbo v1, "xpapp_awake"

    .line 141
    nop

    .line 169
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAvasSupportType()I

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 170
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v3, v0}, Landroid/car/hardware/avas/CarAvasManager;->setAvasExternalSound(I)V

    .line 171
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/car/hardware/avas/CarAvasManager;->setExternalSoundModeCmd(I)V

    .line 173
    :cond_0
    const-string v3, "LLU"

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setLangLightEffectMode(Ljava/lang/String;)V

    .line 176
    :cond_1
    if-eqz v2, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->playSurpriseSound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_2
    goto :goto_1

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->handleException(Ljava/lang/Exception;)V

    .line 182
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playSurpriseSound()V
    .locals 4

    .line 185
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->PATH_SURPRISE_SOUND:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->TAG:Ljava/lang/String;

    const-string v2, "The sound file isn\'t exist"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1
    return-void
.end method

.method private startfinishPlayer(Z)V
    .locals 4
    .param p1, "start"    # Z

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->soundEffectStreamType:I

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 224
    if-eqz p1, :cond_2

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 232
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setFftLLUEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_4
    goto :goto_2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->handleException(Ljava/lang/Exception;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "SmartRemoteService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 69
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 83
    return-void
.end method

.method protected initXUIManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->registerListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->TAG:Ljava/lang/String;

    const-string v2, "initXUIManager error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->TAG:Ljava/lang/String;

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "xp_avas"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    .line 89
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 113
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->TAG:Ljava/lang/String;

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    :cond_1
    return-void
.end method
