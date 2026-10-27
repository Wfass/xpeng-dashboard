.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XpSeatMassagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setSeatMassagerListener(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;)V

    .line 44
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->access$000()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->unsetSeatMassagerListener(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;)V

    .line 50
    return-void
.end method
