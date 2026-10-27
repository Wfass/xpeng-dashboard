.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraAngleEventMsg;
.super Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;
.source "IAvmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraAngleEventMsg"
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

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;-><init>()V

    return-void
.end method
