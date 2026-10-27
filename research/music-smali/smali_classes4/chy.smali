.class Lchy;
.super Lchr;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;


# instance fields
.field private c:Lchr;

.field private final d:Lciy;

.field private final e:[B

.field private f:I

.field private g:I

.field private h:Ljava/io/IOException;

.field private i:Z

.field private final j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lchy;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "chy"

    invoke-static {v0}, Lchy;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lchy;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lchy;->a:Z

    return-void
.end method

.method constructor <init>(Lchr;Lciy;)V
    .locals 2

    invoke-direct {p0}, Lchr;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lchy;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lchy;->f:I

    iput v0, p0, Lchy;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lchy;->h:Ljava/io/IOException;

    iput-boolean v0, p0, Lchy;->i:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lchy;->j:[B

    if-eqz p1, :cond_0

    iput-object p1, p0, Lchy;->c:Lchr;

    iput-object p2, p0, Lchy;->d:Lciy;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private a()V
    .locals 4

    sget-boolean v0, Lchy;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lchy;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lchy;->h:Ljava/io/IOException;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lchy;->c:Lchr;

    iget-object v1, p0, Lchy;->e:[B

    iget v2, p0, Lchy;->f:I

    iget v3, p0, Lchy;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lchr;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchy;->i:Z

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchy;->h:Ljava/io/IOException;

    throw v0

    :cond_2
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lchy;->c:Lchr;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lchy;->i:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lchy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lchy;->c:Lchr;

    invoke-virtual {v0}, Lchr;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lchy;->h:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lchy;->h:Ljava/io/IOException;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lchy;->c:Lchr;

    :cond_2
    iget-object v0, p0, Lchy;->h:Ljava/io/IOException;

    if-nez v0, :cond_3

    return-void

    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 2

    new-instance v0, Lcia;

    const-string v1, "Flushing is not supported"

    invoke-direct {v0, v1}, Lcia;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lchy;->j:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lchy;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    if-ltz v0, :cond_6

    array-length v1, p1

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lchy;->h:Ljava/io/IOException;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lchy;->i:Z

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    if-lez p3, :cond_3

    iget v0, p0, Lchy;->f:I

    iget v1, p0, Lchy;->g:I

    add-int/2addr v0, v1

    const/16 v1, 0x1000

    rsub-int v0, v0, 0x1000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lchy;->e:[B

    iget v3, p0, Lchy;->f:I

    iget v4, p0, Lchy;->g:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v2, p0, Lchy;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lchy;->g:I

    iget-object v0, p0, Lchy;->d:Lciy;

    iget-object v2, p0, Lchy;->e:[B

    iget v3, p0, Lchy;->f:I

    iget v4, p0, Lchy;->g:I

    invoke-interface {v0, v2, v3, v4}, Lciy;->a([BII)I

    move-result v0

    sget-boolean v2, Lchy;->a:Z

    if-nez v2, :cond_2

    iget v2, p0, Lchy;->g:I

    if-gt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iget v2, p0, Lchy;->g:I

    sub-int/2addr v2, v0

    iput v2, p0, Lchy;->g:I

    :try_start_0
    iget-object v2, p0, Lchy;->c:Lchr;

    iget-object v3, p0, Lchy;->e:[B

    iget v4, p0, Lchy;->f:I

    invoke-virtual {v2, v3, v4, v0}, Lchr;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lchy;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lchy;->f:I

    iget v0, p0, Lchy;->f:I

    iget v2, p0, Lchy;->g:I

    add-int v3, v0, v2

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lchy;->e:[B

    const/4 v3, 0x0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lchy;->f:I

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lchy;->h:Ljava/io/IOException;

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcic;

    const-string p2, "Stream finished or closed"

    invoke-direct {p1, p2}, Lcic;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    throw v0

    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
