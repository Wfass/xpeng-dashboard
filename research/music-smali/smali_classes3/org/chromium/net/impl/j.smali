.class public Lorg/chromium/net/impl/j;
.super Lorg/chromium/net/l;
.source "NetworkExceptionImpl.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field protected final b:I

.field protected final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lorg/chromium/net/impl/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/j;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-boolean p1, Lorg/chromium/net/impl/j;->d:Z

    if-nez p1, :cond_1

    if-lez p2, :cond_0

    const/16 p1, 0xc

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    sget-boolean p1, Lorg/chromium/net/impl/j;->d:Z

    if-nez p1, :cond_3

    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_3
    :goto_1
    iput p2, p0, Lorg/chromium/net/impl/j;->b:I

    .line 32
    iput p3, p0, Lorg/chromium/net/impl/j;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/chromium/net/impl/j;->b:I

    return v0
.end method

.method public b()Z
    .locals 2

    .line 47
    iget v0, p0, Lorg/chromium/net/impl/j;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/chromium/net/l;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", ErrorCode="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/net/impl/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lorg/chromium/net/impl/j;->c:I

    if-eqz v1, :cond_0

    const-string v1, ", InternalErrorCode="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/net/impl/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", Retryable="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/net/impl/j;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
