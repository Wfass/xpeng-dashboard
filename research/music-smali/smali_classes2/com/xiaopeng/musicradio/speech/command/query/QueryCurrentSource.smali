.class public Lcom/xiaopeng/musicradio/speech/command/query/QueryCurrentSource;
.super Lboz;
.source "QueryCurrentSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryCurrentSource"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "QueryCurrentSource"

    .line 25
    :try_start_0
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v1

    invoke-virtual {v1}, Lbbz;->b()I

    move-result v1

    .line 26
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->e()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "QQ"

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v3, "NetEaseCloud"

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string v3, "Kugou"

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->f()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v3, "Xmly"

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    const-string v3, "NetRadio"

    goto :goto_0

    .line 36
    :cond_4
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->k()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v3, "Bluetooth"

    goto :goto_0

    .line 38
    :cond_5
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->l()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v3, "Usb"

    .line 41
    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p3, v3}, Lcom/xiaopeng/musicradio/speech/command/query/QueryCurrentSource;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " musicSoure = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "onEvent:doCommand  "

    .line 44
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "QueryCurrentSource"

    return-object v0
.end method
