.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;
.super Ljava/net/SocketImpl;
.source "HookPlainSocketKitKatImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAddress:Ljava/lang/reflect/Field;

.field private mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

.field private mDomain:Ljava/lang/String;

.field private mFd:Ljava/lang/reflect/Field;

.field private mHookAccept:Ljava/lang/reflect/Method;

.field private mHookAvailable:Ljava/lang/reflect/Method;

.field private mHookBind:Ljava/lang/reflect/Method;

.field private mHookClose:Ljava/lang/reflect/Method;

.field private mHookConnectHostPort:Ljava/lang/reflect/Method;

.field private mHookConnectInetAddrPort:Ljava/lang/reflect/Method;

.field private mHookConnectSocketAddrPort:Ljava/lang/reflect/Method;

.field private mHookCreate:Ljava/lang/reflect/Method;

.field private mHookGetFileDescriptor:Ljava/lang/reflect/Method;

.field private mHookGetInputStream:Ljava/lang/reflect/Method;

.field private mHookGetOutputStream:Ljava/lang/reflect/Method;

.field private mHookListen:Ljava/lang/reflect/Method;

.field private mHookSendUrgentData:Ljava/lang/reflect/Method;

.field private mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

.field private mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

.field private mPort:Ljava/lang/reflect/Field;

.field private final mSocketImpl:Ljava/net/SocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 8

    .line 60
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 35
    const-string v0, "SocketImplHook"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->TAG:Ljava/lang/String;

    .line 460
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    .line 61
    nop

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 66
    const-string v4, "create"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookCreate:Ljava/lang/reflect/Method;

    .line 67
    const-string v4, "connect"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectHostPort:Ljava/lang/reflect/Method;

    .line 68
    const-string v4, "connect"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/net/InetAddress;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectInetAddrPort:Ljava/lang/reflect/Method;

    .line 69
    const-string v4, "connect"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/net/SocketAddress;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectSocketAddrPort:Ljava/lang/reflect/Method;

    .line 70
    const-string v4, "bind"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/net/InetAddress;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookBind:Ljava/lang/reflect/Method;

    .line 71
    const-string v4, "listen"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookListen:Ljava/lang/reflect/Method;

    .line 72
    const-string v4, "accept"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/net/SocketImpl;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAccept:Ljava/lang/reflect/Method;

    .line 73
    const-string v4, "getInputStream"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetInputStream:Ljava/lang/reflect/Method;

    .line 74
    const-string v4, "getOutputStream"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetOutputStream:Ljava/lang/reflect/Method;

    .line 75
    const-string v4, "available"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAvailable:Ljava/lang/reflect/Method;

    .line 76
    const-string v4, "close"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookClose:Ljava/lang/reflect/Method;

    .line 81
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookCreate:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 82
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectHostPort:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectInetAddrPort:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectSocketAddrPort:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookBind:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetInputStream:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetOutputStream:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAvailable:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookClose:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const-string v4, "sendUrgentData"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookSendUrgentData:Ljava/lang/reflect/Method;

    .line 93
    const-string v4, "getFD$"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetFileDescriptor:Ljava/lang/reflect/Method;

    .line 94
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetFileDescriptor:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->hookSuperClassMembers(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    nop

    .line 99
    const-string v3, "SocketImplHook"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    goto :goto_2

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    .line 108
    :goto_2
    new-instance p1, Ljava/io/FileDescriptor;

    invoke-direct {p1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->fd:Ljava/io/FileDescriptor;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method private hookSuperClassMembers(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 114
    const-class v0, Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "address"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mAddress:Ljava/lang/reflect/Field;

    .line 116
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mPort:Ljava/lang/reflect/Field;

    .line 117
    const-string v0, "fd"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mFd:Ljava/lang/reflect/Field;

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mAddress:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mPort:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mFd:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method private syncWithImpl()V
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 445
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mFd:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mFd:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mAddress:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mAddress:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mPort:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mPort:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_3
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string v1, "SocketImplHook"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAccept:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAccept:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .line 268
    return-void

    .line 257
    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 259
    :goto_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 260
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 262
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 266
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    nop

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAvailable:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookAvailable:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    nop

    .line 342
    return v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 333
    :goto_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 334
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 336
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookBind:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookBind:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->fd:Ljava/io/FileDescriptor;

    .line 232
    return-void

    .line 219
    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 221
    :goto_0
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 222
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 224
    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 228
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookClose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookClose:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->close()V

    .line 352
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->close()V

    .line 357
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_1
    nop

    .line 371
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 362
    :goto_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 363
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 365
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mAddress:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "SocketImplHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectHostPort:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectHostPort:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 162
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 163
    return-void

    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 153
    :goto_0
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    .line 154
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 156
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string v0, "SocketImplHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InetAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectInetAddrPort:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectInetAddrPort:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 186
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 187
    return-void

    .line 175
    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 177
    :goto_0
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    .line 178
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 180
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 184
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v0, "SocketImplHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectSocketAddrPort:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookConnectSocketAddrPort:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .line 211
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 212
    return-void

    .line 199
    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 201
    :goto_0
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    .line 202
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 204
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected create(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookCreate:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookCreate:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    nop

    .line 140
    return-void

    .line 129
    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 131
    :goto_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 134
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public getFD$()Ljava/io/FileDescriptor;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 3

    .line 427
    nop

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetFileDescriptor:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetFileDescriptor:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetInputStream:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetInputStream:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 280
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    nop

    .line 294
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mInputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 284
    :goto_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 285
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 287
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 406
    nop

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 410
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetOutputStream:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookGetOutputStream:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 309
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    nop

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mOutputStream:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 313
    :goto_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 314
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 316
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected listen(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookListen:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    nop

    .line 250
    return-void

    .line 239
    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 241
    :goto_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 244
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 248
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected sendUrgentData(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookSendUrgentData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mHookSendUrgentData:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    nop

    .line 394
    return-void

    .line 383
    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 385
    :goto_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 386
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 388
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 392
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->syncWithImpl()V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->mSocketImpl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    return-void
.end method

.method protected shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .line 375
    const/4 v0, 0x0

    return v0
.end method
