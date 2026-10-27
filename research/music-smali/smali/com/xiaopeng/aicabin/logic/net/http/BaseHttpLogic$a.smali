.class public Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;
.super Ljava/lang/Object;
.source "BaseHttpLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->handle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetResponse(Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$000(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget v1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$100(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget v1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$200(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget v1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->afterHandle()V

    .line 13
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {p1}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$400(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$300(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$500(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {p1}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$700(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->access$600(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :goto_1
    return-void
.end method
