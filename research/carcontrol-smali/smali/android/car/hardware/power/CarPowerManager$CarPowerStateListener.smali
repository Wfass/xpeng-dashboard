.class public interface abstract Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
.super Ljava/lang/Object;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/power/CarPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPowerStateListener"
.end annotation


# static fields
.field public static final ON:I = 0x6

.field public static final ON_SCREEN_OFF:I = 0x9

.field public static final SHUTDOWN_CANCELLED:I = 0x8

.field public static final SHUTDOWN_ENTER:I = 0x5

.field public static final SHUTDOWN_PREPARE:I = 0x7

.field public static final STANDBY:I = 0x4

.field public static final SUSPEND_ENTER:I = 0x2

.field public static final SUSPEND_EXIT:I = 0x3

.field public static final WAIT_FOR_VHAL:I = 0x1


# virtual methods
.method public abstract onStateChanged(I)V
.end method
