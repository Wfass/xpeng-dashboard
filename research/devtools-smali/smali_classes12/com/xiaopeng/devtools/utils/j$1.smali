.class Lcom/xiaopeng/devtools/utils/j$1;
.super Ljava/lang/Object;
.source "IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/utils/j;->eu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/j;->z(Z)Z

    .line 233
    const-string v0, "IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get individual info failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 216
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->lb()Lcom/xiaopeng/devtools/utils/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/utils/a/a;->b(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->ez()Lcom/xiaopeng/lib/security/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/security/a;->dE(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    const-string p1, "IndivHelper"

    const-string v0, "\u4e2a\u6027\u5316\u6570\u636e\u5904\u7406\u5b8c\u6210\uff01"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->eA()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    goto :goto_0

    .line 223
    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/j;->z(Z)Z

    .line 228
    return-void
.end method
