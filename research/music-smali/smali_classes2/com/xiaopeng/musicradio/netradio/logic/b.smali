.class public Lcom/xiaopeng/musicradio/netradio/logic/b;
.super Ljava/lang/Object;
.source "XpNetRadioModelProxy.java"


# direct methods
.method public static a(IIILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setCode(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setPage(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setPageSize(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    .line 26
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object p0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getCode()I

    move-result p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPage()I

    move-result p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPageSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lbew;->a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public static a(Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbew;->a(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public static a(Ljava/lang/String;Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lbew;->b(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public static b(IIILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setCode(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setPage(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->setPageSize(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    .line 38
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object p0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getCode()I

    move-result p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPage()I

    move-result p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPageSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lbew;->b(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
