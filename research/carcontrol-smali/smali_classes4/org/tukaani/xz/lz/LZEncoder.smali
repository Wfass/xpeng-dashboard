.class public abstract Lorg/tukaani/xz/lz/LZEncoder;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MF_BT4:I = 0x14

.field public static final MF_HC4:I = 0x4

.field static synthetic class$org$tukaani$xz$lz$LZEncoder:Ljava/lang/Class;


# instance fields
.field final buf:[B

.field private finishing:Z

.field private final keepSizeAfter:I

.field private final keepSizeBefore:I

.field final matchLenMax:I

.field final niceLen:I

.field private pendingSize:I

.field private readLimit:I

.field readPos:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/lz/LZEncoder;->class$org$tukaani$xz$lz$LZEncoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.lz.LZEncoder"

    invoke-static {v0}, Lorg/tukaani/xz/lz/LZEncoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/lz/LZEncoder;->class$org$tukaani$xz$lz$LZEncoder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    invoke-static {p1, p2, p3, p5}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int/2addr p2, p1

    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    add-int/2addr p3, p5

    iput p3, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    iput p5, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    iput p4, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    return-void
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

.method private static getBufSize(IIII)I
    .locals 0

    add-int/2addr p1, p0

    add-int/2addr p2, p3

    div-int/lit8 p0, p0, 0x2

    const/high16 p3, 0x40000

    add-int/2addr p0, p3

    const/high16 p3, 0x20000000

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static getInstance(IIIIIII)Lorg/tukaani/xz/lz/LZEncoder;
    .locals 8

    const/4 v0, 0x4

    if-eq p5, v0, :cond_1

    const/16 v0, 0x14

    if-ne p5, v0, :cond_0

    new-instance p5, Lorg/tukaani/xz/lz/BT4;

    move-object v1, p5

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/tukaani/xz/lz/BT4;-><init>(IIIIII)V

    return-object p5

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p5, Lorg/tukaani/xz/lz/HC4;

    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/HC4;-><init>(IIIIII)V

    return-object p5
.end method

.method public static getMemoryUsage(IIIII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    add-int/lit8 p1, p1, 0xa

    const/4 p2, 0x4

    if-eq p4, p2, :cond_1

    const/16 p2, 0x14

    if-ne p4, p2, :cond_0

    invoke-static {p0}, Lorg/tukaani/xz/lz/BT4;->getMemoryUsage(I)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0}, Lorg/tukaani/xz/lz/HC4;->getMemoryUsage(I)I

    move-result p0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method private moveWindow()V
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    return-void
.end method

.method static normalize([II)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p1, :cond_0

    aput v0, p0, v1

    goto :goto_1

    :cond_0
    aget v2, p0, v1

    sub-int/2addr v2, p1

    aput v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processPendingBytes()V
    .locals 3

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    sget-boolean v1, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public fillWindow([BII)I
    .locals 3

    sget-boolean v0, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->moveWindow()V

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    array-length v1, v0

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_3

    array-length p3, v0

    sub-int/2addr p3, v2

    :cond_3
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    if-lt p1, p2, :cond_4

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    :cond_4
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return p3
.end method

.method public getAvail()I
    .locals 2

    sget-boolean v0, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte(I)I
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getByte(II)I
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getMatchLen(II)I
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v2, p1

    aget-byte v2, v1, v2

    add-int v3, v0, p1

    aget-byte v1, v1, v3

    if-ne v2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public getMatchLen(III)I
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v0, p1

    sub-int p1, v0, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    add-int v2, v0, p2

    aget-byte v2, v1, v2

    add-int v3, p1, p2

    aget-byte v1, v1, v3

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public abstract getMatches()Lorg/tukaani/xz/lz/Matches;
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    return v0
.end method

.method public hasEnoughData(I)Z
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStarted()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method movePos(II)I
    .locals 2

    sget-boolean v0, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    if-ge v1, p1, :cond_3

    if-lt v1, p2, :cond_2

    iget-boolean p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez p1, :cond_3

    :cond_2
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public setFinishing()V
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    iput-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return-void
.end method

.method public setFlushing()V
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    return-void
.end method

.method public setPresetDict(I[B)V
    .locals 3

    sget-boolean v0, Lorg/tukaani/xz/lz/LZEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    array-length v0, p2

    sub-int/2addr v0, p1

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    :cond_4
    return-void
.end method

.method public abstract skip(I)V
.end method

.method public verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v3

    iget-object v4, p1, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
