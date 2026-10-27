.class Lcom/xiaopeng/xui/sound/SoundEffectFactory;
.super Ljava/lang/Object;
.source "SoundEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;
    }
.end annotation


# static fields
.field private static final PATH_BASE:Ljava/lang/String; = "system/media/audio/xiaopeng/cdu/wav/"

.field private static final PATH_DEL:Ljava/lang/String; = "CDU_delete_4.wav"

.field private static final PATH_SWITCH_OFF:Ljava/lang/String; = "CDU_switch_off_2.wav"

.field private static final PATH_SWITCH_ON:Ljava/lang/String; = "CDU_switch_on_2.wav"

.field private static final PATH_TOUCH:Ljava/lang/String; = "CDU_touch.wav"

.field private static final PATH_WHEEL_SCROLL:Ljava/lang/String; = "CDU_wheel_scroll_7.wav"

.field private static msDefaultMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/sound/SoundEffectResource;",
            ">;"
        }
    .end annotation
.end field

.field private static msMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/sound/SoundEffectResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    .line 35
    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    const-string v2, "CDU_touch.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    const-string v2, "CDU_wheel_scroll_7.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    const-string v2, "CDU_switch_on_2.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    const-string v2, "CDU_switch_off_2.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;

    const-string v2, "CDU_delete_4.wav"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/sound/SoundEffectFactory$DefaultSoundEffectResource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msDefaultMap:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(I)Lcom/xiaopeng/xui/sound/XSoundEffect;
    .locals 2

    .line 52
    new-instance v0, Lcom/xiaopeng/xui/sound/SoundEffectPool;

    sget-object v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/sound/SoundEffectPool;-><init>(Lcom/xiaopeng/xui/sound/SoundEffectResource;)V

    return-object v0
.end method

.method static resetResource(ILjava/lang/String;II)V
    .locals 2

    .line 56
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/xiaopeng/xui/sound/SoundEffectResource;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/xui/sound/SoundEffectResource;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static restoreResource(I)V
    .locals 2

    .line 60
    sget-object v0, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->msDefaultMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
