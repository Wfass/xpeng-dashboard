.class Lcom/android/car/DebugService$LoadView$1;
.super Landroid/os/Handler;
.source "DebugService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/DebugService$LoadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/car/DebugService$LoadView;


# direct methods
.method constructor <init>(Lcom/android/car/DebugService$LoadView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/car/DebugService$LoadView;

    .line 202
    iput-object p1, p0, Lcom/android/car/DebugService$LoadView$1;->this$1:Lcom/android/car/DebugService$LoadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView$1;->this$1:Lcom/android/car/DebugService$LoadView;

    invoke-static {v0}, Lcom/android/car/DebugService$LoadView;->access$000(Lcom/android/car/DebugService$LoadView;)Lcom/android/car/DebugService$CpuTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/DebugService$CpuTracker;->update()V

    .line 207
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView$1;->this$1:Lcom/android/car/DebugService$LoadView;

    invoke-virtual {v0}, Lcom/android/car/DebugService$LoadView;->updateDisplay()V

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/car/DebugService$LoadView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "m":Landroid/os/Message;
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/DebugService$LoadView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
