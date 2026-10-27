.class final Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "KeyStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 494
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    .line 496
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

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    const/4 v0, -0x1

    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const/4 v0, -0x1

    return v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 512
    return p3
.end method
