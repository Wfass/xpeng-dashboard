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

    :try_start_0
    const-string v0, "java.net.AbstractPlainSocketImpl"

    .line 57
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

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SocketImplHook"

    .line 67
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1

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

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
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
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->methodMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 p1, 0x1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->methodMap:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SocketImplHook"

    .line 88
    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    if-eqz p1, :cond_0

    .line 276
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SocketImplHook"

    .line 278
    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-object p3
.end method

.method private varargs invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 305
    :cond_1
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 309
    instance-of p3, p2, Ljava/io/IOException;

    if-eqz p3, :cond_2

    .line 310
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 312
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
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

    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SocketImplHook"

    .line 289
    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

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

    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 5

    .line 152
    instance-of v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    if-eqz v0, :cond_0

    .line 153
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFromLocalToDelegate()V

    .line 155
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/net/SocketImpl;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "accept"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected available()I
    .locals 4

    .line 173
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "available"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 6

    .line 180
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/net/InetAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "bind"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v5, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected close()V
    .locals 4

    .line 186
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "close"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 7

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "connect0"

    const-string v6, "connect"

    invoke-static {v3, v0, v6, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v5, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 7

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InetAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/net/InetAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "connect1"

    const-string v6, "connect"

    invoke-static {v3, v0, v6, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v5, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 7

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketImplHook"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/net/SocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "connect2"

    const-string v6, "connect"

    invoke-static {v3, v0, v6, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v5, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseRequest(Ljava/lang/String;J)V

    return-void
.end method

.method protected create(Z)V
    .locals 5

    .line 225
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "create"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFd()V

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
    .locals 5

    .line 232
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInputStream"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 235
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDomain:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    move-result-object v0

    :goto_0
    return-object v0
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

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .line 241
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getOutputStream"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    move-result-object v0

    :goto_0
    return-object v0
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
    .locals 5

    .line 249
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "listen"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 5

    .line 255
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "sendUrgentData"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->syncFd()V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method protected shutdownInput()V
    .locals 4

    .line 161
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "shutdownInput"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected shutdownOutput()V
    .locals 4

    .line 167
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mSuperClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "shutdownOutput"

    invoke-static {v3, v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->getMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->mDelegate:Ljava/net/SocketImpl;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->invoke(Ljava/lang/reflect/Method;ZLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    return-void
.end method
