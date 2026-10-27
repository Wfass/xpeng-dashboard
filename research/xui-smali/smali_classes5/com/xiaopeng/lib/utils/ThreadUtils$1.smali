.class final Lcom/xiaopeng/lib/utils/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$finalHandler:Landroid/os/Handler;

.field final synthetic val$priority:I

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$callback",
            "val$finalHandler",
            "val$runnable",
            "val$priority"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$priority:I

    iput-object p2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$finalHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$finalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$finalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    return-void
.end method
