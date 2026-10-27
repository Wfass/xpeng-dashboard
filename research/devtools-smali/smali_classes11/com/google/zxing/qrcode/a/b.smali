.class public final Lcom/google/zxing/qrcode/a/b;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final height:I

.field private final kg:[[B

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    filled-new-array {p2, p1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    .line 33
    iput p1, p0, Lcom/google/zxing/qrcode/a/b;->width:I

    .line 34
    iput p2, p0, Lcom/google/zxing/qrcode/a/b;->height:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 4

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/zxing/qrcode/a/b;->height:I

    if-ge v1, v2, :cond_1

    .line 70
    move v2, v0

    :goto_1
    iget v3, p0, Lcom/google/zxing/qrcode/a/b;->width:I

    if-ge v2, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    aget-object v3, v3, v1

    aput-byte p1, v3, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method public cB()[[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/zxing/qrcode/a/b;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/zxing/qrcode/a/b;->width:I

    return v0
.end method

.method public k(II)B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public set(III)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    .line 62
    return-void
.end method

.method public set(IIZ)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/qrcode/a/b;->width:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/google/zxing/qrcode/a/b;->height:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/qrcode/a/b;->height:I

    if-ge v2, v3, :cond_1

    .line 80
    move v3, v1

    :goto_1
    iget v4, p0, Lcom/google/zxing/qrcode/a/b;->width:I

    if-ge v3, v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/google/zxing/qrcode/a/b;->kg:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v3

    packed-switch v4, :pswitch_data_0

    .line 89
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :pswitch_0
    const-string v4, " 1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    goto :goto_2

    .line 83
    :pswitch_1
    const-string v4, " 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    nop

    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
