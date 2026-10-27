.class final Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;
.super Ljava/io/InputStream;
.source "KeyStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field VQ:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    .line 485
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, -0x1

    return v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    const/4 p1, -0x1

    return p1

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;->VQ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 501
    return p3
.end method
