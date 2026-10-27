.class Lcom/xiaopeng/factory/model/car/TboxModel$1;
.super Ljava/lang/Object;
.source "TboxModel.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/car/TboxModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/car/TboxModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/car/TboxModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/car/TboxModel;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/factory/model/car/TboxModel$1;->this$0:Lcom/xiaopeng/factory/model/car/TboxModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 86
    return-void
.end method
