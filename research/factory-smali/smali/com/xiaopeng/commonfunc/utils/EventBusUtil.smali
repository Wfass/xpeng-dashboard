.class public Lcom/xiaopeng/commonfunc/utils/EventBusUtil;
.super Ljava/lang/Object;
.source "EventBusUtil.java"


# static fields
.field public static final CAR_SERVICE_CONNECTED:I = 0x3f5d3d8

.field private static final TAG:Ljava/lang/String; = "EventBusUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerEventBus(Ljava/lang/Object;)V
    .locals 1
    .param p0, "subscriber"    # Ljava/lang/Object;

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public static unregisterEventBus(Ljava/lang/Object;)V
    .locals 1
    .param p0, "subscriber"    # Ljava/lang/Object;

    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method
