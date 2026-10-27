.class Lchv;
.super Lchr;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;


# instance fields
.field private c:Lchr;

.field private final d:Ljava/io/DataOutputStream;

.field private final e:Lcij;

.field private final f:Lcis;

.field private final g:Lcim;

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/io/IOException;

.field private final o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lchv;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "chv"

    invoke-static {v0}, Lchv;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lchv;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lchv;->a:Z

    return-void
.end method

.method constructor <init>(Lchr;Lchu;)V
    .locals 12

    invoke-direct {p0}, Lchr;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchv;->i:Z

    iput-boolean v0, p0, Lchv;->j:Z

    iput-boolean v0, p0, Lchv;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lchv;->l:I

    iput-boolean v1, p0, Lchv;->m:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lchv;->n:Ljava/io/IOException;

    new-array v0, v0, [B

    iput-object v0, p0, Lchv;->o:[B

    if-eqz p1, :cond_1

    iput-object p1, p0, Lchv;->c:Lchr;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lchv;->d:Ljava/io/DataOutputStream;

    new-instance p1, Lcis;

    const/high16 v0, 0x10000

    invoke-direct {p1, v0}, Lcis;-><init>(I)V

    iput-object p1, p0, Lchv;->f:Lcis;

    invoke-virtual {p2}, Lchu;->a()I

    move-result p1

    invoke-static {p1}, Lchv;->a(I)I

    move-result v8

    iget-object v2, p0, Lchv;->f:Lcis;

    invoke-virtual {p2}, Lchu;->c()I

    move-result v3

    invoke-virtual {p2}, Lchu;->d()I

    move-result v4

    invoke-virtual {p2}, Lchu;->e()I

    move-result v5

    invoke-virtual {p2}, Lchu;->f()I

    move-result v6

    invoke-virtual {p2}, Lchu;->g()I

    move-result v9

    invoke-virtual {p2}, Lchu;->h()I

    move-result v10

    invoke-virtual {p2}, Lchu;->i()I

    move-result v11

    move v7, p1

    invoke-static/range {v2 .. v11}, Lcim;->a(Lcis;IIIIIIIII)Lcim;

    move-result-object v0

    iput-object v0, p0, Lchv;->g:Lcim;

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->c()Lcij;

    move-result-object v0

    iput-object v0, p0, Lchv;->e:Lcij;

    invoke-virtual {p2}, Lchu;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lchv;->e:Lcij;

    invoke-virtual {v2, p1, v0}, Lcij;->a(I[B)V

    iput-boolean v1, p0, Lchv;->i:Z

    :cond_0
    invoke-virtual {p2}, Lchu;->e()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {p2}, Lchu;->d()I

    move-result v0

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x9

    invoke-virtual {p2}, Lchu;->c()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lchv;->h:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private static a(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-le v0, p0, :cond_0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    .locals 3

    iget-object v0, p0, Lchv;->f:Lcis;

    invoke-virtual {v0}, Lcis;->c()I

    move-result v0

    iget-object v1, p0, Lchv;->g:Lcim;

    invoke-virtual {v1}, Lcim;->d()I

    move-result v1

    sget-boolean v2, Lchv;->a:Z

    if-nez v2, :cond_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_1
    :goto_0
    sget-boolean v2, Lchv;->a:Z

    if-nez v2, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v2, v0, 0x2

    if-ge v2, v1, :cond_4

    invoke-direct {p0, v1, v0}, Lchv;->a(II)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->a()V

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->d()I

    move-result v1

    sget-boolean v0, Lchv;->a:Z

    if-nez v0, :cond_6

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lchv;->b(I)V

    :goto_3
    iget v0, p0, Lchv;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lchv;->l:I

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->e()V

    iget-object v0, p0, Lchv;->f:Lcis;

    invoke-virtual {v0}, Lcis;->a()V

    return-void
.end method

.method private a(II)V
    .locals 2

    iget-boolean v0, p0, Lchv;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lchv;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lchv;->j:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa0

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    :goto_0
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lchv;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lchv;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p1, p0, Lchv;->d:Ljava/io/DataOutputStream;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-boolean p1, p0, Lchv;->k:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lchv;->d:Ljava/io/DataOutputStream;

    iget p2, p0, Lchv;->h:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_3
    iget-object p1, p0, Lchv;->f:Lcis;

    iget-object p2, p0, Lchv;->c:Lchr;

    invoke-virtual {p1, p2}, Lcis;->a(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lchv;->k:Z

    iput-boolean p1, p0, Lchv;->j:Z

    iput-boolean p1, p0, Lchv;->i:Z

    return-void
.end method

.method private b()V
    .locals 2

    sget-boolean v0, Lchv;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lchv;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lchv;->n:Ljava/io/IOException;

    if-nez v0, :cond_3

    iget-object v0, p0, Lchv;->e:Lcij;

    invoke-virtual {v0}, Lcij;->d()V

    :goto_1
    :try_start_0
    iget v0, p0, Lchv;->l:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->f()Z

    invoke-direct {p0}, Lchv;->a()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lchv;->c:Lchr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchr;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchv;->m:Z

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchv;->n:Ljava/io/IOException;

    throw v0

    :cond_3
    throw v0
.end method

.method private b(I)V
    .locals 4

    :goto_0
    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lchv;->d:Ljava/io/DataOutputStream;

    iget-boolean v3, p0, Lchv;->i:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lchv;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lchv;->e:Lcij;

    iget-object v2, p0, Lchv;->c:Lchr;

    invoke-virtual {v0, v2, p1, v1}, Lcij;->a(Ljava/io/OutputStream;II)V

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lchv;->i:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lchv;->j:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lchv;->c:Lchr;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lchv;->m:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lchv;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lchv;->c:Lchr;

    invoke-virtual {v0}, Lchr;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lchv;->n:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lchv;->n:Ljava/io/IOException;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lchv;->c:Lchr;

    :cond_2
    iget-object v0, p0, Lchv;->n:Ljava/io/IOException;

    if-nez v0, :cond_3

    return-void

    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lchv;->n:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lchv;->m:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lchv;->e:Lcij;

    invoke-virtual {v0}, Lcij;->c()V

    :goto_0
    iget v0, p0, Lchv;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->f()Z

    invoke-direct {p0}, Lchv;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lchv;->c:Lchr;

    invoke-virtual {v0}, Lchr;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lchv;->n:Ljava/io/IOException;

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

    iget-object v0, p0, Lchv;->o:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lchv;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lchv;->n:Ljava/io/IOException;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lchv;->m:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lchv;->e:Lcij;

    invoke-virtual {v0, p1, p2, p3}, Lcij;->a([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lchv;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lchv;->l:I

    iget-object v0, p0, Lchv;->g:Lcim;

    invoke-virtual {v0}, Lcim;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lchv;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lchv;->n:Ljava/io/IOException;

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
