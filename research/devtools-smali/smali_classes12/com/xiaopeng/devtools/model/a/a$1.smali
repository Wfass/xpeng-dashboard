.class Lcom/xiaopeng/devtools/model/a/a$1;
.super Ljava/lang/Object;
.source "BcmModel.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rH:Lcom/xiaopeng/devtools/model/a/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/a/a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/a/a$1;->rH:Lcom/xiaopeng/devtools/model/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    .line 66
    return-void
.end method
