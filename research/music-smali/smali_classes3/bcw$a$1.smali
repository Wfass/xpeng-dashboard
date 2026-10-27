.class Lbcw$a$1;
.super Lbkv;
.source "LiveDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbcw$a;


# direct methods
.method constructor <init>(Lbcw$a;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lbcw$a$1;->a:Lbcw$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    iget-boolean v0, v0, Lbcw$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    iget-object v0, v0, Lbcw$a;->b:Lbcw$b;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    iget-object v0, v0, Lbcw$a;->b:Lbcw$b;

    invoke-interface {v0, p1, p2}, Lbcw$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;)V
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    iget-boolean v0, v0, Lbcw$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    iget-object v0, v0, Lbcw$a;->b:Lbcw$b;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lbcw$a$1;->a:Lbcw$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbcw$a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;

    invoke-virtual {p0, p1}, Lbcw$a$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoBean;)V

    return-void
.end method
