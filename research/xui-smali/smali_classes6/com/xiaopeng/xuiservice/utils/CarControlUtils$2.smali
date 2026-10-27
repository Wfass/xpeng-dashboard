.class Lcom/xiaopeng/xuiservice/utils/CarControlUtils$2;
.super Ljava/lang/Object;
.source "CarControlUtils.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    .line 379
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$2;->this$0:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$2;->this$0:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->access$400(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;Landroid/car/hardware/CarPropertyValue;)V

    .line 383
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 387
    return-void
.end method
