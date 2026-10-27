.class Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;
.super Landroid/os/Handler;
.source "CarAutoWakeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_HV_REQ:I = 0x1

.field public static final MSG_HV_REQ_DURATION_TIMEOUT_EXIT:I = 0x2

.field public static final MSG_HV_REQ_TIMEOUT_EXIT_2_HOURS:I = 0xc

.field public static final MSG_SYNC_TBOX_RTC_CLOCK:I = 0x5

.field public static final MSG_TASK_DURATION_TIMEOUT_EXIT:I = 0x4

.field public static final MSG_TASK_DURATION_TIMEOUT_EXIT_2_HOUR2:I = 0xe

.field public static final MSG_TASK_INTERRUPT_EXIT:I = 0x3

.field public static final TIME_MSG_HV_REQ:I = 0x1388

.field public static final TIME_MSG_HV_REQ_TIMEOUT_EXIT_2_HOURS:I = 0x6ddd00

.field public static final TIME_MSG_TASK_TIMEOUT_EXIT_2_HOUR:I = 0x6ddd00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_SYNC_TBOX_RTC_CLOCK_CYCLE:I = 0x7d0


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 249
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1800(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    goto/16 :goto_1

    .line 279
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "taskId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 281
    .local v1, "error":I
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v3, v2, v2, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1700(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;ZZLjava/lang/String;I)V

    .line 285
    .end local v0    # "taskId":Ljava/lang/String;
    .end local v1    # "error":I
    :cond_0
    goto :goto_1

    .line 270
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 271
    .restart local v0    # "taskId":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 272
    .local v3, "error":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 273
    .local v1, "cancelHv":Z
    :goto_0
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v4, v2, v1, v0, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1700(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;ZZLjava/lang/String;I)V

    .line 277
    .end local v0    # "taskId":Ljava/lang/String;
    .end local v1    # "cancelHv":Z
    .end local v3    # "error":I
    :cond_2
    goto :goto_1

    .line 263
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1602(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;J)J

    .line 267
    :cond_3
    const-string v0, "CarAutoWakeService"

    const-string v1, "handleMessage: recived MSG_HV_REQ_TIMEOUT_CACEL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    goto :goto_1

    .line 256
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1500(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    .line 258
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
