.class Lcom/xiaopeng/commonfunc/utils/j$2;
.super Ljava/lang/Object;
.source "IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/utils/j;->ev()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 267
    const-string v0, "IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed save individual info to server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->ey()Lcom/xiaopeng/commonfunc/utils/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/utils/a/a;->c(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->eC()Lcom/xiaopeng/commonfunc/utils/j$a;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/commonfunc/utils/j$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/j$2$1;-><init>(Lcom/xiaopeng/commonfunc/utils/j$2;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/commonfunc/utils/j$a;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    return-void
.end method
