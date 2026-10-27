.class public Lbbn;
.super Lbbc;
.source "PhoneMusicHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 0

    .line 25
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getNType()I

    move-result p1

    new-instance p5, Lbbn$1;

    invoke-direct {p5, p0, p2}, Lbbn$1;-><init>(Lbbn;Z)V

    invoke-virtual {p3, p4, p1, p8, p5}, Lbev;->a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
