.class Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;
.super Ljava/lang/Object;
.source "ThrottleUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->access$000(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->access$100(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout: onSendRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottleUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->access$200(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;->onSendRequest(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->access$302(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;Z)Z

    return-void
.end method
