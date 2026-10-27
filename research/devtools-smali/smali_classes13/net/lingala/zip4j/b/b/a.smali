.class Lnet/lingala/zip4j/b/b/a;
.super Lnet/lingala/zip4j/b/b/b;
.source "AesCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/b/b/b<",
        "Lnet/lingala/zip4j/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private amH:[B

.field private amI:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    .line 14
    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    .line 15
    const/4 p1, 0x0

    iput p1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    .line 19
    return-void
.end method

.method private a(Lnet/lingala/zip4j/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lnet/lingala/zip4j/a/a;->sp()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/a;->L([B)V

    .line 30
    invoke-virtual {p1}, Lnet/lingala/zip4j/a/a;->so()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/b/b/a;->L([B)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 23
    new-instance p1, Lnet/lingala/zip4j/a/a;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/a/a;-><init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 24
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/b/b/a;->a(Lnet/lingala/zip4j/a/a;)V

    .line 25
    return-object p1
.end method

.method protected synthetic b(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/a;->a(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/a;

    move-result-object p1

    return-object p1
.end method

.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    iget v1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/b/b/b;->write([BII)V

    .line 70
    iput v2, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/b/b/a;->sy()Lnet/lingala/zip4j/a/c;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/a/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/a/a;->sn()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/a;->L([B)V

    .line 74
    invoke-super {p0}, Lnet/lingala/zip4j/b/b/b;->closeEntry()V

    .line 75
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/a;->write([B)V

    .line 36
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/b/b/a;->write([BII)V

    .line 41
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget v0, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    rsub-int/lit8 v0, v0, 0x10

    if-lt p3, v0, :cond_1

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    iget v1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    iget v2, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object p2, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-super {p0, p2, v1, v0}, Lnet/lingala/zip4j/b/b/b;->write([BII)V

    .line 48
    iget p2, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    rsub-int/lit8 p2, p2, 0x10

    .line 49
    sub-int/2addr p3, p2

    .line 50
    iput v1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    .line 57
    if-eqz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 58
    add-int v2, p3, p2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput v0, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    .line 60
    iget v0, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    sub-int/2addr p3, v0

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;->write([BII)V

    .line 64
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/a;->amH:[B

    iget v1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget p1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/b/b/a;->amI:I

    .line 54
    return-void
.end method
