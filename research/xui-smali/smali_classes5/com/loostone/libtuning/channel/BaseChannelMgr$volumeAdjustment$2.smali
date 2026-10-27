.class public final Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "<anonymous>",
        "()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object v0

    .line 3
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "volumeAdjustment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;->invoke()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v0

    return-object v0
.end method
