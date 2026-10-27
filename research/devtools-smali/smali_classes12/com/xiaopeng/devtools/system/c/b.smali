.class public Lcom/xiaopeng/devtools/system/c/b;
.super Ljava/lang/Object;
.source "TcpClientConnector.java"


# instance fields
.field private BB:Ljava/net/Socket;

.field private BC:Ljava/lang/String;

.field private BD:I

.field private BE:Ljava/io/OutputStream;

.field BF:[B

.field private BG:Lcom/xiaopeng/devtools/utils/b/a;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BF:[B

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    .line 33
    new-instance p1, Lcom/xiaopeng/devtools/utils/b/a;

    const/high16 p2, 0x4000000

    invoke-direct {p1, p2}, Lcom/xiaopeng/devtools/utils/b/a;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/b;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    .line 34
    return-void
.end method

.method private kU()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "TcpClientConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect socket SerIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    const/high16 v1, 0xa00000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public cB(I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/c/b;->kU()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    .line 50
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "TcpClientConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to read from SerIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_1
    nop

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/utils/b/a;->getBuf(I)[B

    move-result-object v0

    .line 56
    nop

    .line 58
    const/16 v4, 0xa

    .line 59
    move v5, v4

    move v4, v3

    :goto_0
    if-lez p1, :cond_4

    .line 60
    iget-object v6, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/xiaopeng/devtools/system/c/b;->BF:[B

    const/16 v8, 0x1000

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 61
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 62
    iget-object v7, p0, Lcom/xiaopeng/devtools/system/c/b;->BF:[B

    invoke-static {v0, v4, v7, v6}, Lcom/xiaopeng/devtools/utils/d;->a([BI[BI)[B

    .line 63
    add-int/2addr v4, v6

    .line 64
    sub-int/2addr p1, v6

    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_3

    .line 66
    const-string v5, "TcpClientConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read garbage from SerIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SerPort: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    nop

    .line 59
    move v5, v6

    goto :goto_0

    .line 69
    :cond_3
    return-object v2

    .line 72
    :cond_4
    goto :goto_1

    .line 73
    :cond_5
    const-string p1, "TcpClientConnector"

    const-string v0, "send"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "mInputStream is null"

    aput-object v5, v4, v3

    invoke-static {p1, v0, v4}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    move-object v0, v2

    :goto_1
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 76
    const-string p1, "TcpClientConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "successfully read from SerIP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SerPort: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ret.length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    if-eqz v0, :cond_6

    array-length v3, v0

    nop

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :cond_7
    return-object v0
.end method

.method public disconnect()V
    .locals 3

    .line 123
    const-string v0, "TcpClientConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect socket SerIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 127
    iput-object v1, p0, Lcom/xiaopeng/devtools/system/c/b;->mInputStream:Ljava/io/InputStream;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 132
    iput-object v1, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 136
    iput-object v1, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_2
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :goto_0
    return-void
.end method

.method public x([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "TcpClientConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send to SerIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SerPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/system/c/b;->BD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/c/b;->kU()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BB:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BE:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 98
    const-string p1, "TcpClientConnector"

    const-string v0, "sent"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string p1, "TcpClientConnector"

    const-string v0, "send"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mOutput is null"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_3
    :goto_0
    return-void
.end method

.method public y([B)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/b;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/utils/b/a;->returnBuf([B)V

    .line 117
    return-void
.end method
