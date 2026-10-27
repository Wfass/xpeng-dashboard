.class public Lorg/chromium/net/ProxyChangeListener;
.super Ljava/lang/Object;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;,
        Lorg/chromium/net/ProxyChangeListener$a;,
        Lorg/chromium/net/ProxyChangeListener$b;
    }
.end annotation

.annotation build Lorg/chromium/base/annotations/UsedByReflection;
.end annotation


# static fields
.field static final synthetic a:Z

.field private static b:Z


# instance fields
.field private final c:Landroid/os/Looper;

.field private final d:Landroid/os/Handler;

.field private e:J

.field private f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lorg/chromium/net/ProxyChangeListener$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lorg/chromium/net/ProxyChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    .line 45
    sput-boolean v1, Lorg/chromium/net/ProxyChangeListener;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/os/Looper;

    .line 101
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->d:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private a(Lorg/chromium/net/ProxyChangeListener$b;)V
    .locals 8

    .line 203
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->f()V

    .line 205
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->h:Lorg/chromium/net/ProxyChangeListener$a;

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Lorg/chromium/net/ProxyChangeListener$a;->a()V

    .line 212
    :cond_1
    iget-wide v2, p0, Lorg/chromium/net/ProxyChangeListener;->e:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 217
    iget-object v4, p1, Lorg/chromium/net/ProxyChangeListener$b;->a:Ljava/lang/String;

    iget v5, p1, Lorg/chromium/net/ProxyChangeListener$b;->b:I

    iget-object v6, p1, Lorg/chromium/net/ProxyChangeListener$b;->c:Ljava/lang/String;

    iget-object v7, p1, Lorg/chromium/net/ProxyChangeListener$b;->d:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/net/ProxyChangeListener;->nativeProxySettingsChangedTo(JLjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ProxyChangeListener;->nativeProxySettingsChanged(J)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/chromium/net/ProxyChangeListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$b;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->a(Lorg/chromium/net/ProxyChangeListener$b;)V

    return-void
.end method

.method private b()Lorg/chromium/net/ProxyChangeListener$b;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 227
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 229
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lorg/chromium/net/ProxyChangeListener$b;->e:Lorg/chromium/net/ProxyChangeListener$b;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/chromium/net/ProxyChangeListener$b;->a(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private c()V
    .locals 4

    .line 238
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->f()V

    .line 239
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PROXY_CHANGE"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    new-instance v1, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$1;)V

    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_4

    .line 249
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    .line 253
    :cond_4
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    new-instance v1, Lorg/chromium/net/o;

    invoke-direct {v1, p0}, Lorg/chromium/net/o;-><init>(Lorg/chromium/net/ProxyChangeListener;)V

    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    .line 259
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2
    return-void
.end method

.method public static create()Lorg/chromium/net/ProxyChangeListener;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 114
    new-instance v0, Lorg/chromium/net/ProxyChangeListener;

    invoke-direct {v0}, Lorg/chromium/net/ProxyChangeListener;-><init>()V

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 264
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->f()V

    .line 265
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_1
    :goto_0
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 269
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->f:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 272
    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private e()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 2

    .line 280
    sget-boolean v0, Lorg/chromium/base/b;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on ProxyChangeListener thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->b()Lorg/chromium/net/ProxyChangeListener$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/ProxyChangeListener;->a(Lorg/chromium/net/ProxyChangeListener$b;)V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 119
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$p19o6rWmASk1J0bDHMuxMfOrU3k(Lorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->g()V

    return-void
.end method

.method private native nativeProxySettingsChanged(J)V
.end method

.method private native nativeProxySettingsChangedTo(JLjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
.end method


# virtual methods
.method a()V
    .locals 1

    .line 234
    new-instance v0, Lorg/chromium/net/-$$Lambda$ProxyChangeListener$p19o6rWmASk1J0bDHMuxMfOrU3k;

    invoke-direct {v0, p0}, Lorg/chromium/net/-$$Lambda$ProxyChangeListener$p19o6rWmASk1J0bDHMuxMfOrU3k;-><init>(Lorg/chromium/net/ProxyChangeListener;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/ProxyChangeListener;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(J)V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 124
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->f()V

    .line 125
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/chromium/net/ProxyChangeListener;->e:J

    .line 127
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->c()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 132
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->f()V

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->e:J

    .line 134
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->d()V

    return-void
.end method
