.class Lcom/xiaopeng/xui/sound/SoundEffectPool;
.super Lcom/xiaopeng/xui/sound/AbsSoundEffect;
.source "SoundEffectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;,
        Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpui-SoundEffectPool"


# instance fields
.field private mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

.field private mMustPlay:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamID:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/sound/SoundEffectResource;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/AbsSoundEffect;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectResource;)V

    const-string v0, "constructor"

    .line 30
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getLocation()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createSoundPool()Landroid/media/SoundPool;
    .locals 4

    .line 90
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 92
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSoundPool mSoundID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",StreamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    const-string v0, "init"

    .line 44
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->createSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;->load(Lcom/xiaopeng/xui/sound/SoundEffectResource;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load mSoundID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "load mISoundLoader is null"

    .line 104
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$zOIrsH-oQrJmreAPnlTpV39ypa4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$zOIrsH-oQrJmreAPnlTpV39ypa4;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xpui-SoundEffectPool"

    .line 116
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$load$0$SoundEffectPool(Landroid/media/SoundPool;II)V
    .locals 1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load onLoadComplete--,sampleId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 108
    iget-boolean p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->play()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "pause"

    .line 66
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 68
    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 8

    const-string v0, "play"

    .line 51
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    .line 54
    iget v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    if-nez v2, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->load()V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->init()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const-string v0, "release"

    .line 82
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "resume"

    .line 74
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 76
    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method
