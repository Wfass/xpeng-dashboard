.class Lcom/xiaopeng/xui/sound/SoundEffectResource;
.super Ljava/lang/Object;
.source "SoundEffectResource.java"


# instance fields
.field private location:I

.field private path:Ljava/lang/String;

.field private resId:I

.field private streamType:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->resId:I

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->location:I

    .line 25
    iput p2, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->streamType:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->path:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->location:I

    .line 19
    iput p3, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->streamType:I

    return-void
.end method


# virtual methods
.method getLocation()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->location:I

    return v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method getResId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->resId:I

    return v0
.end method

.method getStreamType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->streamType:I

    return v0
.end method

.method setResId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/xiaopeng/xui/sound/SoundEffectResource;->resId:I

    return-void
.end method
