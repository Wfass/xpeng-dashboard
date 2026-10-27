.class public Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/sound/XSoundEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XAudioManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final FX_DEL:I = 0x64

.field public static final FX_SWITCH_OFF:I = 0x65

.field public static final FX_SWITCH_ON:I = 0x66

.field public static final FX_WHEEL_SCROLL:I = 0x67


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;
    .locals 1

    .line 238
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager$SingletonHolder;->access$300()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    move-result-object v0

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public playSoundEffect(I)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffect: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xpui-XSoundManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public playSoundEffectByDisplay(II)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffectByDisplay: effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xpui-XSoundManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->playSoundEffectByDisplay(II)V

    return-void
.end method
