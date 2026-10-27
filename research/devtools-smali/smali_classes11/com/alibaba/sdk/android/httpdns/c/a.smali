.class public Lcom/alibaba/sdk/android/httpdns/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/c/a$a;
    }
.end annotation


# instance fields
.field private h:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->h:I

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/c/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/c/a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0xff

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p1, 0x4

    return p1

    :pswitch_2
    const/4 p1, 0x3

    return p1

    :pswitch_3
    const/4 p1, 0x2

    return p1

    :cond_4
    return v1

    :cond_5
    return v0

    :catch_0
    move-exception p1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/c/a;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a$a;->b()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object p1

    :catch_0
    move-exception p1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    move-object p1, v0

    return-object p1

    :catch_0
    move-exception p1

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    move-object p1, v0

    return-object p1

    :catch_0
    move-exception p1

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/c/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->h:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->n:Ljava/lang/String;

    :cond_0
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "UNKNOWN"

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/c/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->h:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/c/a;->n:Ljava/lang/String;

    return-object v0
.end method
