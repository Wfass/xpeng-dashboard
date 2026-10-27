.class Lbef$1;
.super Lbkv;
.source "AuthModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbef;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/qlogin/bean/LogoutBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbef;


# direct methods
.method constructor <init>(Lbef;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lbef$1;->a:Lbef;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lbef$1;->a:Lbef;

    invoke-virtual {v0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutServer:error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lbef$1;->a:Lbef;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lbef;->b(Lbef;Z)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/qlogin/bean/LogoutBean;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lbef$1;->a:Lbef;

    invoke-virtual {p1}, Lbef;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "logoutServer:response"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lbef$1;->a:Lbef;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbef;->a(Lbef;Z)V

    .line 136
    iget-object p1, p0, Lbef$1;->a:Lbef;

    invoke-static {p1, v0}, Lbef;->b(Lbef;Z)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/LogoutBean;

    invoke-virtual {p0, p1}, Lbef$1;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/LogoutBean;)V

    return-void
.end method
