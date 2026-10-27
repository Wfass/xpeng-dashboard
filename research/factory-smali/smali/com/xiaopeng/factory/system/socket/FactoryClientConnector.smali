.class public Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
.super Ljava/lang/Object;
.source "FactoryClientConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;
    }
.end annotation


# static fields
.field private static final FACTORY_SOCKET_NAME:Ljava/lang/String; = "com.xiaopeng.factorysocket"

.field private static final TAG:Ljava/lang/String; = "FactoryClientConnector"

.field private static final TAG_RECEIVE_DATA:Ljava/lang/String; = "data"

.field private static final WHAT_RECEIVE_DATA:I = 0x64

.field private static sFactoryClientConnector:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;


# instance fields
.field private mFactoryClientSocket:Landroid/net/LocalSocket;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;-><init>(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mListener:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->connectFactorySocket()V

    return-void
.end method

.method private connectFactorySocket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, "FactoryClientConnector"

    const-string v1, "connect factory socket"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "com.xiaopeng.factorysocket"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 82
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 84
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 85
    .local v0, "inputStream":Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 86
    .local v1, "buffer":[B
    const/4 v2, -0x1

    move v3, v2

    .line 87
    .local v3, "len":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    if-eq v4, v2, :cond_2

    .line 88
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 89
    .local v4, "data":Ljava/lang/String;
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 90
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0x64

    iput v6, v5, Landroid/os/Message;->what:I

    .line 91
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "data"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 93
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    iget-object v7, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
    .locals 2

    const-class v0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->sFactoryClientConnector:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-direct {v1}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;-><init>()V

    sput-object v1, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->sFactoryClientConnector:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    .line 35
    :cond_0
    sget-object v1, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->sFactoryClientConnector:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public creatConnection()V
    .locals 1

    .line 57
    new-instance v0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$2;-><init>(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 122
    :try_start_0
    const-string v0, "FactoryClientConnector"

    const-string v1, "disconnect factory socket"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 127
    iput-object v1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    .line 129
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mListener:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    .line 130
    sput-object v1, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->sFactoryClientConnector:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public declared-synchronized send([B)V
    .locals 3
    .param p1, "buffer"    # [B

    monitor-enter p0

    .line 105
    :try_start_0
    const-string v0, "FactoryClientConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send to factory server buffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-static {p1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mFactoryClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 108
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    const-string v1, "FactoryClientConnector"

    const-string v2, "buffer sent"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    goto :goto_0

    .line 104
    .end local p1    # "buffer":[B
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 111
    .restart local p1    # "buffer":[B
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    .end local p1    # "buffer":[B
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
    throw p1
.end method

.method public setReceiverListener(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->mListener:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    .line 54
    return-void
.end method
