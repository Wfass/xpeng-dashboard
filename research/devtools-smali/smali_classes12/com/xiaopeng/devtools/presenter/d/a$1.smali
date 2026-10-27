.class Lcom/xiaopeng/devtools/presenter/d/a$1;
.super Ljava/lang/Object;
.source "NaviPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/d/a;->jH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yE:Lcom/xiaopeng/devtools/presenter/d/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/d/a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/d/a$1;->yE:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/d/a$1;->yE:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/d/a;->a(Lcom/xiaopeng/devtools/presenter/d/a;)V

    .line 92
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4

    .line 73
    const-string v0, "NaviPresenter"

    const-string v1, "genUuid onSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/xiaopeng/devtools/bean/http/UuidBean;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/http/UuidBean;

    .line 76
    const-string v0, "NaviPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genUuid onSuccess: uuidBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/UuidBean;->getCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/UuidBean;->getData()Lcom/xiaopeng/devtools/bean/http/UuidBean$UuidData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/UuidBean$UuidData;->getUuid()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/d/a$1;->yE:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/d/a;->ck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/presenter/d/a;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/g;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    const-string p1, "NaviPresenter"

    const-string v0, "get uuid success "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-string p1, "generate navigation activation UUID"

    const-string v0, "success"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/d/a$1;->yE:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/d/a;->a(Lcom/xiaopeng/devtools/presenter/d/a;)V

    .line 87
    return-void
.end method
