.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XpMakeupLightProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setMakeupLightListener(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;)V

    .line 40
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->unsetMakeupLightListener(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;)V

    .line 46
    return-void
.end method
