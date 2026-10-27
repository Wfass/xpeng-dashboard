.class Lorg/chromium/net/AndroidCellularSignalStrength$a;
.super Landroid/telephony/PhoneStateListener;
.source "AndroidCellularSignalStrength.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/AndroidCellularSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lorg/chromium/net/AndroidCellularSignalStrength;

.field private final c:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->a:Z

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->b:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 45
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 48
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->c:Landroid/telephony/TelephonyManager;

    .line 51
    iget-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(Lorg/chromium/base/ApplicationStatus$a;)V

    .line 54
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/net/AndroidCellularSignalStrength$a;->a(I)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->c:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->b:Lorg/chromium/net/AndroidCellularSignalStrength;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lorg/chromium/net/AndroidCellularSignalStrength;->a(Lorg/chromium/net/AndroidCellularSignalStrength;I)I

    .line 63
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/chromium/net/AndroidCellularSignalStrength$a;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 89
    invoke-direct {p0}, Lorg/chromium/net/AndroidCellularSignalStrength$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 69
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->b:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-static {v0, p1}, Lorg/chromium/net/AndroidCellularSignalStrength;->a(Lorg/chromium/net/AndroidCellularSignalStrength;I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    iget-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$a;->b:Lorg/chromium/net/AndroidCellularSignalStrength;

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Lorg/chromium/net/AndroidCellularSignalStrength;->a(Lorg/chromium/net/AndroidCellularSignalStrength;I)I

    .line 79
    sget-boolean p1, Lorg/chromium/net/AndroidCellularSignalStrength$a;->a:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
