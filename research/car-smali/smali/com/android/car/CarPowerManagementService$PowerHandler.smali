.class Lcom/android/car/CarPowerManagementService$PowerHandler;
.super Landroid/os/Handler;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerHandler"
.end annotation


# instance fields
.field private final MAIN_DISPLAY_EVENT_DELAY_MS:J

.field private final MSG_BOOT_COMPLETE:I

.field private final MSG_DISPLAY_BRIGHTNESS_CHANGE:I

.field private final MSG_MAIN_DISPLAY_STATE_CHANGE:I

.field private final MSG_NOTIFY_POWER_ON:I

.field private final MSG_POWER_STATE_CHANGE:I

.field private final MSG_PROCESSING_COMPLETE:I

.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1050
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    .line 1051
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1039
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_POWER_STATE_CHANGE:I

    .line 1040
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_DISPLAY_BRIGHTNESS_CHANGE:I

    .line 1041
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_MAIN_DISPLAY_STATE_CHANGE:I

    .line 1042
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_PROCESSING_COMPLETE:I

    .line 1043
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_NOTIFY_POWER_ON:I

    .line 1044
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_BOOT_COMPLETE:I

    .line 1048
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MAIN_DISPLAY_EVENT_DELAY_MS:J

    .line 1052
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/CarPowerManagementService$1;

    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # I

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleDisplayBrightnessChange(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # Z

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleMainDisplayStateChange(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1037
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleBootComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1037
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->cancelProcessingComplete()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # J

    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handlePowerStateChange(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1037
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->cancelAll()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1037
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handlePowerOn()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # Z

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleProcessingComplete(Z)V

    return-void
.end method

.method private cancelAll()V
    .locals 1

    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1093
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1094
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1095
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1096
    return-void
.end method

.method private cancelProcessingComplete()V
    .locals 1

    .line 1087
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1088
    return-void
.end method

.method private handleBootComplete()V
    .locals 1

    .line 1083
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendEmptyMessage(I)Z

    .line 1084
    return-void
.end method

.method private handleDisplayBrightnessChange(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 1061
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1062
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    return-void
.end method

.method private handleMainDisplayStateChange(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1067
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1068
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1069
    return-void
.end method

.method private handlePowerOn()V
    .locals 1

    .line 1078
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1079
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1080
    return-void
.end method

.method private handlePowerStateChange(J)V
    .locals 2
    .param p1, "time"    # J

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1056
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1057
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1058
    return-void
.end method

.method private handleProcessingComplete(Z)V
    .locals 2
    .param p1, "shutdownWhenCompleted"    # Z

    .line 1072
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1073
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1074
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1100
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1122
    :pswitch_0
    const-string v0, "CAR.POWER"

    const-string v2, "system boot complete!!!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$1802(Lcom/android/car/CarPowerManagementService;Z)Z

    goto :goto_1

    .line 1118
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$1700(Lcom/android/car/CarPowerManagementService;)V

    .line 1119
    goto :goto_1

    .line 1114
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$1600(Lcom/android/car/CarPowerManagementService;Z)V

    .line 1115
    goto :goto_1

    .line 1110
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$1500(Lcom/android/car/CarPowerManagementService;Z)V

    .line 1111
    goto :goto_1

    .line 1106
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$1400(Lcom/android/car/CarPowerManagementService;I)V

    .line 1107
    goto :goto_1

    .line 1102
    :pswitch_5
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$1300(Lcom/android/car/CarPowerManagementService;)V

    .line 1103
    nop

    .line 1126
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
