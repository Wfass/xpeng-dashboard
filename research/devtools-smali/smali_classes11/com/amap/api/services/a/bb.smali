.class public Lcom/amap/api/services/a/bb;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/bb$a;
    }
.end annotation


# static fields
.field private static fF:Lcom/amap/api/services/a/bb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bw()Lcom/amap/api/services/a/bb;
    .locals 1

    .line 45
    sget-object v0, Lcom/amap/api/services/a/bb;->fF:Lcom/amap/api/services/a/bb;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amap/api/services/a/bb;

    invoke-direct {v0}, Lcom/amap/api/services/a/bb;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/bb;->fF:Lcom/amap/api/services/a/bb;

    .line 48
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/bb;->fF:Lcom/amap/api/services/a/bb;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/bh;Z)Lcom/amap/api/services/a/bj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 209
    nop

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/bb;->c(Lcom/amap/api/services/a/bh;)V

    .line 213
    iget-object v0, p1, Lcom/amap/api/services/a/bh;->fS:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p1, Lcom/amap/api/services/a/bh;->fS:Ljava/net/Proxy;

    .line 218
    :goto_0
    new-instance v1, Lcom/amap/api/services/a/be;

    iget v2, p1, Lcom/amap/api/services/a/bh;->e:I

    iget v3, p1, Lcom/amap/api/services/a/bh;->f:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/services/a/be;-><init>(IILjava/net/Proxy;Z)V

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/services/a/bh;->k()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1}, Lcom/amap/api/services/a/bh;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/bh;->bB()[B

    move-result-object p1

    .line 222
    invoke-virtual {v1, p2, v0, p1}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    nop

    .line 232
    return-object p1

    .line 228
    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :catch_1
    move-exception p1

    .line 227
    throw p1
.end method

.method public a(Lcom/amap/api/services/a/bh;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 108
    nop

    .line 110
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/bb;->a(Lcom/amap/api/services/a/bh;Z)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p1, Lcom/amap/api/services/a/bj;->a:[B

    return-object p1

    .line 119
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :catch_1
    move-exception p1

    .line 112
    throw p1
.end method

.method public b(Lcom/amap/api/services/a/bh;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 124
    nop

    .line 126
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/bb;->a(Lcom/amap/api/services/a/bh;Z)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    nop

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p1, Lcom/amap/api/services/a/bj;->a:[B

    return-object p1

    .line 137
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 129
    :catch_0
    move-exception p1

    .line 130
    const-string v0, "BaseNetManager"

    const-string v1, "makeSyncPostRequest"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :catch_1
    move-exception p1

    .line 128
    throw p1
.end method

.method protected c(Lcom/amap/api/services/a/bh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 198
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/amap/api/services/a/bh;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/services/a/bh;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    return-void

    .line 202
    :cond_0
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "request url is empty"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_1
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "requeust is null"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1
.end method
