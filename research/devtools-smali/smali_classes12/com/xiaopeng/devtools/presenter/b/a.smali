.class public Lcom/xiaopeng/devtools/presenter/b/a;
.super Ljava/lang/Object;
.source "GrabLogPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/b/b;


# instance fields
.field private yn:Lcom/xiaopeng/commonfunc/b/a/c;

.field private yo:Lcom/xiaopeng/commonfunc/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/b/a;->init()V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/commonfunc/b/a/a;)V
    .locals 3

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    const v1, 0x21101666

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const v2, 0x21401057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    const v2, 0x21401058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yn:Lcom/xiaopeng/commonfunc/b/a/c;

    invoke-virtual {v2, v0, p1}, Lcom/xiaopeng/commonfunc/b/a/c;->b(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/commonfunc/b/a/e;->b(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 85
    return-void
.end method

.method public b(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4

    .line 48
    if-eqz p2, :cond_0

    .line 49
    new-instance p2, Lcom/xiaopeng/devtools/system/c/a;

    const-string v0, "[fe80::22ff:fe44:6688%xpusb0]"

    const/4 v1, -0x1

    const-string v2, "user"

    const-string v3, ""

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/system/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance p2, Lcom/xiaopeng/devtools/system/c/a;

    const-string v0, "172.20.1.40"

    const/16 v1, 0x8ad

    const-string v2, "root"

    const-string v3, "XiaoPenggz@icm2021!"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/system/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    const-string v0, "/cache/icmlog/"

    invoke-virtual {p2, p1, v0, p3}, Lcom/xiaopeng/devtools/system/c/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    const-string p2, "cmd"

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception p2

    .line 60
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/b/a;->sendLogCompressRequest(Ljava/lang/String;)V

    .line 63
    const/4 p1, 0x0

    return p1
.end method

.method public ct(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/e;->sendCopyTboxLogRequest(I)V

    .line 69
    return-void
.end method

.method public init()V
    .locals 2

    .line 36
    new-instance v0, Lcom/xiaopeng/commonfunc/b/a/c;

    const-string v1, "GrabLogPresenter"

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/b/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yn:Lcom/xiaopeng/commonfunc/b/a/c;

    .line 37
    new-instance v0, Lcom/xiaopeng/commonfunc/b/a/e;

    const-string v1, "GrabLogPresenter"

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/b/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yn:Lcom/xiaopeng/commonfunc/b/a/c;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/a/c;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/a/e;->onDestroy()V

    .line 91
    return-void
.end method

.method public sendLogCompressRequest(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/a;->yn:Lcom/xiaopeng/commonfunc/b/a/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/c;->sendLogCompressRequest(Ljava/lang/String;)V

    .line 43
    return-void
.end method
