.class Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;
.super Ljava/lang/Object;
.source "MiniProgManager.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->activate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
        "Lcom/alipay/arome/aromecli/response/AromeActivateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alipay/arome/aromecli/response/AromeActivateResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/alipay/arome/aromecli/response/AromeActivateResponse;

    .line 188
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/arome/aromecli/response/AromeActivateResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "tagResponse":Ljava/lang/String;
    :goto_0
    const-string v1, "MiniProgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivateResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    if-nez p1, :cond_1

    .line 191
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const v5, 0xc352

    invoke-static {v4, v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    .line 192
    return-void

    .line 194
    :cond_1
    iget v4, p1, Lcom/alipay/arome/aromecli/response/AromeActivateResponse;->code:I

    if-nez v4, :cond_2

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v4, 0x3

    iget v5, p1, Lcom/alipay/arome/aromecli/response/AromeActivateResponse;->code:I

    invoke-static {v1, v4, v5, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    goto :goto_1

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    iget v5, p1, Lcom/alipay/arome/aromecli/response/AromeActivateResponse;->code:I

    invoke-static {v4, v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    .line 200
    :goto_1
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Lcom/alipay/arome/aromecli/response/AromeActivateResponse;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;->onCallback(Lcom/alipay/arome/aromecli/response/AromeActivateResponse;)V

    return-void
.end method
