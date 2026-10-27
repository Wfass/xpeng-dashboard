.class public Lcgi;
.super Lcfz;
.source "MqttPubAck.java"


# direct methods
.method public constructor <init>(B[B)V
    .locals 0

    const/4 p1, 0x4

    .line 32
    invoke-direct {p0, p1}, Lcfz;-><init>(B)V

    .line 33
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcgi;->a:I

    .line 36
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Lcgm;)V
    .locals 1

    const/4 v0, 0x4

    .line 40
    invoke-direct {p0, v0}, Lcfz;-><init>(B)V

    .line 41
    invoke-virtual {p1}, Lcgm;->j()I

    move-result p1

    iput p1, p0, Lcgi;->a:I

    return-void
.end method


# virtual methods
.method protected A_()[B
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcgi;->l()[B

    move-result-object v0

    return-object v0
.end method
