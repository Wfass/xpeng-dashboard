.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "XMiniProgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlipayPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;

    .line 1039
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1042
    const-string v0, "com.alipay.arome.app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    :cond_0
    return-void
.end method
