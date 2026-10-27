.class Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;
.super Ljava/lang/Object;
.source "BcmController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->setFrontWindows(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;Z)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    iput-boolean p2, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    iget-boolean v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->val$isOpen:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->setDriverWindowAuto(Z)V

    const-wide/16 v0, 0x12c

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    iget-boolean v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;->val$isOpen:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->setCopilotWindowAuto(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
