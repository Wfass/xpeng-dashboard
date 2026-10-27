.class public Layg;
.super Ljava/lang/Object;
.source "AudioVolumeModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/xuimanager/XUIManager;

.field private b:Lcom/xiaopeng/xuimanager/smart/SmartManager;

.field private c:Landroid/media/AudioConfig/AudioConfig;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    new-instance v1, Layg$1;

    invoke-direct {v1, p0}, Layg$1;-><init>(Layg;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    iput-object v0, p0, Layg;->a:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 51
    iget-object v0, p0, Layg;->a:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 52
    new-instance v0, Landroid/media/AudioConfig/AudioConfig;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Layg;->c:Landroid/media/AudioConfig/AudioConfig;

    return-void
.end method

.method synthetic constructor <init>(Layg$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Layg;-><init>()V

    return-void
.end method

.method public static a()Layg;
    .locals 1

    .line 30
    sget-object v0, Layg$a;->a:Layg;

    return-object v0
.end method

.method static synthetic a(Layg;)Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 0

    .line 19
    iget-object p0, p0, Layg;->a:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object p0
.end method

.method static synthetic a(Layg;Lcom/xiaopeng/xuimanager/smart/SmartManager;)Lcom/xiaopeng/xuimanager/smart/SmartManager;
    .locals 0

    .line 19
    iput-object p1, p0, Layg;->b:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    return-object p1
.end method

.method static synthetic b(Layg;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Layg;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 57
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AudioVolumeModel"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener.. isRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Layg;->c:Landroid/media/AudioConfig/AudioConfig;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/media/AudioConfig/AudioConfig;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    const-string v0, "AudioVolumeModel"

    const-string v1, "resumeVolume called, but the operation is passed to xui"

    .line 82
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 116
    iget-object v0, p0, Layg;->c:Landroid/media/AudioConfig/AudioConfig;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/media/AudioConfig/AudioConfig;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Layg;->c:Landroid/media/AudioConfig/AudioConfig;

    .line 119
    :cond_0
    iget-object v0, p0, Layg;->c:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {v0}, Landroid/media/AudioConfig/AudioConfig;->getMainDriverMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
