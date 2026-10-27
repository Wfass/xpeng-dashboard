.class public Lbbm;
.super Lbbc;
.source "PersonalHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 0

    .line 29
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    new-instance p4, Lbbm$1;

    invoke-direct {p4, p0, p2, p3, p6}, Lbbm$1;-><init>(Lbbm;ZII)V

    const/4 p2, 0x0

    const-string p3, "PersonalHandler"

    invoke-virtual {p1, p8, p2, p3, p4}, Lbev;->a(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
