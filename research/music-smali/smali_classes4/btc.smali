.class public Lbtc;
.super Ljava/lang/Object;
.source "VipHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtc$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbtc;
    .locals 1

    .line 36
    sget-object v0, Lbtc$a;->a:Lbtc;

    return-object v0
.end method


# virtual methods
.method public a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;",
            ">;"
        }
    .end annotation

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/user/userInfo"

    .line 45
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 46
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbkv;I)Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/UserAccountBean;",
            ">;I)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/UserAccountBean;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 41
    invoke-virtual {p2, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleResult;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "getVipSaleBanner"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    const-string v0, "https://xmart.xiaopeng.com/media/common/bannerList"

    .line 51
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 53
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbkv;I)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;",
            ">;I)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dolby"

    goto :goto_0

    :cond_0
    const-string v1, "normal"

    :goto_0
    const-string v2, "dolbyType"

    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    invoke-static {p2}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/common/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Z

    .line 77
    invoke-virtual {p2, v0, v1}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lbks;

    new-instance v0, Lbkt;

    invoke-direct {v0, p1}, Lbkt;-><init>(Lbkv;)V

    .line 78
    invoke-virtual {p2, v0}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public c(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "getVipSaleBannerV2"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    const-string v0, "https://xmart.xiaopeng.com/media/common/bannerListV3"

    .line 58
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 60
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public d(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/VipUrlResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/VipUrlResult;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "getVipUrlList"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    const-string v0, "https://xmart.xiaopeng.com/media/common/vipUrlList"

    .line 65
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lbks;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 67
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public e(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;",
            ">;"
        }
    .end annotation

    const-string v0, "https://xmart.xiaopeng.com/media/v4/privilege/checkDolbyPrivilege"

    .line 82
    invoke-static {v0}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    new-instance v1, Lbkt;

    invoke-direct {v1, p1}, Lbkt;-><init>(Lbkv;)V

    .line 83
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
