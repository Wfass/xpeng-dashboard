.class public final Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R2\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;",
        "",
        "",
        "defaultId",
        "I",
        "getDefaultId",
        "()I",
        "setDefaultId",
        "(I)V",
        "Ljava/util/ArrayList;",
        "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
        "Lkotlin/collections/ArrayList;",
        "effectModeList",
        "Ljava/util/ArrayList;",
        "getEffectModeList",
        "()Ljava/util/ArrayList;",
        "setEffectModeList",
        "(Ljava/util/ArrayList;)V",
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
.field private defaultId:I

.field private effectModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->effectModeList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getDefaultId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->defaultId:I

    return v0
.end method

.method public final getEffectModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->effectModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setDefaultId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->defaultId:I

    return-void
.end method

.method public final setEffectModeList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->effectModeList:Ljava/util/ArrayList;

    return-void
.end method
