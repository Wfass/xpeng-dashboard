.class public final Lcom/google/zxing/qrcode/decoder/a$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final kc:I

.field private final kd:[Lcom/google/zxing/qrcode/decoder/a$a;


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/a$a;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kc:I

    .line 190
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kd:[Lcom/google/zxing/qrcode/decoder/a$a;

    .line 191
    return-void
.end method


# virtual methods
.method public cw()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kc:I

    return v0
.end method

.method public cx()I
    .locals 5

    .line 198
    nop

    .line 199
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kd:[Lcom/google/zxing/qrcode/decoder/a$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 200
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/a$a;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return v3
.end method

.method public cy()I
    .locals 2

    .line 206
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kc:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/a$b;->cx()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public cz()[Lcom/google/zxing/qrcode/decoder/a$a;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a$b;->kd:[Lcom/google/zxing/qrcode/decoder/a$a;

    return-object v0
.end method
