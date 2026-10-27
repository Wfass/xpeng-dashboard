.class Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;
.super Ljava/lang/Object;
.source "CarClientManager.java"

# interfaces
.implements Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->initCarCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 474
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_srs"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->access$200(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    .line 478
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_srs"

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->access$300(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/lang/String;II)V

    .line 483
    return-void
.end method
