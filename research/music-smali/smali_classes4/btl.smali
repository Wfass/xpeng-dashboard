.class public Lbtl;
.super Ljava/lang/Object;
.source "VipBuyForWebBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtl$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Ljava/lang/String;

.field private c:Lcom/google/gson/Gson;

.field private d:Lbtl$a;

.field private e:Ljava/lang/String;

.field private f:Lcom/lzy/okgo/callback/AbsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lbtl;->b:Ljava/lang/String;

    .line 46
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lbtl;->c:Lcom/google/gson/Gson;

    .line 50
    iput-object v0, p0, Lbtl;->e:Ljava/lang/String;

    .line 138
    new-instance v0, Lbtl$2;

    invoke-direct {v0, p0}, Lbtl$2;-><init>(Lbtl;)V

    iput-object v0, p0, Lbtl;->f:Lcom/lzy/okgo/callback/AbsCallback;

    .line 53
    iput-object p1, p0, Lbtl;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lbtl;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lbtl;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lbtl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lbtl;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lbtl;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lbtl;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lbtl;)Lbtl$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lbtl;->d:Lbtl$a;

    return-object p0
.end method

.method static synthetic d(Lbtl;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lbtl;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lbtl$a;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lbtl;->d:Lbtl$a;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "WebBuyInterface"

    const-string v0, "onDismiss: "

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportClick: pageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buriedId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebBuyInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 97
    const-class v0, Ljava/util/HashMap;

    invoke-static {p3, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v5, p3

    .line 100
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    const-string v0, "WebVipBuyStat"

    const-string v1, "VipBuy"

    const-string v2, "vip_buy_click"

    const-string v8, ""

    move-object v3, p1

    move-object v4, p2

    .line 101
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public requestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 63
    iput-object p1, p0, Lbtl;->e:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lbtl;->e:Ljava/lang/String;

    const-string v1, "pay/productList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lbtl;->d:Lbtl$a;

    invoke-interface {v0, v1}, Lbtl$a;->a(I)V

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xmart.xiaopeng.com/media"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nrequest: realUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", param = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", method = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebBuyInterface"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 72
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 73
    iget-object v0, p0, Lbtl;->c:Lcom/google/gson/Gson;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    :cond_1
    const-string p2, "POST"

    .line 75
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 76
    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    new-array p2, v1, [Z

    aput-boolean v1, p2, v2

    .line 77
    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    iget-object p2, p0, Lbtl;->f:Lcom/lzy/okgo/callback/AbsCallback;

    .line 78
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    goto :goto_0

    :cond_2
    const-string p2, "GET"

    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 81
    invoke-static {p1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object p1

    new-array p2, v1, [Z

    aput-boolean v1, p2, v2

    .line 82
    invoke-virtual {p1, v0, p2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lbks;

    iget-object p2, p0, Lbtl;->f:Lcom/lzy/okgo/callback/AbsCallback;

    .line 83
    invoke-virtual {p1, p2}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public showWebDialog(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x64

    .line 135
    invoke-virtual {p0, p1, v0}, Lbtl;->showWebDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public showWebDialog(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWebDialog: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebBuyInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lbtl$1;

    invoke-direct {v0, p0, p2, p1}, Lbtl$1;-><init>(Lbtl;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
