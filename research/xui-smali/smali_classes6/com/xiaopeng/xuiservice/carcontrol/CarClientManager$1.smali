.class Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;
.super Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;
.source "CarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
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

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    invoke-direct {p0}, Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_vcu"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->access$200(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    .line 338
    return-void
.end method
