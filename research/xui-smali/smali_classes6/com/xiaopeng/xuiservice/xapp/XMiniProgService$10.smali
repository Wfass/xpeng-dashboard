.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestLoginInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 581
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitMiniProg(IZ)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "isSuccess"    # Z

    .line 585
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLoginInfo==>onInitMiniProg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-eqz p2, :cond_0

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$500(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    const/4 v1, 0x6

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil;->toBean(I)Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 592
    :goto_0
    return-void
.end method
