.class public Lbwc;
.super Ljava/lang/Object;
.source "SpeechUtils.java"


# direct methods
.method public static a(Ljava/lang/Class;Lbuj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lbut;",
            ">;",
            "Lbuj;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {v0}, Lbus;->i()Lbuq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lbuq;->a(Ljava/lang/Class;Lbuj;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    .line 29
    invoke-static {p0, p1, v0}, Lbwc;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lbxi;

    invoke-direct {v0}, Lbxi;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lbxi;->a(Z)Lbxi;

    .line 42
    invoke-virtual {v0, p2}, Lbxi;->a(Ljava/lang/String;)Lbxi;

    .line 43
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p1

    invoke-virtual {p1}, Lbus;->c()Lcom/xiaopeng/speech/actor/a;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {p2, p0}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->a(Lbxi;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/speech/actor/a;->a(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "{"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
