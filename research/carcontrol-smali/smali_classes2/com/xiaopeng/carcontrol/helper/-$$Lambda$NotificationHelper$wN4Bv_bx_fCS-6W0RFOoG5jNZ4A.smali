.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$wN4Bv_bx_fCS-6W0RFOoG5jNZ4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$wN4Bv_bx_fCS-6W0RFOoG5jNZ4A;->f$0:Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;

    return-void
.end method


# virtual methods
.method public final onMessageClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$wN4Bv_bx_fCS-6W0RFOoG5jNZ4A;->f$0:Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->lambda$sendMessageToMessageCenter$0(Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;Ljava/lang/String;)V

    return-void
.end method
