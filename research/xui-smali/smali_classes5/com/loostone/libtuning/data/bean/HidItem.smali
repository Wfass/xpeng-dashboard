.class public final Lcom/loostone/libtuning/data/bean/HidItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/loostone/libtuning/data/bean/HidItem;",
        "",
        "",
        "lastState",
        "I",
        "getLastState",
        "()I",
        "setLastState",
        "(I)V",
        "hidCode",
        "getHidCode",
        "setHidCode",
        "keyCode",
        "getKeyCode",
        "setKeyCode",
        "micIndex",
        "getMicIndex",
        "setMicIndex",
        "<init>",
        "(III)V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private hidCode:I

.field private keyCode:I

.field private lastState:I

.field private micIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->micIndex:I

    iput p2, p0, Lcom/loostone/libtuning/data/bean/HidItem;->hidCode:I

    iput p3, p0, Lcom/loostone/libtuning/data/bean/HidItem;->keyCode:I

    .line 4
    const/4 p1, -0x1

    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->lastState:I

    return-void
.end method


# virtual methods
.method public final getHidCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/bean/HidItem;->hidCode:I

    return v0
.end method

.method public final getKeyCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/bean/HidItem;->keyCode:I

    return v0
.end method

.method public final getLastState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/bean/HidItem;->lastState:I

    return v0
.end method

.method public final getMicIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/bean/HidItem;->micIndex:I

    return v0
.end method

.method public final setHidCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->hidCode:I

    return-void
.end method

.method public final setKeyCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->keyCode:I

    return-void
.end method

.method public final setLastState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->lastState:I

    return-void
.end method

.method public final setMicIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/bean/HidItem;->micIndex:I

    return-void
.end method
