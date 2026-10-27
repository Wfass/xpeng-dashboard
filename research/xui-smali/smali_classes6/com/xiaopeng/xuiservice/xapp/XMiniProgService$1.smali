.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;-><init>(Landroid/content/Context;)V
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

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNaviInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "naviInfo"    # Ljava/lang/String;

    .line 136
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigationInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-static {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$100(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$200(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;)V

    .line 138
    return-void
.end method
