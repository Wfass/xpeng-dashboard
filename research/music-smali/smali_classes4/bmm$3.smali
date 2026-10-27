.class Lbmm$3;
.super Lbkv;
.source "ProgramDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbmm;


# direct methods
.method constructor <init>(Lbmm;I)V
    .locals 0

    .line 269
    iput-object p1, p0, Lbmm$3;->b:Lbmm;

    iput p2, p0, Lbmm$3;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lbmm$3;->b:Lbmm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbmm;->a(Lbmm;Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    .line 287
    iget v0, p0, Lbmm$3;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 288
    new-instance v0, Lash$d;

    invoke-direct {v0, v1, v1}, Lash$d;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lbmm$3;->b:Lbmm;

    invoke-static {v0, v1}, Lbmm;->c(Lbmm;I)I

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lash$d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lash$d;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lbmm$3;->b:Lbmm;

    invoke-static {v0, v2}, Lbmm;->c(Lbmm;I)I

    .line 294
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGuessLikePage error ==> code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProgramDataModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    invoke-virtual {p0, p1}, Lbmm$3;->a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lbmm$3;->b:Lbmm;

    invoke-static {v0, p1}, Lbmm;->a(Lbmm;Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    const-string v0, "ProgramDataModel"

    const-string v1, "getGuessLikePage response: "

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lbmm$3;->b:Lbmm;

    invoke-static {v0, p1}, Lbmm;->b(Lbmm;Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method
