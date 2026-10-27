.class final Lcom/google/zxing/qrcode/a/a;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final ke:[B

.field private final kf:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/zxing/qrcode/a/a;->ke:[B

    .line 26
    iput-object p2, p0, Lcom/google/zxing/qrcode/a/a;->kf:[B

    .line 27
    return-void
.end method


# virtual methods
.method public cA()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/a;->kf:[B

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/a;->ke:[B

    return-object v0
.end method
