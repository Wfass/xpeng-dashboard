.class public Lbkj;
.super Ljava/lang/Object;
.source "HttpHeadsHandlerImpl.java"

# interfaces
.implements Lbkk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/HttpHeaders;Lcom/lzy/okgo/model/HttpHeaders;)V
    .locals 3

    const-string v0, "XP-Media-Xima-Sid"

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 21
    invoke-static {}, Lbdx;->a()Lbdx;

    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v1

    invoke-virtual {v1}, Lbdx;->g()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "XP-Media-Netease-Sid"

    if-eqz p2, :cond_3

    .line 28
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    .line 31
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p2

    invoke-virtual {p2}, Lbdm;->d()Lbel;

    move-result-object p2

    invoke-virtual {p2}, Lbel;->p()Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
