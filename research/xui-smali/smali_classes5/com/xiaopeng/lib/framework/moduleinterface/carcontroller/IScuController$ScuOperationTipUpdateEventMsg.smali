.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuOperationTipUpdateEventMsg;
.super Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;
.source "IScuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScuOperationTipUpdateEventMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuOperationTipUpdateEventMsg$Error;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbstractEventMsg;-><init>()V

    return-void
.end method
