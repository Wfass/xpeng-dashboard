.class Lbtd$4;
.super Lbkv;
.source "XmlyVipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd;->a(Ljava/lang/String;ILbtd$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

.field final synthetic d:Lbtd$b;

.field final synthetic e:Lbtd;


# direct methods
.method constructor <init>(Lbtd;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lbtd$b;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lbtd$4;->e:Lbtd;

    iput-object p2, p0, Lbtd$4;->a:Ljava/lang/String;

    iput p3, p0, Lbtd$4;->b:I

    iput-object p4, p0, Lbtd$4;->c:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    iput-object p5, p0, Lbtd$4;->d:Lbtd$b;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sycAccountInfoWithServer err code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyVipModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    iget-object v1, p0, Lbtd$4;->e:Lbtd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laxy;->a(Laxy$a;Z)V

    .line 216
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    invoke-static {v0}, Lbtd;->c(Lbtd;)V

    .line 217
    iget-object v0, p0, Lbtd$4;->d:Lbtd$b;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1, p2}, Lbtd$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;)V
    .locals 3

    .line 196
    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;->data:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lbtd$4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->setOpenId(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    invoke-static {v0, p1}, Lbtd;->a(Lbtd;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 201
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    iget-object v1, p0, Lbtd$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbtd;->a(Lbtd;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;

    iget v1, p0, Lbtd$4;->b:I

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    iget-object v1, p0, Lbtd$4;->c:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-static {v0, v1, p1}, Lbtd;->a(Lbtd;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V

    .line 204
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbtd;->a(Lbtd;J)J

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sycAccountInfoWithServer response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtd$4;->e:Lbtd;

    invoke-static {v1}, Lbtd;->b(Lbtd;)Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyVipModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lbtd$4;->e:Lbtd;

    invoke-static {v0}, Lbtd;->c(Lbtd;)V

    .line 207
    iget-object v0, p0, Lbtd$4;->d:Lbtd$b;

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0, p1}, Lbtd$b;->a(Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 193
    check-cast p1, Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;

    invoke-virtual {p0, p1}, Lbtd$4;->a(Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;)V

    return-void
.end method
