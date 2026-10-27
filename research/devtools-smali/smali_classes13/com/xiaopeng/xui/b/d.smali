.class Lcom/xiaopeng/xui/b/d;
.super Ljava/lang/Object;
.source "SoundEffectResource.java"


# instance fields
.field private abl:I

.field private path:Ljava/lang/String;

.field private streamType:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xui/b/d;->path:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/xiaopeng/xui/b/d;->abl:I

    .line 19
    iput p3, p0, Lcom/xiaopeng/xui/b/d;->streamType:I

    .line 20
    return-void
.end method


# virtual methods
.method getLocation()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/xui/b/d;->abl:I

    return v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/b/d;->path:Ljava/lang/String;

    return-object v0
.end method

.method getStreamType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/xui/b/d;->streamType:I

    return v0
.end method
