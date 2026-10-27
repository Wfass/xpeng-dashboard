.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;
.super Ljava/net/SocketImpl;
.source "HookPlainSocketPImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketImplHook"

.field private static mFieldAddress:Ljava/lang/reflect/Field;

.field private static mFieldFd:Ljava/lang/reflect/Field;

.field private static mFieldLocalPort:Ljava/lang/reflect/Field;

.field private static mFieldPort:Ljava/lang/reflect/Field;

.field private static mSuperClass:Ljava/lang/Class;

.field private static methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

.field private mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

.field private mDelegate:Ljava/net/SocketImpl;

.field private mDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->methodMap:Ljava/util/Map;

    .line 57
    :try_start_0
    const-string v0, "java.net.AbstractPlainSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    .line 58
    const-class v0, Ljava/net/SocketImpl;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldAddress:Ljava/lang/reflect/Field;

    .line 59
    const-class v0, Ljava/net/SocketImpl;

    const-string v1, "port"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldPort:Ljava/lang/reflect/Field;

    .line 60
    const-class v0, Ljava/net/SocketImpl;

    const-string v1, "localport"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldLocalPort:Ljava/lang/reflect/Field;

    .line 61
    const-class v0, Ljava/net/SocketImpl;

    const-string v1, "fd"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldFd:Ljava/lang/reflect/Field;

    .line 62
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldAddress:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldPort:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldFd:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldLocalPort:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "delegate"    # Ljava/net/SocketImpl;

    .line 94
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 317
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    .line 96
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 81
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->methodMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 82
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->methodMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SocketImplHook"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 274
    .local p3, "defaultV":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 276
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p3
.end method

.method private varargs invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "emptyReturn"    # Z
    .param p3, "target"    # Ljava/lang/Object;
    .param p4, "param"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Z",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 300
    return-object v0

    .line 301
    :cond_0
    if-eqz p2, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 307
    :goto_0
    nop

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 309
    .local v1, "throwable":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 310
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 312
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private syncFd()V
    .locals 3

    .line 138
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldFd:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->fd:Ljava/io/FileDescriptor;

    .line 139
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 7
    .param p1, "newSocket"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    instance-of v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    if-eqz v0, :cond_0

    .line 153
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFromLocalToDelegate()V

    .line 155
    :cond_0
    const-string v0, "accept"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "accept"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/net/SocketImpl;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method protected available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const-string v0, "available"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "available"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 175
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const-string v0, "bind"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/net/InetAddress;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method protected close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const-string v0, "close"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
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

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    .line 195
    const-string v0, "connect0"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "connect"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 199
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const-string v0, "SocketImplHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InetAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
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

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    .line 206
    const-string v0, "connect1"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "connect"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/net/InetAddress;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 207
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 210
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 8
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const-string v0, "SocketImplHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    .line 217
    const-string v0, "connect2"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "connect"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/net/SocketAddress;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 221
    return-void
.end method

.method protected create(Z)V
    .locals 7
    .param p1, "isStreaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const-string v0, "create"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFd()V

    .line 228
    return-void
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 3

    .line 131
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldFd:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .line 116
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldAddress:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->address:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const-string v0, "getInputStream"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "getInputStream"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 233
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 235
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    .line 236
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v2, v3, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected getLocalPort()I
    .locals 3

    .line 126
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldLocalPort:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->localport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const-string v0, "getOutputStream"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "getOutputStream"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 244
    .local v1, "stream":Ljava/io/OutputStream;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v2, v3, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected getPort()I
    .locals 3

    .line 106
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldPort:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected listen(I)V
    .locals 7
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, "listen"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "listen"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "sendUrgentData"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "sendUrgentData"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "optID"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFd()V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 268
    return-void
.end method

.method protected shutdownInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const-string v0, "shutdownInput"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "shutdownInput"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method protected shutdownOutput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const-string v0, "shutdownOutput"

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const-string v2, "shutdownOutput"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public syncFromLocalToDelegate()V
    .locals 3

    .line 144
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldFd:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldAddress:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->address:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldPort:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mFieldLocalPort:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->localport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method
