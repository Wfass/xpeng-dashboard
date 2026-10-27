.class Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$21;
.super Ljava/lang/Object;
.source "CarClientManager.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;


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

    .line 598
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$21;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$21;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->access$400(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;I)V

    .line 602
    return-void
.end method
