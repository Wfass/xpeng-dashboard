.class public Lcom/xiaopeng/musicradio/service/NetRadioService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "NetRadioService.java"

# interfaces
.implements Lbjs;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRadioService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public favMusicOrNot(Z)Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Layv;->a()Layv;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Layv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 102
    invoke-static {}, Layv;->a()Layv;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Layv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNetRadioProviderType()I
    .locals 1

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->g()I

    move-result v0

    return v0
.end method

.method public getNextNetRadioInfo()Lbjt;
    .locals 6

    .line 66
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->f()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    new-instance v1, Lbjt;

    invoke-direct {v1}, Lbjt;-><init>()V

    .line 69
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    .line 71
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v4

    int-to-long v4, v4

    .line 72
    :goto_2
    invoke-virtual {v1, v2}, Lbjt;->b(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbjt;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v3}, Lbjt;->c(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v4, v5}, Lbjt;->a(J)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingNetRadioInfo()Lbjt;
    .locals 7

    .line 24
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    new-instance v1, Lbjt;

    invoke-direct {v1}, Lbjt;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 28
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Lbjt;->b(Z)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Lbjt;->b(Z)V

    .line 33
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    .line 34
    :goto_2
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v4

    .line 35
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v5

    if-nez v5, :cond_3

    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v5

    int-to-long v5, v5

    .line 36
    :goto_3
    invoke-virtual {v1, v2}, Lbjt;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbjt;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v4}, Lbjt;->a(Z)V

    .line 39
    invoke-virtual {v1, v3}, Lbjt;->c(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v5, v6}, Lbjt;->a(J)V

    return-object v1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreNetRadioInfo()Lbjt;
    .locals 6

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->e()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 51
    new-instance v1, Lbjt;

    invoke-direct {v1}, Lbjt;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    .line 54
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v4

    int-to-long v4, v4

    .line 55
    :goto_2
    invoke-virtual {v1, v2}, Lbjt;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbjt;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Lbjt;->c(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v4, v5}, Lbjt;->a(J)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanCollected()Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
