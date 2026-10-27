.class Lcom/xiaopeng/xuiservice/debug/WatchDog$2;
.super Landroid/os/Handler;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 335
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainHandler got msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 357
    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$400(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    .line 350
    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$302(Lcom/xiaopeng/xuiservice/debug/WatchDog;I)I

    .line 347
    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$2;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$308(Lcom/xiaopeng/xuiservice/debug/WatchDog;)I

    .line 343
    nop

    .line 361
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
