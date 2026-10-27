.class public Lcom/xiaopeng/xuimanager/ambient/Rgb;
.super Ljava/lang/Object;
.source "Rgb.java"


# instance fields
.field public blue:I

.field public green:I

.field public red:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    .line 7
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->red:I

    and-int/lit16 p1, p2, 0xff

    .line 8
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->green:I

    and-int/lit16 p1, p3, 0xff

    .line 9
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->blue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 15
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->red:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 16
    iput v0, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->green:I

    and-int/lit16 p1, p1, 0xff

    .line 17
    iput p1, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->blue:I

    return-void
.end method


# virtual methods
.method public toHexString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->red:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->green:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xuimanager/ambient/Rgb;->blue:I

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%06x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
