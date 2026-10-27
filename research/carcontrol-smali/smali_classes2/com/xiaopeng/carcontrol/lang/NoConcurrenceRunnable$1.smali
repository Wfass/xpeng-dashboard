.class Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;
.super Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;
.source "NoConcurrenceRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;-><init>(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->access$000(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    monitor-enter v0

    .line 80
    :try_start_0
    iget v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->access$100(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->run()V

    .line 82
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mRepeatable:Z

    if-nez v2, :cond_0

    .line 83
    iget v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    .line 86
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    monitor-enter v0

    .line 90
    :try_start_1
    iget v2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->access$100(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 91
    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mRepeatable:Z

    if-nez v3, :cond_3

    .line 92
    iget v3, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->mSession:I

    .line 94
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->run()V

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 94
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
