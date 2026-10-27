.class public final Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;",
        "",
        "",
        "lastState",
        "I",
        "getLastState",
        "()I",
        "setLastState",
        "(I)V",
        "<init>",
        "()V",
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
.field private lastState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;->lastState:I

    return-void
.end method


# virtual methods
.method public final getLastState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;->lastState:I

    return v0
.end method

.method public final setLastState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;->lastState:I

    return-void
.end method
