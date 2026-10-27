.class Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

.field final synthetic val$screenDisplayState:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$screenDisplayState"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

    iput p2, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->val$screenDisplayState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$400(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->val$screenDisplayState:I

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$802(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;I)I

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$902(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;J)J

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
