.class Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/ThreadUtils$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    iget-object v0, v0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$preCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    iget-object v0, v0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$finalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    iget-object v1, v1, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$postRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method
