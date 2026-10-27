.class Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

.field final synthetic val$igOnStateFromSystem:I

.field final synthetic val$igStateFromBroadcastConst:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$igOnStateFromSystem",
            "val$igStateFromBroadcastConst"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

    iput p2, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->val$igStateFromBroadcastConst:I

    iput p3, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->val$igOnStateFromSystem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$400(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->val$igStateFromBroadcastConst:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->val$igOnStateFromSystem:I

    if-eq v1, v2, :cond_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get IgOnState occurs exception!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->val$igOnStateFromSystem:I

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$502(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;I)I

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver$1;->this$1:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$602(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;J)J

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
