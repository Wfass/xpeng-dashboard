.class Lchz;
.super Lchr;


# instance fields
.field private a:Lchr;

.field private final b:Ljava/io/DataOutputStream;

.field private final c:[B

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/io/IOException;

.field private final h:[B


# direct methods
.method constructor <init>(Lchr;)V
    .locals 2

    invoke-direct {p0}, Lchr;-><init>()V

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lchz;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lchz;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lchz;->e:Z

    iput-boolean v0, p0, Lchz;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lchz;->g:Ljava/io/IOException;

    new-array v0, v1, [B

    iput-object v0, p0, Lchz;->h:[B

    if-eqz p1, :cond_0

    iput-object p1, p0, Lchz;->a:Lchr;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lchz;->b:Ljava/io/DataOutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lchz;->b:Ljava/io/DataOutputStream;

    iget-boolean v1, p0, Lchz;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lchz;->b:Ljava/io/DataOutputStream;

    iget v1, p0, Lchz;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lchz;->b:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lchz;->c:[B

    iget v2, p0, Lchz;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    iput v3, p0, Lchz;->d:I

    iput-boolean v3, p0, Lchz;->e:Z

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lchz;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lchz;->f:Z

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lchz;->d:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lchz;->a()V

    :cond_0
    iget-object v0, p0, Lchz;->a:Lchr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchr;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchz;->g:Ljava/io/IOException;

    throw v0

    :cond_1
    new-instance v0, Lcic;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lcic;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lchz;->a:Lchr;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lchz;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lchz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lchz;->a:Lchr;

    invoke-virtual {v0}, Lchr;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lchz;->g:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lchz;->g:Ljava/io/IOException;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lchz;->a:Lchr;

    :cond_2
    iget-object v0, p0, Lchz;->g:Ljava/io/IOException;

    if-nez v0, :cond_3

    return-void

    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lchz;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lchz;->f:Z

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lchz;->d:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lchz;->a()V

    :cond_0
    iget-object v0, p0, Lchz;->a:Lchr;

    invoke-virtual {v0}, Lchr;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchz;->g:Ljava/io/IOException;

    throw v0

    :cond_1
    new-instance v0, Lcic;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lcic;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lchz;->h:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lchz;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lchz;->g:Ljava/io/IOException;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lchz;->f:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lchz;->c:[B

    array-length v0, v0

    iget v1, p0, Lchz;->d:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lchz;->c:[B

    iget v2, p0, Lchz;->d:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    iget v1, p0, Lchz;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lchz;->d:I

    iget v0, p0, Lchz;->d:I

    iget-object v1, p0, Lchz;->c:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lchz;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lchz;->g:Ljava/io/IOException;

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcic;

    const-string p2, "Stream finished or closed"

    invoke-direct {p1, p2}, Lcic;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
