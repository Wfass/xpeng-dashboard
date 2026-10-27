.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;
.super Ljava/lang/Object;
.source "ISfsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final SFS_CHANNEL_1:I = 0x0

.field public static final SFS_CHANNEL_2:I = 0x1

.field public static final SFS_CHANNEL_3:I = 0x2

.field public static final SFS_MAX_CHANNEL:I = 0x2

.field public static final SFS_TYPE_1:I = 0x1

.field public static final SFS_TYPE_2:I = 0x2

.field public static final SFS_TYPE_3:I = 0x3

.field public static final SFS_TYPE_4:I = 0x4

.field public static final SFS_TYPE_NULL:I


# virtual methods
.method public abstract getActivatedChannel()I
.end method

.method public abstract getTypesInChannel()[I
.end method

.method public abstract isSwEnabled()Z
.end method

.method public abstract setActiveChannel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sfsChannel"
        }
    .end annotation
.end method

.method public abstract setSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
