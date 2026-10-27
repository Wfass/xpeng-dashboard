.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$OutsideAirTempEventMsg;
.super Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;
.source "IHVACController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutsideAirTempEventMsg"
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

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;-><init>()V

    return-void
.end method
