.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$TorqueEventMsg;
.super Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;
.source "IIpuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TorqueEventMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;-><init>()V

    return-void
.end method
