.class Lbcx$1;
.super Lbkv;
.source "LiveUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcx;->a(Lbcv$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbcv$a;

.field final synthetic b:Lbcx;


# direct methods
.method constructor <init>(Lbcx;Lbcv$a;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lbcx$1;->b:Lbcx;

    iput-object p2, p0, Lbcx$1;->a:Lbcv$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LiveUpdate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lbcx$1;->a:Lbcv$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lbcx$1;->a:Lbcv$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;->getData()Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lbcx$1;->b:Lbcx;

    iget-object v1, v1, Lbcx;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-interface {v0, p1}, Lbcv$a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;

    invoke-virtual {p0, p1}, Lbcx$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;)V

    return-void
.end method
