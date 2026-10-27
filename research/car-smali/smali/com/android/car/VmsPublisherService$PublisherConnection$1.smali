.class Lcom/android/car/VmsPublisherService$PublisherConnection$1;
.super Ljava/lang/Object;
.source "VmsPublisherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService$PublisherConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/car/VmsPublisherService$PublisherConnection;


# direct methods
.method constructor <init>(Lcom/android/car/VmsPublisherService$PublisherConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/car/VmsPublisherService$PublisherConnection;

    .line 324
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection$1;->this$1:Lcom/android/car/VmsPublisherService$PublisherConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 327
    const-string v0, "VmsPublisherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayed binding for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection$1;->this$1:Lcom/android/car/VmsPublisherService$PublisherConnection;

    invoke-static {v2}, Lcom/android/car/VmsPublisherService$PublisherConnection;->access$200(Lcom/android/car/VmsPublisherService$PublisherConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherConnection$1;->this$1:Lcom/android/car/VmsPublisherService$PublisherConnection;

    iget-object v0, v0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection$1;->this$1:Lcom/android/car/VmsPublisherService$PublisherConnection;

    invoke-static {v1}, Lcom/android/car/VmsPublisherService$PublisherConnection;->access$200(Lcom/android/car/VmsPublisherService$PublisherConnection;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/VmsPublisherService;->access$300(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V

    .line 329
    return-void
.end method
