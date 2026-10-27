.class public Lcom/xiaopeng/commonfunc/bean/event/signal/BtPowerEvent;
.super Ljava/lang/Object;
.source "BtPowerEvent.java"


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/BtPowerEvent;->state:I

    .line 12
    return-void
.end method
