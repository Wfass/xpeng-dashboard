.class public Lcgl;
.super Lcgf;
.source "MqttPubRel.java"


# direct methods
.method public constructor <init>(B[B)V
    .locals 0

    const/4 p1, 0x6

    .line 45
    invoke-direct {p0, p1}, Lcgf;-><init>(B)V

    .line 46
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcgl;->a:I

    .line 49
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Lcgk;)V
    .locals 1

    const/4 v0, 0x6

    .line 34
    invoke-direct {p0, v0}, Lcgf;-><init>(B)V

    .line 35
    invoke-virtual {p1}, Lcgk;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lcgl;->a(I)V

    return-void
.end method


# virtual methods
.method protected A_()[B
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcgl;->l()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcgf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcgl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y_()B
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcgl;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0
.end method
