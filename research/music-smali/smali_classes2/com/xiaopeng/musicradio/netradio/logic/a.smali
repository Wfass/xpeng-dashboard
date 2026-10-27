.class public Lcom/xiaopeng/musicradio/netradio/logic/a;
.super Lbqm;
.source "NetRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/netradio/logic/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbqm;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/netradio/logic/a;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/musicradio/netradio/logic/a$a;->a:Lcom/xiaopeng/musicradio/netradio/logic/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 44
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 1

    .line 48
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 30
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 52
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->n()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 56
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->o()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 60
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->q()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->p()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public synthetic i()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method
