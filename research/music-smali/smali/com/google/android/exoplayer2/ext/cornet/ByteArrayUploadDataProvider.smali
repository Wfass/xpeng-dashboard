.class final Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;
.super Lorg/chromium/net/u;
.source "ByteArrayUploadDataProvider.java"


# instance fields
.field private final data:[B

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/chromium/net/u;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->data:[B

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/v;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 43
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->data:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->position:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->position:I

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 45
    iget p2, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->position:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->position:I

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lorg/chromium/net/v;->a(Z)V

    return-void
.end method

.method public rewind(Lorg/chromium/net/v;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;->position:I

    .line 52
    invoke-virtual {p1}, Lorg/chromium/net/v;->a()V

    return-void
.end method
