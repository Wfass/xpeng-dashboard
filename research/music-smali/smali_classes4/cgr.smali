.class public Lcgr;
.super Lcgs;
.source "MqttUnsubscribe.java"


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/16 p1, 0xa

    .line 51
    invoke-direct {p0, p1}, Lcgs;-><init>(B)V

    .line 52
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 53
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcgr;->a:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcgr;->d:I

    .line 57
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcgr;->c:[Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcgr;->c:[Ljava/lang/String;

    iget v1, p0, Lcgr;->d:I

    invoke-virtual {p0, p2}, Lcgr;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected A_()[B
    .locals 3

    .line 92
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    iget v2, p0, Lcgr;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 95
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lceo;

    invoke-direct {v1, v0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    invoke-super {p0}, Lcgs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " names:["

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 76
    :goto_0
    iget v2, p0, Lcgr;->d:I

    if-lt v1, v2, :cond_0

    const-string v1, "]"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ", "

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcgr;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected y_()B
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcgr;->b:Z

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

.method public z_()[B
    .locals 4

    .line 104
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 106
    :goto_0
    iget-object v3, p0, Lcgr;->c:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    iget-object v3, p0, Lcgr;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v1, v3}, Lcgr;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lceo;

    invoke-direct {v1, v0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
