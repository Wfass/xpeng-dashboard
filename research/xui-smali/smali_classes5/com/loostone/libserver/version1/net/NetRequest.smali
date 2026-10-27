.class public Lcom/loostone/libserver/version1/net/NetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRequest"

.field private static mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 2

    const-class v0, Lcom/loostone/libserver/version1/net/NetRequest;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    .line 3
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->start()V

    .line 5
    :cond_0
    sget-object p0, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static lambda$request$0(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response-success: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/loostone/libserver/version1/net/NetParam;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", response:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetRequest"

    invoke-virtual {v0, v1, p0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    check-cast p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;

    .line 4
    iget-object p0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<set-?>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 24
    iget-object p0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 25
    iput-wide v1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0Oo:J

    .line 26
    iget-object p0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    .line 27
    iget-object p0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;

    .line 28
    check-cast p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;

    invoke-virtual {p0, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO00o(Ljava/lang/Object;)Lcom/loostone/libserver/version1/entity/response/ResponseData;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getUuid()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getUuid()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0OO:Lcom/loostone/libserver/version1/entity/request/BaseRequest;

    invoke-virtual {v2}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    .line 48
    iput-boolean v1, p2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0O0:Z

    .line 49
    iget-object v0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    invoke-virtual {v0, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;)V

    .line 50
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;

    if-eqz p1, :cond_2

    .line 51
    invoke-interface {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;->OooO00o(Lcom/loostone/libserver/version1/entity/response/ResponseData;)V

    goto :goto_2

    .line 52
    :cond_1
    :goto_0
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    iget-object p2, p2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0O0:Ljava/lang/String;

    const-string v2, "----->\u65e0\u6548\u7684\u8bf7\u6c42"

    invoke-virtual {v0, p2, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "-000002"

    .line 53
    invoke-virtual {p0, p2}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setState(Ljava/lang/String;)V

    :try_start_0
    const-string p2, "\u65e0\u6548\u7684\u8bf7\u6c42"

    const-string v0, "UTF-8"

    .line 55
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 57
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 58
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    iget-object v2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    iget-object v2, v2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_1
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    .line 61
    iput-boolean v1, p2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0O0:Z

    .line 62
    iget-object v0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    invoke-virtual {v0, p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;)V

    .line 64
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;

    if-eqz p1, :cond_2

    .line 65
    invoke-interface {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;->OooO00o(Lcom/loostone/libserver/version1/entity/response/ResponseData;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static lambda$request$1(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response-error: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/loostone/libserver/version1/net/NetParam;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " response error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetRequest"

    invoke-virtual {p2, v0, p0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p0, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668"

    .line 3
    check-cast p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;

    .line 4
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;->OooO00o(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p0, p2, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 27
    iget-object p0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0O0:Z

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    iput-wide v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;->OooO0Oo:J

    .line 31
    iget-object p0, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;

    iget-object p1, p1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;

    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0OO;->OooO00o(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0OO/OooO0oO/OooO0O0;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized request(Landroid/content/Context;Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)Lcom/android/volley/toolbox/StringRequest;
    .locals 9

    const-class v0, Lcom/loostone/libserver/version1/net/NetRequest;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/loostone/libserver/version1/net/NetRequest;->getQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    .line 4
    :cond_0
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/loostone/libserver/version1/net/NetParam;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/loostone/libserver/version1/net/NetParam;->param:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetRequest"

    invoke-virtual {p0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/loostone/libserver/version1/net/NetRequest$1;

    iget-object v5, p1, Lcom/loostone/libserver/version1/net/NetParam;->url:Ljava/lang/String;

    new-instance v6, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;

    invoke-direct {v6, p1, p2}, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$QTDl291qtbDXi6o2RGKygZ8h4Ag;-><init>(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)V

    new-instance v7, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$axp7l-thZjjChZkgMLHu7VPpBgU;

    invoke-direct {v7, p1, p2}, Lcom/loostone/libserver/version1/net/-$$Lambda$NetRequest$axp7l-thZjjChZkgMLHu7VPpBgU;-><init>(Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)V

    const/4 v4, 0x1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/loostone/libserver/version1/net/NetRequest$1;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/loostone/libserver/version1/net/NetParam;)V

    .line 47
    iget-object p1, p1, Lcom/loostone/libserver/version1/net/NetParam;->requestTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 48
    sget-object p1, Lcom/loostone/libserver/version1/net/NetRequest;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
