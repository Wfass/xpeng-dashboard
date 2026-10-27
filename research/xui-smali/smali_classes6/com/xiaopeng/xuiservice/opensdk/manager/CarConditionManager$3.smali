.class Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$3;
.super Ljava/lang/Object;
.source "CarConditionManager.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$3;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$3;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;Landroid/car/hardware/CarPropertyValue;)V

    .line 61
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 65
    return-void
.end method
