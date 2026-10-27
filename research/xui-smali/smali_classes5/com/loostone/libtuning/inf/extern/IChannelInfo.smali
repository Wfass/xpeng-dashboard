.class public interface abstract Lcom/loostone/libtuning/inf/extern/IChannelInfo;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/loostone/libtuning/inf/extern/IChannelInfo;",
        "",
        "",
        "getPowerStatus",
        "()I",
        "getVerifyStatus",
        "Lcom/loostone/libtuning/inf/extern/IBaseKeyService;",
        "getMicService",
        "()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;",
        "Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "getMicControlService",
        "()Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "",
        "hasDongle",
        "()Z",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getMicControlService()Lcom/loostone/libtuning/inf/extern/IMicControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getMicService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPowerStatus()I
.end method

.method public abstract getVerifyStatus()I
.end method

.method public abstract hasDongle()Z
.end method
