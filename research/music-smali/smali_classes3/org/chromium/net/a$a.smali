.class Lorg/chromium/net/a$a;
.super Landroid/telephony/PhoneStateListener;
.source "AndroidTelephonyManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/a;

.field private b:Landroid/telephony/ServiceState;


# direct methods
.method private constructor <init>(Lorg/chromium/net/a;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/chromium/net/a$a;->a:Lorg/chromium/net/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/a;Lorg/chromium/net/a$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/chromium/net/a$a;-><init>(Lorg/chromium/net/a;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/chromium/net/a$a;->b:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/a$a;->b:Landroid/telephony/ServiceState;

    .line 143
    iget-object p1, p0, Lorg/chromium/net/a$a;->a:Lorg/chromium/net/a;

    invoke-static {}, Lorg/chromium/net/a;->e()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/net/a;->a(Lorg/chromium/net/a;Landroid/telephony/TelephonyManager;)V

    :cond_1
    return-void
.end method
