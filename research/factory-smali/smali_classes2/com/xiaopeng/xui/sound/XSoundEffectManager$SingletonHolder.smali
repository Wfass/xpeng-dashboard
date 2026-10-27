.class Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/sound/XSoundEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V

    sput-object v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    return-object v0
.end method
