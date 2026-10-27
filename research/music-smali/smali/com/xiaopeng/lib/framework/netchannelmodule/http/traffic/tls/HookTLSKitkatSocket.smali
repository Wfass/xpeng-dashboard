.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;
.super Ljava/lang/Object;
.source "HookTLSKitkatSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;
    }
.end annotation


# static fields
.field private static mInputConstruct:Ljava/lang/reflect/Constructor;

.field private static mInputField:Ljava/lang/reflect/Field;

.field private static mOutputConstruct:Ljava/lang/reflect/Constructor;

.field private static mOutputField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputConstruct:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputConstruct:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static createSocket(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;
    .locals 3

    .line 31
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputConstruct:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputConstruct:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl$SSLInputStream"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputConstruct:Ljava/lang/reflect/Constructor;

    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl$SSLOutputStream"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    aget-object v0, v0, v1

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputConstruct:Ljava/lang/reflect/Constructor;

    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputField:Ljava/lang/reflect/Field;

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputField:Ljava/lang/reflect/Field;

    .line 42
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputConstruct:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 43
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputConstruct:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 44
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    :cond_2
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 49
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$1;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$1;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;

    invoke-direct {p1, v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljavax/net/ssl/SSLSocket;)V

    .line 56
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;

    invoke-direct {v2, v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljavax/net/ssl/SSLSocket;)V

    .line 57
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;

    .line 58
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;

    .line 59
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mInputField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->mOutputField:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
