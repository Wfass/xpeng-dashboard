.class Lcom/xiaopeng/devtools/presenter/aftersales/a$1;
.super Ljava/lang/Object;
.source "AuthModePresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/a;->hW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vm:Ljava/lang/String;

.field final synthetic vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->c(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    .line 142
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 122
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 123
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->a(Lcom/xiaopeng/devtools/presenter/aftersales/a;)Lcom/xiaopeng/aftersales/AfterSalesManager;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vm:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->enableAuthMode(Ljava/lang/String;J)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->b(Lcom/xiaopeng/devtools/presenter/aftersales/a;)Lcom/xiaopeng/xui/app/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->b(Lcom/xiaopeng/devtools/presenter/aftersales/a;)Lcom/xiaopeng/xui/app/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->dismiss()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception p1

    .line 131
    const-string v0, "AuthModePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->c(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    .line 133
    :cond_0
    :goto_0
    goto :goto_1

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;->vn:Lcom/xiaopeng/devtools/presenter/aftersales/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->c(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    .line 137
    :goto_1
    return-void
.end method
