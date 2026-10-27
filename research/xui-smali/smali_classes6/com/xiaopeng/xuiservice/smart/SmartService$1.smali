.class Lcom/xiaopeng/xuiservice/smart/SmartService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "SmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 53
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartService;)Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;)V

    .line 58
    :goto_0
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->unsetListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartService;)Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;)V

    .line 68
    :goto_0
    return-void
.end method
