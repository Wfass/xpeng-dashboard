.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field final synthetic val$miniAppId:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 442
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->val$miniAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitMiniProg(IZ)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "isSuccess"    # Z

    .line 446
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMiniProgram==>onInitMiniProg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-eqz p2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->val$miniAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->val$params:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$500(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil;->toBean(I)Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 453
    :goto_0
    return-void
.end method
