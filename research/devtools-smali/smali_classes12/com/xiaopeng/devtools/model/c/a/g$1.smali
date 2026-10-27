.class Lcom/xiaopeng/devtools/model/c/a/g$1;
.super Ljava/lang/Object;
.source "MobileNetworkModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/c/a/g;->fW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sD:Lcom/xiaopeng/devtools/model/c/a/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/a/g;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g$1;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g$1;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2

    .line 175
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$1;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g$1;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void
.end method
