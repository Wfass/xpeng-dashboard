.class public Lbcn;
.super Lcom/xiaopeng/musicradio/model/music/b;
.source "KugouPlayDataList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_data_provider"

    return-object v0
.end method

.method protected b()V
    .locals 1

    .line 12
    new-instance v0, Lbcm;

    invoke-direct {v0}, Lbcm;-><init>()V

    iput-object v0, p0, Lbcn;->a:Lcom/xiaopeng/musicradio/model/music/k;

    .line 13
    new-instance v0, Lbco;

    invoke-direct {v0}, Lbco;-><init>()V

    iput-object v0, p0, Lbcn;->b:Lcom/xiaopeng/musicradio/model/music/n;

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 28
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method
