.class Lbei$1;
.super Lbkv;
.source "ReadingAuthModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbei;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/account/xmlylogin/bean/LogoutBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbei;


# direct methods
.method constructor <init>(Lbei;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lbei$1;->a:Lbei;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logoutServer:error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReadingAuthModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lbei$1;->a:Lbei;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lbei;->b(Lbei;Z)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/LogoutBean;)V
    .locals 1

    const-string p1, "ReadingAuthModel"

    const-string v0, "logoutServer:response"

    .line 116
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lbei$1;->a:Lbei;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbei;->a(Lbei;Z)V

    .line 118
    iget-object p1, p0, Lbei$1;->a:Lbei;

    invoke-static {p1, v0}, Lbei;->b(Lbei;Z)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/LogoutBean;

    invoke-virtual {p0, p1}, Lbei$1;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/LogoutBean;)V

    return-void
.end method
