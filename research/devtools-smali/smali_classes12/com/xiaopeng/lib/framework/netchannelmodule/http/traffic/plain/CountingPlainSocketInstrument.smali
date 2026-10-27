.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;
.super Ljava/lang/Object;
.source "CountingPlainSocketInstrument.java"

# interfaces
.implements Ljava/net/SocketImplFactory;


# static fields
.field private static mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

.field private static mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;


# instance fields
.field private mIsServer:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mIsServer:Z

    .line 27
    return-void
.end method

.method public static declared-synchronized initialize()V
    .locals 5

    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;

    monitor-enter v0

    .line 31
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "java.net.PlainSocketImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 32
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    .line 33
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 34
    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;

    invoke-direct {v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;-><init>(Z)V

    invoke-static {v3}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 35
    :catch_0
    move-exception v3

    .line 36
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V

    .line 39
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->isKitkat()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 42
    :try_start_2
    const-string v3, "java.net.SocksSocketImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 43
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;

    .line 44
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 45
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;

    invoke-direct {v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;-><init>(Z)V

    invoke-static {v2}, Ljava/net/ServerSocket;->setSocketFactory(Ljava/net/SocketImplFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    goto :goto_1

    .line 46
    :catch_1
    move-exception v1

    .line 47
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    .line 30
    :goto_2
    monitor-exit v0

    throw v1
.end method

.method private static isKitkat()Z
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized reset()V
    .locals 5

    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;

    monitor-enter v0

    .line 58
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/net/Socket;

    const-string v4, "factory"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 61
    :catch_0
    move-exception v3

    .line 62
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->isKitkat()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 67
    :try_start_2
    const-class v3, Ljava/net/ServerSocket;

    const-string v4, "factory"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    goto :goto_1

    .line 70
    :catch_1
    move-exception v1

    .line 71
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    .line 57
    :goto_2
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createSocketImpl()Ljava/net/SocketImpl;
    .locals 4

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->isKitkat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketImpl;

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;-><init>(Ljava/net/SocketImpl;)V

    return-object v1

    .line 82
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mIsServer:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketImpl;

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;-><init>(Ljava/net/SocketImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->isKitkat()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mIsServer:Z

    if-eqz v2, :cond_2

    .line 86
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_3

    .line 88
    :try_start_1
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mSocksSocketImplConstruct:Ljava/lang/reflect/Constructor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_2
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_3

    .line 96
    :try_start_2
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/CountingPlainSocketInstrument;->mPlainSocketImplConstruct:Ljava/lang/reflect/Constructor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c;->w(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/EmptySocketImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/EmptySocketImpl;-><init>()V

    return-object v0
.end method
