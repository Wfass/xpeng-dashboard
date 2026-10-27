.class public final Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundConfig;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR2\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundConfig;",
        "",
        "Ljava/util/ArrayList;",
        "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
        "Lkotlin/collections/ArrayList;",
        "environmentalSoundList",
        "Ljava/util/ArrayList;",
        "getEnvironmentalSoundList",
        "()Ljava/util/ArrayList;",
        "setEnvironmentalSoundList",
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
.field private environmentalSoundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
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

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundConfig;->environmentalSoundList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getEnvironmentalSoundList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundConfig;->environmentalSoundList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setEnvironmentalSoundList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundConfig;->environmentalSoundList:Ljava/util/ArrayList;

    return-void
.end method
