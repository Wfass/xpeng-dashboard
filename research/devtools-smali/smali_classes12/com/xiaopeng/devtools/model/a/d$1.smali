.class Lcom/xiaopeng/devtools/model/a/d$1;
.super Ljava/lang/Object;
.source "TboxModel.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rS:Lcom/xiaopeng/devtools/model/a/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/a/d;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/a/d$1;->rS:Lcom/xiaopeng/devtools/model/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    .line 87
    return-void
.end method
