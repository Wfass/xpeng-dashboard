.class Lchp;
.super Lchr;


# instance fields
.field private a:Lchr;

.field private final b:Lcie;

.field private final c:[B

.field private d:Z

.field private e:Ljava/io/IOException;

.field private final f:[B


# direct methods
.method constructor <init>(Lchr;Lcho;)V
    .locals 1

    invoke-direct {p0}, Lchr;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lchp;->c:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lchp;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lchp;->e:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lchp;->f:[B

    iput-object p1, p0, Lchp;->a:Lchr;

    new-instance p1, Lcie;

    invoke-virtual {p2}, Lcho;->a()I

    move-result p2

    invoke-direct {p1, p2}, Lcie;-><init>(I)V

    iput-object p1, p0, Lchp;->b:Lcie;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lchp;->a:Lchr;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lchr;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lchp;->e:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lchp;->e:Ljava/io/IOException;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lchp;->a:Lchr;

    :cond_1
    iget-object v0, p0, Lchp;->e:Ljava/io/IOException;

    if-nez v0, :cond_2

    return-void

    :cond_2
    throw v0
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lchp;->e:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lchp;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lchp;->a:Lchr;

    invoke-virtual {v0}, Lchr;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchp;->e:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v0, Lcic;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lcic;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    throw v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lchp;->f:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lchp;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lchp;->e:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lchp;->d:Z

    if-nez v0, :cond_1

    :goto_0
    const/16 v0, 0x1000

    if-le p3, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lchp;->b:Lcie;

    iget-object v2, p0, Lchp;->c:[B

    invoke-virtual {v1, p1, p2, v0, v2}, Lcie;->a([BII[B)V

    iget-object v0, p0, Lchp;->a:Lchr;

    iget-object v1, p0, Lchp;->c:[B

    invoke-virtual {v0, v1}, Lchr;->write([B)V

    add-int/lit16 p2, p2, 0x1000

    add-int/lit16 p3, p3, -0x1000

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lchp;->b:Lcie;

    iget-object v1, p0, Lchp;->c:[B

    invoke-virtual {v0, p1, p2, p3, v1}, Lcie;->a([BII[B)V

    iget-object p1, p0, Lchp;->a:Lchr;

    iget-object p2, p0, Lchp;->c:[B

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lchr;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, p0, Lchp;->e:Ljava/io/IOException;

    throw p1

    :cond_1
    new-instance p1, Lcic;

    const-string p2, "Stream finished"

    invoke-direct {p1, p2}, Lcic;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
