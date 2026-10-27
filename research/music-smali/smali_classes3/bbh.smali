.class public Lbbh;
.super Lbbc;
.source "DailyHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 0

    .line 33
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    new-instance p4, Lbbh$1;

    invoke-direct {p4, p0, p2, p8, p3}, Lbbh$1;-><init>(Lbbh;ZII)V

    const/4 p2, 0x0

    const-string p3, "DailyHandler"

    invoke-virtual {p1, p8, p2, p3, p4}, Lbev;->b(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
