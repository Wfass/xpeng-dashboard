.class public Lcgd;
.super Ljava/io/InputStream;
.source "MqttInputStream.java"


# static fields
.field private static final a:Ljava/lang/String; = "cgd"

.field private static final b:Lcgw;


# instance fields
.field private c:Lcex;

.field private d:Ljava/io/DataInputStream;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:J

.field private g:J

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Lcgd;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcgd;->b:Lcgw;

    return-void
.end method

.method public constructor <init>(Lcex;Ljava/io/InputStream;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcgd;->c:Lcex;

    .line 48
    iput-object p1, p0, Lcgd;->c:Lcex;

    .line 49
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcgd;->d:Ljava/io/DataInputStream;

    .line 50
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/16 p1, -0x1

    .line 51
    iput-wide p1, p0, Lcgd;->f:J

    return-void
.end method

.method private b()V
    .locals 7

    .line 131
    iget-object v0, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-wide v1, p0, Lcgd;->g:J

    long-to-int v3, v1

    add-int/2addr v0, v3

    .line 132
    iget-wide v3, p0, Lcgd;->f:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcgd;->d:Ljava/io/DataInputStream;

    iget-object v4, p0, Lcgd;->h:[B

    add-int v5, v0, v2

    sub-int v6, v1, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v4, p0, Lcgd;->c:Lcex;

    invoke-virtual {v4, v3}, Lcex;->c(I)V

    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 142
    iget-wide v3, p0, Lcgd;->g:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcgd;->g:J

    .line 143
    throw v0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Lcgs;
    .locals 9

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-wide v1, p0, Lcgd;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    iget-object v1, p0, Lcgd;->d:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 93
    iget-object v5, p0, Lcgd;->c:Lcex;

    invoke-virtual {v5, v2}, Lcex;->c(I)V

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    if-lt v5, v2, :cond_0

    const/16 v6, 0xe

    if-gt v5, v6, :cond_0

    .line 101
    iget-object v5, p0, Lcgd;->d:Ljava/io/DataInputStream;

    invoke-static {v5}, Lcgs;->a(Ljava/io/DataInputStream;)Lcgu;

    move-result-object v5

    invoke-virtual {v5}, Lcgu;->a()J

    move-result-wide v5

    iput-wide v5, p0, Lcgd;->f:J

    .line 102
    iget-object v5, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget-object v1, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    iget-wide v5, p0, Lcgd;->f:J

    invoke-static {v5, v6}, Lcgs;->a(J)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    iget-object v1, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v5, v1

    iget-wide v7, p0, Lcgd;->f:J

    add-long/2addr v5, v7

    long-to-int v1, v5

    new-array v1, v1, [B

    iput-object v1, p0, Lcgd;->h:[B

    .line 106
    iput-wide v3, p0, Lcgd;->g:J

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d6c

    .line 99
    invoke-static {v1}, Lcfe;->a(I)Lceo;

    move-result-object v1

    throw v1

    .line 110
    :cond_1
    :goto_0
    iget-wide v5, p0, Lcgd;->f:J

    cmp-long v1, v5, v3

    if-ltz v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcgd;->b()V

    const-wide/16 v3, -0x1

    .line 115
    iput-wide v3, p0, Lcgd;->f:J

    .line 117
    iget-object v1, p0, Lcgd;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 118
    iget-object v3, p0, Lcgd;->h:[B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v1, p0, Lcgd;->h:[B

    invoke-static {v1}, Lcgs;->a([B)Lcgs;

    move-result-object v0

    .line 121
    sget-object v1, Lcgd;->b:Lcgw;

    sget-object v3, Lcgd;->a:Ljava/lang/String;

    const-string v4, "readMqttWireMessage"

    const-string v6, "501"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-interface {v1, v3, v4, v6, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public available()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcgd;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcgd;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcgd;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method
