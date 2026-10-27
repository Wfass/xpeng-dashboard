.class public Lcom/xiaopeng/musicradio/model/music/e;
.super Lcom/xiaopeng/musicradio/model/music/b;
.source "DefaultPlayDataList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "data_provider"

    return-object v0
.end method

.method protected b()V
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/e;->a:Lcom/xiaopeng/musicradio/model/music/k;

    .line 14
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/n;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/e;->b:Lcom/xiaopeng/musicradio/model/music/n;

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 29
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lbef;

    return-object v0
.end method
