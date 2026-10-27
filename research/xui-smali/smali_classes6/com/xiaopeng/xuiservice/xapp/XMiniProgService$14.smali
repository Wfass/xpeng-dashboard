.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startCustomService(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field final synthetic val$serviceCode:Ljava/lang/String;

.field final synthetic val$userIdentity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 704
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->val$serviceCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->val$userIdentity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitMiniProg(IZ)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "isSuccess"    # Z

    .line 708
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCustomService==>onInitMiniProg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    if-eqz p2, :cond_0

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->val$serviceCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->val$userIdentity:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$1200(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    const/16 v1, 0xc

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil;->toBean(I)Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 715
    :goto_0
    return-void
.end method
