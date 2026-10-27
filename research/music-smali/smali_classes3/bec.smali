.class public Lbec;
.super Ljava/lang/Object;
.source "UserHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbec$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbec;
    .locals 1

    .line 35
    sget-object v0, Lbec$a;->a:Lbec;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
