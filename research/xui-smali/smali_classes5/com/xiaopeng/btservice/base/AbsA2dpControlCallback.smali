.class public abstract Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;
.super Ljava/lang/Object;
.source "AbsA2dpControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpServiceReady()V
    .locals 0

    .line 6
    return-void
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 9
    return-void
.end method
