.class public Lchu;
.super Lchq;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lchu;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "chu"

    invoke-static {v0}, Lchu;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lchu;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lchu;->a:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lchu;->c:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lchu;->d:[I

    return-void

    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x8
        0x18
        0x30
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lchq;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lchu;->f:[B

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0}, Lchu;->a(I)V
    :try_end_0
    .catch Lcia; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean v0, Lchu;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lchu;->e:I

    return v0
.end method

.method public a(Lchr;)Lchr;
    .locals 1

    iget v0, p0, Lchu;->j:I

    if-nez v0, :cond_0

    new-instance v0, Lchz;

    invoke-direct {v0, p1}, Lchz;-><init>(Lchr;)V

    return-object v0

    :cond_0
    new-instance v0, Lchv;

    invoke-direct {v0, p1, p0}, Lchv;-><init>(Lchr;Lchu;)V

    return-object v0
.end method

.method public a(I)V
    .locals 4

    if-ltz p1, :cond_4

    const/16 v0, 0x9

    if-gt p1, v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lchu;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lchu;->h:I

    const/4 v2, 0x2

    iput v2, p0, Lchu;->i:I

    sget-object v3, Lchu;->c:[I

    aget v3, v3, p1

    iput v3, p0, Lchu;->e:I

    const/4 v3, 0x4

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lchu;->j:I

    iput v3, p0, Lchu;->l:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x111

    :goto_0
    iput v0, p0, Lchu;->k:I

    sget-object v0, Lchu;->d:[I

    aget p1, v0, p1

    iput p1, p0, Lchu;->m:I

    goto :goto_2

    :cond_1
    iput v2, p0, Lchu;->j:I

    const/16 v0, 0x14

    iput v0, p0, Lchu;->l:I

    if-ne p1, v3, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/16 p1, 0x20

    goto :goto_1

    :cond_3
    const/16 p1, 0x40

    :goto_1
    iput p1, p0, Lchu;->k:I

    iput v1, p0, Lchu;->m:I

    :goto_2
    return-void

    :cond_4
    new-instance v0, Lcia;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported preset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcia;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .locals 4

    const-string v0, " B"

    const/16 v1, 0x1000

    if-lt p1, v1, :cond_1

    const/high16 v1, 0x30000000

    if-gt p1, v1, :cond_0

    iput p1, p0, Lchu;->e:I

    return-void

    :cond_0
    new-instance v1, Lcia;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "LZMA2 dictionary size must not exceed 768 MiB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcia;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcia;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "LZMA2 dictionary size must be at least 4 KiB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcia;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lchu;->f:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lchu;->g:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-boolean v0, Lchu;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lchu;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lchu;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lchu;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lchu;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lchu;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lchu;->m:I

    return v0
.end method
