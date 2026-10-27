.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO00o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0Oo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 7

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0O0()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9c

    .line 321
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;

    const/4 v2, 0x0

    .line 322
    sget-object v3, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 639
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;

    .line 640
    invoke-virtual {v4}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v5

    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getId()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 639
    move-object v2, v4

    goto :goto_1

    .line 640
    :cond_4
    if-nez v2, :cond_5

    .line 644
    new-instance v2, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;

    invoke-direct {v2}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;-><init>()V

    .line 646
    :cond_5
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v5, "eff name = "

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TransportConfig"

    invoke-virtual {v4, v5, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :goto_2
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getType()I

    move-result v3

    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "eff type = "

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TransportConfig"

    invoke-virtual {v4, v5, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "eff id = "

    .line 649
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TransportConfig"

    invoke-virtual {v4, v6, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_7

    goto :goto_0

    .line 653
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->setEffectId(I)V

    .line 657
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 658
    invoke-virtual {v2}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectSurround()Ljava/util/Map;

    move-result-object v3

    goto :goto_3

    .line 660
    :cond_8
    invoke-virtual {v2}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectScene()Ljava/util/Map;

    move-result-object v3

    .line 664
    :goto_3
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :goto_4
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :goto_5
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :goto_6
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :goto_7
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :goto_8
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :goto_9
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0oO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :goto_a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :goto_b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :goto_c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :goto_d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOO0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    :goto_e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_f

    :cond_14
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :goto_f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :goto_10
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :goto_11
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :goto_12
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_18

    goto :goto_13

    :cond_18
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :goto_13
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_14

    :cond_19
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :goto_14
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :goto_15
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1b

    goto :goto_16

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOOoo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :goto_16
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1c

    goto :goto_17

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOo00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :goto_17
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :goto_18
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_19

    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOo0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :goto_19
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1f

    goto :goto_1a

    :cond_1f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOo0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :goto_1a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_1b

    :cond_20
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_1b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_1c

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOoO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :goto_1c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_1d

    :cond_22
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_1d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_23

    goto :goto_1e

    :cond_23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOoOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :goto_1e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_1f

    :cond_24
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOoo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :goto_1f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_20

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOoo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :goto_20
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_26

    goto :goto_21

    :cond_26
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :goto_21
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_22

    :cond_27
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooOooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :goto_22
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_28

    goto :goto_23

    :cond_28
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :goto_23
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_29

    goto :goto_24

    :cond_29
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo00O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :goto_24
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_TYPE9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2a

    goto :goto_25

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :goto_25
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_FC9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2b

    goto :goto_26

    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :goto_26
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_GAIN9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2c

    goto :goto_27

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :goto_27
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getGLOBAL_EQ_Q9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2d

    goto :goto_28

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0OO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :goto_28
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2e

    goto :goto_29

    :cond_2e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :goto_29
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_2a

    :cond_2f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :goto_2a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_2b

    :cond_30
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0oO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :goto_2b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_31

    goto :goto_2c

    :cond_31
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo0oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :goto_2c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q1()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_2d

    :cond_32
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :goto_2d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_2e

    :cond_33
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooO00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :goto_2e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_34

    goto :goto_2f

    :cond_34
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :goto_2f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_30

    :cond_35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooO0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :goto_30
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q2()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_36

    goto :goto_31

    :cond_36
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :goto_31
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_37

    goto :goto_32

    :cond_37
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :goto_32
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_38

    goto :goto_33

    :cond_38
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000oOoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :goto_33
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_39

    goto :goto_34

    :cond_39
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :goto_34
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q3()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_35

    :cond_3a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :goto_35
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3b

    goto :goto_36

    :cond_3b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :goto_36
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3c

    goto :goto_37

    :cond_3c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :goto_37
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3d

    goto :goto_38

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooOoo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :goto_38
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q4()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3e

    goto :goto_39

    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Ooooo00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :goto_39
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3f

    goto :goto_3a

    :cond_3f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Ooooo0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :goto_3a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_40

    goto :goto_3b

    :cond_40
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooooO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :goto_3b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_41

    goto :goto_3c

    :cond_41
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooooOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :goto_3c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q5()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_42

    goto :goto_3d

    :cond_42
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooooOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :goto_3d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_43

    goto :goto_3e

    :cond_43
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooooo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :goto_3e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_44

    goto :goto_3f

    :cond_44
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Oooooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :goto_3f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_45

    goto :goto_40

    :cond_45
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OoooooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :goto_40
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q6()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_46

    goto :goto_41

    :cond_46
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->Ooooooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :goto_41
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_47

    goto :goto_42

    :cond_47
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0OoOo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :goto_42
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_48

    goto :goto_43

    :cond_48
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->ooOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :goto_43
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_49

    goto :goto_44

    :cond_49
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00O0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :goto_44
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q7()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4a

    goto :goto_45

    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00Oo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :goto_45
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4b

    goto :goto_46

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00Ooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :goto_46
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4c

    goto :goto_47

    :cond_4c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00o0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :goto_47
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4d

    goto :goto_48

    :cond_4d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00ooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :goto_48
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q8()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4e

    goto :goto_49

    :cond_4e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->oo000o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    :goto_49
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_TYPE9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4f

    goto :goto_4a

    :cond_4f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00oO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :goto_4a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_FC9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_50

    goto :goto_4b

    :cond_50
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00oO0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :goto_4b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_GAIN9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_51

    goto :goto_4c

    :cond_51
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0ooOO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :goto_4c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSCENE_EQ_Q9()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_52

    goto :goto_4d

    :cond_52
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0ooOOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :goto_4d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_53

    goto :goto_4e

    :cond_53
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0ooOoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :goto_4e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_TYPE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_54

    goto :goto_4f

    :cond_54
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0OOO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :goto_4f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_TIME()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_55

    goto :goto_50

    :cond_55
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0Oo0oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :goto_50
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_VOL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_56

    goto :goto_51

    :cond_56
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0OO00O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :goto_51
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_FEEDBACK()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_57

    goto :goto_52

    :cond_57
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->oo0o0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :goto_52
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_HIGHCUT()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_58

    goto :goto_53

    :cond_58
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0O0O00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :goto_53
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_LOWCUT()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_59

    goto :goto_54

    :cond_59
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :goto_54
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getECHO_STWIDE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5a

    goto :goto_55

    :cond_5a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :goto_55
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5b

    goto :goto_56

    :cond_5b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000000O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :goto_56
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_TYPE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5c

    goto :goto_57

    :cond_5c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000000o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :goto_57
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_TIME()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5d

    goto :goto_58

    :cond_5d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :goto_58
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_VOL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5e

    goto :goto_59

    :cond_5e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :goto_59
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_HIGHDAMP()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5f

    goto :goto_5a

    :cond_5f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :goto_5a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_LOWCUT()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_60

    goto :goto_5b

    :cond_60
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000OO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :goto_5b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_HIGHCUT()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_61

    goto :goto_5c

    :cond_61
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :goto_5c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_STWIDE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_62

    goto :goto_5d

    :cond_62
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :goto_5d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getREV_ECHO_GAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_63

    goto :goto_5e

    :cond_63
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000Ooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :goto_5e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_THRES()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_64

    goto :goto_5f

    :cond_64
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000oO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :goto_5f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_PREGAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_65

    goto :goto_60

    :cond_65
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o00000oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :goto_60
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_ATTACK()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_66

    goto :goto_61

    :cond_66
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :goto_61
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_RELEASE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_67

    goto :goto_62

    :cond_67
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000O00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :goto_62
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_RATIO()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_68

    goto :goto_63

    :cond_68
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_63
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_VOLUME()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_69

    goto :goto_64

    :cond_69
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :goto_64
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCOMP_GLOBAL_GAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6a

    goto :goto_65

    :cond_6a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :goto_65
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPS_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6b

    goto :goto_66

    :cond_6b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000O0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :goto_66
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPS_SEMI()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6c

    goto :goto_67

    :cond_6c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :goto_67
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPS_MODE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6d

    goto :goto_68

    :cond_6d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :goto_68
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getFBC_LEVEL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6e

    goto :goto_69

    :cond_6e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000OO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :goto_69
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getFBC_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_6f

    goto :goto_6a

    :cond_6f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000OO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :goto_6a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getDHS_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_70

    goto :goto_6b

    :cond_70
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000OOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :goto_6b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getDHS_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_71

    goto :goto_6c

    :cond_71
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000OOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :goto_6c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getNSR_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_72

    goto :goto_6d

    :cond_72
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000Oo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :goto_6d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getNSR_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_73

    goto :goto_6e

    :cond_73
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :goto_6e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getLOFI_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_74

    goto :goto_6f

    :cond_74
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000OoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :goto_6f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getLOFI_DOWN_SAMPLE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_75

    goto :goto_70

    :cond_75
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :goto_70
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getLOFI_TYPE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_76

    goto :goto_71

    :cond_76
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000o0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_71
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getLOFI_8BIT_TYPE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_77

    goto :goto_72

    :cond_77
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000o0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :goto_72
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getLOFI_ALAISING()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_78

    goto :goto_73

    :cond_78
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :goto_73
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_79

    goto :goto_74

    :cond_79
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :goto_74
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_FORMANT_SEMI()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7a

    goto :goto_75

    :cond_7a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :goto_75
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_PITCH_SEMI()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7b

    goto :goto_76

    :cond_7b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :goto_76
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_DELAYLEN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7c

    goto :goto_77

    :cond_7c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000oo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :goto_77
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_ROBOTPITCH()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7d

    goto :goto_78

    :cond_7d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0000ooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :goto_78
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_ROBOTPITCHONOFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7e

    goto :goto_79

    :cond_7e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :goto_79
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_AUTOTUNEONOFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7f

    goto :goto_7a

    :cond_7f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :goto_7a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getVC_DRYWET()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_80

    goto :goto_7b

    :cond_80
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :goto_7b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getNSGATE_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_81

    goto :goto_7c

    :cond_81
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :goto_7c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getNSGATE_THRES()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_82

    goto :goto_7d

    :cond_82
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Ooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :goto_7d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getNSGATE_RELEASE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_83

    goto :goto_7e

    :cond_83
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :goto_7e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSWEEP_SIN_START()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_84

    goto :goto_7f

    :cond_84
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :goto_7f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSWEEP_SIN_LEFT_VOL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_85

    goto :goto_80

    :cond_85
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :goto_80
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getSWEEP_SIN_RIGHT_VOL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_86

    goto :goto_81

    :cond_86
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O00O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :goto_81
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_87

    goto :goto_82

    :cond_87
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :goto_82
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_FC()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_88

    goto :goto_83

    :cond_88
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :goto_83
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_FC()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_89

    goto :goto_84

    :cond_89
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OO0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_84
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_PREGAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8a

    goto :goto_85

    :cond_8a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :goto_85
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_MID_PREGAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8b

    goto :goto_86

    :cond_8b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    :goto_86
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_PREGAIN()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8c

    goto :goto_87

    :cond_8c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0oO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :goto_87
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8d

    goto :goto_88

    :cond_8d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O0oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :goto_88
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_MID_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8e

    goto :goto_89

    :cond_8e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :goto_89
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_THRESHOLD()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8f

    goto :goto_8a

    :cond_8f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OO00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_8a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_RATIO()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_90

    goto :goto_8b

    :cond_90
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o0OoO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    :goto_8b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_MID_RATIO()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_91

    goto :goto_8c

    :cond_91
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OO0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :goto_8c
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_RATIO()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_92

    goto :goto_8d

    :cond_92
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :goto_8d
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_ATTACK()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_93

    goto :goto_8e

    :cond_93
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OOo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :goto_8e
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_MID_ATTACK()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_94

    goto :goto_8f

    :cond_94
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OOoO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :goto_8f
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_ATTACK()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_95

    goto :goto_90

    :cond_95
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oo00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :goto_90
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_LOW_RELEASE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_96

    goto :goto_91

    :cond_96
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oo0O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :goto_91
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_MID_RELEASE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_97

    goto :goto_92

    :cond_97
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oo0o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :goto_92
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getBANDCOMP_HIGH_RELEASE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_98

    goto :goto_93

    :cond_98
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :goto_93
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPOPR_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_99

    goto :goto_94

    :cond_99
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OoOO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :goto_94
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPOPR_MUTE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9a

    goto :goto_95

    :cond_9a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OoOo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :goto_95
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPOPR_UNMUTE()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9b

    goto :goto_96

    :cond_9b
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Ooo0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :goto_96
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPOPR_MUTE_TIME()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9c

    goto :goto_97

    :cond_9c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000OooO:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :goto_97
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getPOPR_UNMUTE_TIME()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9d

    goto :goto_98

    :cond_9d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000Oooo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :goto_98
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getCLEAR_ALL()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9e

    goto :goto_99

    :cond_9e
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000o000:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :goto_99
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getAUTOADAPT_MANULE_START()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9f

    goto :goto_9a

    :cond_9f
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000o00:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :goto_9a
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getAUTO_PREGAIN_ON_OFF()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a0

    goto :goto_9b

    :cond_a0
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->o000o00O:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO00o;->OooO0O0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :goto_9b
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeItem;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 855
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0Oo:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a1
    :goto_9c
    return-void
.end method

.method public final OooO00o(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, ""

    .line 856
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO$OooO00o;

    const-string v3, "version"

    .line 857
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 860
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%02x"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 862
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 864
    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v5

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%1d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.lang.String.format(format, *args)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    invoke-static {v10, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v10

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v11

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v9

    if-lez v9, :cond_0

    if-le v10, v11, :cond_1

    :cond_0
    if-gez v9, :cond_7

    if-gt v11, v10, :cond_7

    :cond_1
    :goto_0
    add-int v12, v10, v9

    .line 866
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    const-string v15, "%03d%s"

    .line 867
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v5

    if-gez v14, :cond_4

    const/16 v13, -0x3e7

    if-lt v14, v13, :cond_2

    .line 876
    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v5

    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v13, "%1$,05d"

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "java.lang.String.format(format, *args)"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v19, "-"

    const-string v20, "n"

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v7

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 884
    :goto_1
    move-object v13, v7

    const/4 v7, 0x1

    goto :goto_2

    .line 876
    :cond_2
    const/16 v7, -0x270f

    if-lt v14, v7, :cond_3

    .line 878
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    const-string v20, "n"

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    const-string v7, "n9999"

    goto :goto_1

    :cond_4
    const v7, 0x1869f

    if-gt v14, v7, :cond_5

    .line 883
    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%05d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "java.lang.String.format(format, *args)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    const-string v13, "99999"

    .line 884
    :goto_2
    aput-object v13, v2, v7

    .line 885
    const/4 v13, 0x2

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "java.lang.String.format(format, *args)"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne v10, v11, :cond_6

    goto :goto_3

    .line 865
    :cond_6
    move v2, v7

    move v10, v12

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 886
    :cond_7
    :goto_3
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    .line 887
    new-instance v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;

    invoke-direct {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;-><init>()V

    .line 888
    iput-object v3, v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    .line 889
    iput-object v4, v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO0O0:Ljava/lang/String;

    .line 890
    iput-object v6, v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 891
    iput-object v8, v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 892
    iput-object v1, v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO0o0:Ljava/lang/String;

    .line 893
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "command"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o()Landroid/media/AudioManager;

    move-result-object v1

    const-string v3, "pm_kara_code"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "code"

    .line 897
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pm_kara_code="

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v6, v1, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "code"

    .line 898
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "pm_kara="

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pm_kara_code="

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 899
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 900
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO00o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrong with write: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMCommunication"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 901
    :cond_8
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o()Landroid/media/AudioManager;

    move-result-object v0

    .line 902
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO00o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    .line 903
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    .line 904
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "seed"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    sget-object v3, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/loostone/libbottom/util/JniUtil;->encryption(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pm_kara="

    .line 906
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_4

    .line 908
    :cond_9
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0OO;->OooO00o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrong with write code: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMCommunication"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final OooO0O0()V
    .locals 14

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;

    .line 97
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "send data, dataPer.effectId = "

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TransportConfig"

    invoke-virtual {v4, v6, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectSurround()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectScene()Ljava/util/Map;

    move-result-object v7

    .line 192
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v1

    move v8, v5

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x2

    const/16 v12, 0xff

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    rem-int/lit8 v10, v8, 0x3

    if-nez v10, :cond_1

    .line 196
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectScene()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-ne v8, v10, :cond_0

    if-nez v4, :cond_0

    .line 198
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 200
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    sget-object v10, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    invoke-virtual {v10, v6}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o(Ljava/util/List;)V

    .line 204
    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 207
    :cond_1
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectScene()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-ne v8, v10, :cond_3

    .line 208
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v4, :cond_2

    .line 210
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 212
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    sget-object v10, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    invoke-virtual {v10, v6}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o(Ljava/util/List;)V

    .line 216
    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v9, v9, 0x1

    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 225
    :cond_4
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectSurround()Ljava/util/Map;

    move-result-object v4

    .line 283
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v5

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    rem-int/lit8 v8, v7, 0x3

    if-nez v8, :cond_6

    .line 287
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectSurround()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 289
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 291
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 293
    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    sget-object v8, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    invoke-virtual {v8, v6}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o(Ljava/util/List;)V

    .line 295
    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 298
    :cond_6
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectSurround()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 299
    invoke-virtual {v3}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeData;->getEffectId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 300
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 302
    sget-object v8, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    invoke-virtual {v8, v6}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o(Ljava/util/List;)V

    .line 303
    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v9, v9, 0x1

    :cond_7
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/2addr v2, v9

    .line 310
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pkgSizeCount = "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TransportConfig"

    invoke-virtual {v3, v5, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "sendData finish, pkgSizeCount = "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TransportConfig"

    invoke-virtual {v0, v3, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO00o;

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v0, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO00o;->OooO00o(I)V

    :goto_8
    return-void
.end method
