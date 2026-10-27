.class Lorg/tukaani/xz/BCJDecoder;
.super Lorg/tukaani/xz/BCJCoder;

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$tukaani$xz$BCJDecoder:Ljava/lang/Class;


# instance fields
.field private final filterID:J

.field private final startOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/BCJDecoder;->class$org$tukaani$xz$BCJDecoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.BCJDecoder"

    invoke-static {v0}, Lorg/tukaani/xz/BCJDecoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/BCJDecoder;->class$org$tukaani$xz$BCJDecoder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tukaani/xz/BCJDecoder;->$assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    sget-boolean v0, Lorg/tukaani/xz/BCJDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    array-length p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iput p2, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_2

    :cond_2
    array-length p1, p3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    move p1, p2

    :goto_1
    if-ge p2, v0, :cond_3

    aget-byte v1, p3, p2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, p2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    :goto_2
    return-void

    :cond_4
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p2, "Unsupported BCJ filter properties"

    invoke-direct {p1, p2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
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
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6

    iget-wide v0, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v0, Lorg/tukaani/xz/simple/X86;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x5

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    new-instance v0, Lorg/tukaani/xz/simple/PowerPC;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x6

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    new-instance v0, Lorg/tukaani/xz/simple/IA64;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x7

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    new-instance v0, Lorg/tukaani/xz/simple/ARM;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x8

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    new-instance v0, Lorg/tukaani/xz/simple/ARMThumb;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x9

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    new-instance v0, Lorg/tukaani/xz/simple/SPARC;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v3, v1}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lorg/tukaani/xz/BCJDecoder;->$assertionsDisabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {v1, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getMemoryUsage()I
    .locals 1

    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method
