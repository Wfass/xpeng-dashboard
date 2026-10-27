.class Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;
.super Landroid/os/Handler;
.source "CarGuardModeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/guard/CarGuardModeScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_SCENE_CHECK_GUARD_READY:I = 0x7531

.field public static final MSG_SCENE_GUARD_MODE_LIGHTOFF_DISPLAYOFF:I = 0x7534

.field public static final MSG_SCENE_GUARD_MODE_TIMEOUT_COUNT:I = 0x7533

.field public static final MSG_SCENE_GUARD_TIMEOUT:I = 0x7532

.field public static final MSG_SCENE_RECOGINTION_AWAY_HOLD_CHECK:I = 0x7535

.field public static final TIME_MSG_SCENE_CHECK_GUARD_READY_DELAY:I = 0x2710

.field public static final TIME_MSG_SCENE_GUARD_MODE_TIMEOUT_COUNT:I = 0x493e0

.field public static final TIME_MSG_SCENE_GUARD_TIMEOUT:I = 0xf731400


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/xpeng/guard/CarGuardModeScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 275
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 276
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    .line 299
    .local v0, "cost":F
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActive(IF)V

    .line 300
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: now deal with message to check should exit guard mode?mRecogActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$300(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "cost":F
    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$200(Lcom/android/car/xpeng/guard/CarGuardModeScene;Z)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V

    goto :goto_0

    .line 285
    :pswitch_3
    goto :goto_0

    .line 279
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 281
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->values()[Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$000(Lcom/android/car/xpeng/guard/CarGuardModeScene;Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;)V

    .line 282
    .end local v0    # "type":I
    nop

    .line 304
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
