.class Lcom/xiaopeng/devtools/model/c/a/c$3;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/c/a/c;->b(Lcom/xiaopeng/lib/http/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oo:Lcom/xiaopeng/lib/http/c;

.field final synthetic su:Lcom/xiaopeng/devtools/model/c/a/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/a/c;Lcom/xiaopeng/lib/http/c;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    iput-object p2, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/c;->a(Lcom/xiaopeng/devtools/model/c/a/c;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 177
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string v0, "HWAndSWInfoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-interface {p1, v1}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    .line 183
    :cond_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    const-string v2, "qrCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/http/c;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_2
    goto :goto_0

    .line 191
    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$3;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-interface {p1, v1}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    .line 198
    :cond_3
    :goto_0
    return-void
.end method
