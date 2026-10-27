.class Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager$SingletonHolder;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    new-instance v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V

    sput-object v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;
    .locals 1

    .line 233
    sget-object v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    return-object v0
.end method
