.class Lcom/android/car/VmsPublisherService$EventHandler;
.super Landroid/os/Handler;
.source "VmsPublisherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method private constructor <init>(Lcom/android/car/VmsPublisherService;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$EventHandler;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/VmsPublisherService;Lcom/android/car/VmsPublisherService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/VmsPublisherService;
    .param p2, "x1"    # Lcom/android/car/VmsPublisherService$1;

    .line 371
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService$EventHandler;-><init>(Lcom/android/car/VmsPublisherService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 374
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 379
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 380
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$EventHandler;->this$0:Lcom/android/car/VmsPublisherService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/vms/VmsSubscriptionState;

    invoke-static {v0, v1}, Lcom/android/car/VmsPublisherService;->access$800(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsSubscriptionState;)V

    .line 377
    return-void
.end method
