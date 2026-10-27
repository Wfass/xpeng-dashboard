.class Lcfr;
.super Ljava/io/ByteArrayOutputStream;
.source "ExtendedByteArrayOutputStream.java"


# instance fields
.field final a:Lcfv;

.field final b:Lcfx;


# direct methods
.method constructor <init>(Lcfv;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcfr;->a:Lcfv;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcfr;->b:Lcfx;

    return-void
.end method

.method constructor <init>(Lcfx;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcfr;->a:Lcfv;

    .line 22
    iput-object p1, p0, Lcfr;->b:Lcfx;

    return-void
.end method


# virtual methods
.method a()Ljava/io/OutputStream;
    .locals 1

    .line 40
    iget-object v0, p0, Lcfr;->a:Lcfv;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcfv;->f()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcfr;->b:Lcfx;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lcfx;->f()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .locals 4

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcfr;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcfr;->reset()V

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    new-instance v1, Lcft;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcft;-><init>(BZ[B)V

    .line 32
    invoke-virtual {v1}, Lcft;->c()[B

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcfr;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    invoke-virtual {p0}, Lcfr;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
