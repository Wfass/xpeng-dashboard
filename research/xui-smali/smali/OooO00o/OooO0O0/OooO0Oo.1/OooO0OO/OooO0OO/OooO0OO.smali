.class public abstract LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:Ljava/lang/Long;


# instance fields
.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Landroid/content/Context;

.field public OooO0o:Ljava/lang/Boolean;

.field public final OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

.field public OooO0oO:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o:Ljava/lang/Boolean;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0oO:J

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0Oo:Landroid/content/Context;

    .line 15
    iput-object p2, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    return-void
.end method


# virtual methods
.method public abstract OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;
.end method

.method public OooO00o(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;)V
    .locals 3

    .line 160
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    .line 162
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 163
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o:Ljava/lang/Boolean;

    .line 2
    sget-object p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0oO:J

    return-void
.end method

.method public OooO00o(Ljava/lang/Boolean;J)V
    .locals 0

    .line 3
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o:Ljava/lang/Boolean;

    .line 4
    iput-wide p2, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0oO:J

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Lcom/loostone/libserver/version1/entity/request/BaseRequest;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;)V
    .locals 7

    .line 5
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cache"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    iget-wide v4, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0Oo:J

    sub-long/2addr v2, v4

    .line 15
    iget-wide v4, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0oO:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    if-eqz p3, :cond_0

    .line 16
    iget-boolean v2, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0O0:Z

    if-eqz v2, :cond_0

    .line 17
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    .line 18
    iget-object p2, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 19
    check-cast p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO00o(Ljava/lang/Object;)Lcom/loostone/libserver/version1/entity/response/ResponseData;

    move-result-object p1

    invoke-interface {p3, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;->OooO00o(Lcom/loostone/libserver/version1/entity/response/ResponseData;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/16 v2, 0x1388

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;->set_time(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;->setUuid(Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0Oo:Landroid/content/Context;

    const-string v4, "sys/class/net/eth0/address"

    .line 23
    invoke-static {v4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "sys/class/net/eth0/wlan0"

    .line 26
    invoke-static {v4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "wifi"

    .line 30
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 34
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 39
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 40
    const-string v3, "busybox ifconfig"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v5}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o([Ljava/lang/String;ZZ)LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;

    move-result-object v1

    .line 41
    iget v3, v1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;->OooO00o:I

    if-nez v3, :cond_3

    const-string v4, ""

    .line 43
    iget-object v1, v1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0o0/OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "HWaddr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    const-string v3, "HWaddr"

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const-string v6, "HWaddr"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    move-object v4, v1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    const-string v4, ""

    .line 47
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;->setMac(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/loostone/libserver/version1/net/NetParam;

    invoke-direct {v1}, Lcom/loostone/libserver/version1/net/NetParam;-><init>()V

    .line 50
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    check-cast v3, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;

    .line 51
    invoke-virtual {v3, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 52
    iput-object v3, v1, Lcom/loostone/libserver/version1/net/NetParam;->param:Ljava/lang/Object;

    .line 53
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0OO:Ljava/lang/String;

    iput-object v3, v1, Lcom/loostone/libserver/version1/net/NetParam;->requestTag:Ljava/lang/String;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?des=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/loostone/libserver/version1/net/NetParam;->url:Ljava/lang/String;

    .line 55
    iput-boolean v5, v1, Lcom/loostone/libserver/version1/net/NetParam;->isRawRequest:Z

    .line 56
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    check-cast v3, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "text/plain"

    .line 140
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object v3, v1, Lcom/loostone/libserver/version1/net/NetParam;->header:Ljava/util/Map;

    .line 142
    iput v0, v1, Lcom/loostone/libserver/version1/net/NetParam;->retry:I

    .line 143
    iput v2, v1, Lcom/loostone/libserver/version1/net/NetParam;->timeout:I

    .line 145
    new-instance v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;-><init>()V

    const-string v2, "<set-?>"

    .line 146
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 159
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0Oo:Landroid/content/Context;

    new-instance v2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;

    invoke-direct {v2, p0, p3, v0, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;Lcom/loostone/libserver/version1/entity/request/BaseRequest;)V

    invoke-static {p1, v1, v2}, Lcom/loostone/libserver/version1/net/NetRequest;->request(Landroid/content/Context;Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)Lcom/android/volley/toolbox/StringRequest;

    return-void
.end method
