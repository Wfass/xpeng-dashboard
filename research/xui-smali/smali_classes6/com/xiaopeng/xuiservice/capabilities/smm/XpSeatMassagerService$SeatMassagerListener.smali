.class public interface abstract Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeatMassagerListener"
.end annotation


# virtual methods
.method public abstract onMassagerEvent(IILjava/lang/String;I)V
.end method

.method public abstract onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method
