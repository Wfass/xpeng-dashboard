.class Lcom/xiaopeng/xui/b/c;
.super Lcom/xiaopeng/xui/b/a;
.source "SoundEffectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/b/c$b;,
        Lcom/xiaopeng/xui/b/c$a;
    }
.end annotation


# instance fields
.field private abf:I

.field private abg:I

.field private abh:Landroid/media/SoundPool;

.field private abi:Lcom/xiaopeng/xui/b/e$a;

.field private abj:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/b/d;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/xui/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/a;-><init>(Lcom/xiaopeng/xui/b/d;)V

    .line 30
    const-string v0, "constructor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/xui/b/d;->getLocation()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    new-instance p1, Lcom/xiaopeng/xui/b/c$b;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xui/b/c$b;-><init>(Lcom/xiaopeng/xui/b/c;Lcom/xiaopeng/xui/b/c$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/b/c;->abi:Lcom/xiaopeng/xui/b/e$a;

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance p1, Lcom/xiaopeng/xui/b/c$a;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xui/b/c$a;-><init>(Lcom/xiaopeng/xui/b/c;Lcom/xiaopeng/xui/b/c$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/b/c;->abi:Lcom/xiaopeng/xui/b/e$a;

    .line 34
    nop

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/c;->init()V

    .line 40
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaopeng/xui/b/c;)Landroid/media/SoundPool;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    return-object p0
.end method

.method private synthetic a(Landroid/media/SoundPool;II)V
    .locals 1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load onLoadComplete--,sampleId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 108
    iget-boolean p1, p0, Lcom/xiaopeng/xui/b/c;->abj:Z

    if-eqz p1, :cond_0

    .line 109
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/b/c;->abj:Z

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/b/c;->play()V

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/b/c;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 44
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/c;->qK()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/c;->load()V

    .line 47
    return-void
.end method

.method public static synthetic lambda$-vAgW4ZqFbop80RuDt3Rry1pR4o(Lcom/xiaopeng/xui/b/c;Landroid/media/SoundPool;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/b/c;->a(Landroid/media/SoundPool;II)V

    return-void
.end method

.method private load()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abi:Lcom/xiaopeng/xui/b/e$a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abi:Lcom/xiaopeng/xui/b/e$a;

    iget-object v1, p0, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/b/e$a;->a(Lcom/xiaopeng/xui/b/d;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/b/c;->abf:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load mSoundID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/b/c;->abf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "load mISoundLoader is null"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    new-instance v1, Lcom/xiaopeng/xui/b/-$$Lambda$c$-vAgW4ZqFbop80RuDt3Rry1pR4o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/b/-$$Lambda$c$-vAgW4ZqFbop80RuDt3Rry1pR4o;-><init>(Lcom/xiaopeng/xui/b/c;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 113
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 116
    const-string v0, "xpui-SoundEffectPool"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private qK()Landroid/media/SoundPool;
    .locals 4

    .line 90
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 92
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/b/d;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSoundPool mSoundID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xui/b/c;->abf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",StreamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/b/d;->getStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public play()V
    .locals 8

    .line 51
    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/b/c;->abj:Z

    .line 54
    iget v0, p0, Lcom/xiaopeng/xui/b/c;->abf:I

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/c;->load()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    iget v2, p0, Lcom/xiaopeng/xui/b/c;->abf:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/b/c;->abg:I

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/c;->init()V

    .line 62
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 82
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/b/c;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/b/c;->abh:Landroid/media/SoundPool;

    .line 87
    :cond_0
    return-void
.end method
