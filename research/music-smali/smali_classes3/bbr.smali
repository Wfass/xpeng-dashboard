.class public Lbbr;
.super Lbbc;
.source "RecommendRadioHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 7

    .line 28
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getNType()I

    move-result v4

    new-instance v6, Lbbr$1;

    invoke-direct {v6, p0, p2, p3}, Lbbr$1;-><init>(Lbbr;ZI)V

    move v2, p3

    move v3, p4

    move v5, p8

    invoke-virtual/range {v0 .. v6}, Lbev;->a(Ljava/lang/String;IIIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
