.class Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$2;
.super Ljava/lang/Object;
.source "AirConditionManager.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 47
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 53
    return-void
.end method
