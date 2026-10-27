.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$11;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->uploadAlipayLog()V
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

    .line 607
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$11;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitMiniProg(IZ)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "isSuccess"    # Z

    .line 611
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadAlipayLog==>onInitMiniProg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz p2, :cond_0

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$11;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    .line 616
    :cond_0
    return-void
.end method
