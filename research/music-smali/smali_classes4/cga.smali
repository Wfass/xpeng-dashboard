.class public Lcga;
.super Lcfz;
.source "MqttConnack.java"


# instance fields
.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(B[B)V
    .locals 1

    const/4 p1, 0x2

    .line 35
    invoke-direct {p0, p1}, Lcfz;-><init>(B)V

    .line 36
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcga;->d:Z

    .line 39
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcga;->c:I

    .line 40
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected A_()[B
    .locals 1

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [B

    return-object v0
.end method

.method public B_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Con"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcfz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " session present:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcga;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcga;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w_()I
    .locals 1

    .line 44
    iget v0, p0, Lcga;->c:I

    return v0
.end method
