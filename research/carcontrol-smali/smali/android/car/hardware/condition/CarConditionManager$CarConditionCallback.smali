.class public abstract Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;
.super Landroid/car/hardware/condition/ICarConditionEventListener$Stub;
.source "CarConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/condition/CarConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarConditionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/car/hardware/condition/ICarConditionEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
.end method
