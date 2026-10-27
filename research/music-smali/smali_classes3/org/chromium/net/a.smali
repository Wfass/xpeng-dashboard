.class public Lorg/chromium/net/a;
.super Ljava/lang/Object;
.source "AndroidTelephonyManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lorg/chromium/net/a;


# instance fields
.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private e:Lorg/chromium/net/a$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/telephony/TelephonyManager;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/a;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/a;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a(Lorg/chromium/net/a;)V
    .locals 1

    .line 110
    invoke-static {}, Lorg/chromium/net/a;->f()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lorg/chromium/net/a;->b(Landroid/telephony/TelephonyManager;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/chromium/net/a;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/net/a;->a(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method private b(Landroid/telephony/TelephonyManager;)V
    .locals 2

    .line 95
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 97
    new-instance v0, Lorg/chromium/net/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/a$a;-><init>(Lorg/chromium/net/a;Lorg/chromium/net/a$1;)V

    iput-object v0, p0, Lorg/chromium/net/a;->e:Lorg/chromium/net/a$a;

    .line 98
    iget-object v0, p0, Lorg/chromium/net/a;->e:Lorg/chromium/net/a$a;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static d()Lorg/chromium/net/a;
    .locals 2

    .line 122
    sget-object v0, Lorg/chromium/net/a;->a:Lorg/chromium/net/a;

    if-nez v0, :cond_1

    .line 124
    const-class v1, Lorg/chromium/net/a;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lorg/chromium/net/a;->a:Lorg/chromium/net/a;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lorg/chromium/net/a;->g()Lorg/chromium/net/a;

    move-result-object v0

    .line 128
    sput-object v0, Lorg/chromium/net/a;->a:Lorg/chromium/net/a;

    .line 130
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic e()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 26
    invoke-static {}, Lorg/chromium/net/a;->f()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method private static f()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 103
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static g()Lorg/chromium/net/a;
    .locals 2

    .line 108
    new-instance v0, Lorg/chromium/net/a;

    invoke-direct {v0}, Lorg/chromium/net/a;-><init>()V

    .line 109
    new-instance v1, Lorg/chromium/net/-$$Lambda$a$Quwfk-FZWRoIV7RnAKXq1u67LHs;

    invoke-direct {v1, v0}, Lorg/chromium/net/-$$Lambda$a$Quwfk-FZWRoIV7RnAKXq1u67LHs;-><init>(Lorg/chromium/net/a;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic lambda$Quwfk-FZWRoIV7RnAKXq1u67LHs(Lorg/chromium/net/a;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/net/a;->a(Lorg/chromium/net/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/chromium/net/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 45
    invoke-static {}, Lorg/chromium/net/a;->f()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/a;->b:Ljava/lang/String;

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/chromium/net/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lorg/chromium/net/a;->f()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/a;->c:Ljava/lang/String;

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/chromium/net/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lorg/chromium/net/a;->f()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/a;->d:Ljava/lang/String;

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/a;->d:Ljava/lang/String;

    return-object v0
.end method
