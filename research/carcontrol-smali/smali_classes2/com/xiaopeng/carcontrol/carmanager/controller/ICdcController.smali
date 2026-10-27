.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;
.super Ljava/lang/Object;
.source "ICdcController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final CDC_FUNCTION_MODE_COMFORT:I = 0x2

.field public static final CDC_FUNCTION_MODE_SPORT:I = 0x3

.field public static final CDC_FUNCTION_MODE_STANDARD:I = 0x1


# virtual methods
.method public abstract getCdcMode()I
.end method

.method public abstract setCdcMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cdc",
            "needSave"
        }
    .end annotation
.end method
