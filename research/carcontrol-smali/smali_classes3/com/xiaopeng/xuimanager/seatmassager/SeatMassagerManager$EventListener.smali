.class public interface abstract Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;
.super Ljava/lang/Object;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public onChangeAreaMassager(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChangeEffectMassager(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChangeIntensityMassager(II)V
    .locals 0

    return-void
.end method

.method public onChangeIntensityRhythm(Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onChangeIntensityVibrate(Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onChangePatternRhythm(I)V
    .locals 0

    return-void
.end method

.method public onChangeStatusRhythm(Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onErrorMassager(ILjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onErrorVibrate(Ljava/util/Set;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadVibrate(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onStartMassager(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onStartVibrate(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    return-void
.end method

.method public onStopMassager(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onStopVibrate(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    return-void
.end method
