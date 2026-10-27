.class Lcom/android/car/GarageModeService$GarageModeHandler;
.super Landroid/os/Handler;
.source "GarageModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/GarageModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GarageModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/GarageModeService;


# direct methods
.method public constructor <init>(Lcom/android/car/GarageModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 99
    iput-object p1, p0, Lcom/android/car/GarageModeService$GarageModeHandler;->this$0:Lcom/android/car/GarageModeService;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/GarageModeService$GarageModeHandler;->this$0:Lcom/android/car/GarageModeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/car/GarageModeService;->access$100(Lcom/android/car/GarageModeService;I)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/GarageModeService$GarageModeHandler;->this$0:Lcom/android/car/GarageModeService;

    invoke-static {v0}, Lcom/android/car/GarageModeService;->access$000(Lcom/android/car/GarageModeService;)Lcom/android/car/CarPowerManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/GarageModeService$GarageModeHandler;->this$0:Lcom/android/car/GarageModeService;

    invoke-virtual {v0, v1}, Lcom/android/car/CarPowerManagementService;->notifyPowerEventProcessingCompletion(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 109
    nop

    .line 114
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
