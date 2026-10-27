.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICountdownTimeListener"
.end annotation


# virtual methods
.method public abstract onTimeStop()V
.end method

.method public abstract onUpdateTime(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainingTime"
        }
    .end annotation
.end method
