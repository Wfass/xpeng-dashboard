.class public Lcom/xiaopeng/devtools/system/c/a;
.super Ljava/lang/Object;
.source "FtpClientConnector.java"


# instance fields
.field private BA:Lorg/apache/commons/net/ftp/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    const-string v0, "FtpClientConnector"

    const-string v1, "generate FtpClientConnector"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/c/a;->destroy()V

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/system/c/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/c;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/apache/commons/net/ftp/c;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/c;-><init>()V

    .line 164
    const v1, 0xea60

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/c;->setConnectTimeout(I)V

    .line 165
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/c;->fx(I)V

    .line 166
    new-instance v1, Lorg/apache/commons/net/ftp/d;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/d;-><init>()V

    .line 167
    const-string v2, "Asia/Shanghai"

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/d;->fR(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 169
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ftp/c;->connect(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->connect(Ljava/lang/String;)V

    .line 174
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->ur()I

    move-result p1

    .line 175
    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {v0, p3, p4}, Lorg/apache/commons/net/ftp/c;->az(Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->ur()I

    move-result p1

    .line 181
    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 185
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->bE(Z)V

    .line 186
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->fy(I)Z

    .line 187
    const/high16 p1, 0xa00000

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->setSendBufferSize(I)V

    .line 188
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->setTcpNoDelay(Z)V

    .line 189
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/c;->setKeepAlive(Z)V

    .line 190
    return-object v0

    .line 182
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->disconnect()V

    .line 183
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "login fail: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 176
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->disconnect()V

    .line 177
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "connect fail: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->uE()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :cond_0
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method public kT()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 107
    nop

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/c/a;->kT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/c;->fK(Ljava/lang/String;)Z

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/c;->uF()V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/c;->uM()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 115
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    .line 116
    if-eqz p3, :cond_0

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    goto :goto_1

    .line 119
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/a;->BA:Lorg/apache/commons/net/ftp/c;

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v6, v5}, Lorg/apache/commons/net/ftp/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v3

    .line 124
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 125
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 126
    if-nez v3, :cond_1

    .line 127
    const-string v5, "FtpClientConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ftp download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fail"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :cond_1
    if-eqz p3, :cond_2

    .line 130
    goto :goto_2

    .line 115
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_3
    :goto_2
    move v0, v3

    goto :goto_3

    .line 134
    :cond_4
    const-string p1, "FtpClientConnector"

    const-string p2, "mFTPClient is not available"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_3
    goto :goto_4

    .line 136
    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    nop

    .line 140
    :goto_4
    return v0
.end method
