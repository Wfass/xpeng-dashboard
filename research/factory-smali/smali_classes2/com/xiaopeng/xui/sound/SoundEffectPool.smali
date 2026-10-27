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
    .param p1, "soundEffectResource"    # Lcom/xiaopeng/xui/sound/SoundEffectResource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/AbsSoundEffect;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectResource;)V

    .line 30
    const-string v0, "constructor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getLocation()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderSystem;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/sound/SoundEffectPool$LoaderAssets;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;Lcom/xiaopeng/xui/sound/SoundEffectPool$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    .line 34
    nop

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->init()V

    .line 40
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/sound/SoundEffectPool;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/sound/SoundEffectPool;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/sound/SoundEffectPool;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/sound/SoundEffectPool;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createSoundPool()Landroid/media/SoundPool;
    .locals 4

    .line 90
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 91
    .local v0, "builder":Landroid/media/SoundPool$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 92
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 93
    .local v1, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSoundPool mSoundID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",StreamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/sound/SoundEffectResource;->getStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    return-object v2
.end method

.method private init()V
    .locals 1

    .line 44
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->createSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->load()V

    .line 47
    return-void
.end method

.method public static synthetic lambda$load$0(Lcom/xiaopeng/xui/sound/SoundEffectPool;Landroid/media/SoundPool;II)V
    .locals 2
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load onLoadComplete--,sampleId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->play()V

    .line 112
    :cond_0
    return-void
.end method

.method private load()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mISoundLoader:Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;

    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundEffectResource:Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;->load(Lcom/xiaopeng/xui/sound/SoundEffectResource;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load mSoundID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "load mISoundLoader is null"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$ySC9rQ499ndWXj-iJEhwLM2n35c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/sound/-$$Lambda$SoundEffectPool$ySC9rQ499ndWXj-iJEhwLM2n35c;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectPool;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 113
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 116
    const-string v0, "xpui-SoundEffectPool"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 66
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public play()V
    .locals 8

    .line 51
    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mMustPlay:Z

    .line 54
    iget v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->load()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundID:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->init()V

    .line 62
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 82
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    .line 87
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 74
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;->log(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/xiaopeng/xui/sound/SoundEffectPool;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 78
    :cond_0
    return-void
.end method
