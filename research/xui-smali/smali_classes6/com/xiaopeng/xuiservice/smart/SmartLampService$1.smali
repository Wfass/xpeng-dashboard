.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;
.super Landroid/database/ContentObserver;
.source "SmartLampService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->registerProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 102
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Z

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$002(Z)Z

    .line 105
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRunningEffect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "SmartLampService"

    const-string v1, "headLight ON, suspendEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->suspendEffect()V

    .line 110
    :cond_0
    return-void
.end method
