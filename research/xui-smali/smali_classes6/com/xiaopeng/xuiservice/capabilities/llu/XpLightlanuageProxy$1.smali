.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XpLightlanuageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 75
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->unsetLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 81
    return-void
.end method
