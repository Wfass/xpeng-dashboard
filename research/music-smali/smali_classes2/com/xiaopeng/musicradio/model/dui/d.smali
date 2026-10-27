.class public Lcom/xiaopeng/musicradio/model/dui/d;
.super Lbwb;
.source "DuiFmModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/fm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/dui/d$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lbwb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/model/dui/d$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/dui/d;
    .locals 1

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/d$a;->a()Lcom/xiaopeng/musicradio/model/dui/d;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .line 146
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/d$6;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FMChannel  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiFmModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/d$3;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFmPlayChannelName == command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuiFmModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :try_start_0
    new-instance p1, Lcom/xiaopeng/musicradio/model/dui/d$4;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/model/dui/d$4;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;Ljava/lang/String;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "DuiFmModel"

    const-string v1, "\u6536\u5230\u672c\u5730\u5e7f\u64ad\u8bed\u97f3\u6d88\u606f\uff1a \u6253\u5f00 "

    .line 43
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/d;->h()V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "DuiFmModel"

    const-string v1, "\u6536\u5230\u672c\u5730\u5e7f\u64ad\u8bed\u97f3\u6d88\u606f\uff1a \u5173\u95ed onFmLocalOff"

    .line 53
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/d$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "DuiFmModel"

    const-string v1, "\u6536\u5230\u672c\u5730\u5e7f\u64ad\u8bed\u97f3\u6d88\u606f\uff1a \u6253\u5f00 onFmNetworkOn"

    .line 68
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/d;->h()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "DuiFmModel"

    const-string v1, "\u6536\u5230\u672c\u5730\u5e7f\u64ad\u8bed\u97f3\u6d88\u606f\uff1a \u6253\u5f00 onFmNetworkOff"

    .line 74
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/d$2;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 133
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/d$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/d$5;-><init>(Lcom/xiaopeng/musicradio/model/dui/d;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
