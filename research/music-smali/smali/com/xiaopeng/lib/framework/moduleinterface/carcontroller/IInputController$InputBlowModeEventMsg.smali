.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputBlowModeEventMsg;
.super Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;
.source "IInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBlowModeEventMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg<",
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;-><init>()V

    return-void
.end method
