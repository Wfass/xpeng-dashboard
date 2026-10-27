.class Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "AwarenessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/awareness/AwarenessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/awareness/AwarenessService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/awareness/AwarenessService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/awareness/AwarenessService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;->this$0:Lcom/xiaopeng/xuiservice/awareness/AwarenessService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;->this$0:Lcom/xiaopeng/xuiservice/awareness/AwarenessService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->access$000(Lcom/xiaopeng/xuiservice/awareness/AwarenessService;)Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;->this$0:Lcom/xiaopeng/xuiservice/awareness/AwarenessService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->setListener(Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;)V

    .line 37
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessService$1;->this$0:Lcom/xiaopeng/xuiservice/awareness/AwarenessService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/awareness/AwarenessService;->access$000(Lcom/xiaopeng/xuiservice/awareness/AwarenessService;)Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->setListener(Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;)V

    .line 43
    return-void
.end method
