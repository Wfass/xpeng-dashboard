.class public Lcom/xiaopeng/musicradio/model/dui/c;
.super Ljava/lang/Object;
.source "DuiFmMediaQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 20
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;)V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 47
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
