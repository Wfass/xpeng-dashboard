.class Lcom/android/car/VmsPublisherService$1;
.super Landroid/content/BroadcastReceiver;
.source "VmsPublisherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/VmsPublisherService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method constructor <init>(Lcom/android/car/VmsPublisherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/VmsPublisherService;

    .line 94
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$1;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 97
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$1;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$100(Lcom/android/car/VmsPublisherService;)V

    goto :goto_0

    .line 100
    :cond_0
    const-string v0, "VmsPublisherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void
.end method
