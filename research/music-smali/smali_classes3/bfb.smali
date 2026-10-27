.class public Lbfb;
.super Ljava/lang/Object;
.source "MusicPlayAisuggest.java"


# direct methods
.method private static a()I
    .locals 2

    .line 27
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lbsi;->getSongQuality()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 6

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playSingleMusic: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicPlayAisuggest"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v0

    invoke-static {}, Lbfb;->a()I

    move-result v3

    new-instance v5, Lbfb$1;

    invoke-direct {v5}, Lbfb$1;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lbim;->a(Ljava/lang/String;IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
