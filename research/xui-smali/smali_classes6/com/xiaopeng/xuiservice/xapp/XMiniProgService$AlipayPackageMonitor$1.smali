.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor$1;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    .line 1044
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    const-string v1, "com.alipay.arome.app"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$1500(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V

    .line 1048
    return-void
.end method
