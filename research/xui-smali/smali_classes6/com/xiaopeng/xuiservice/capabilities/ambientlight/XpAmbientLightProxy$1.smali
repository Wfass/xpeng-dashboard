.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XpAmbientLightProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightListener(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;)V

    .line 44
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->unsetAmbientLightListener(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;)V

    .line 50
    return-void
.end method
