.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0OO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;)V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "InitConfig"

    const-string v2, "LoadEffectMode initOnStart & TransportConfig transportSceneData"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;

    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0oO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    invoke-virtual {v0, v2, v3, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o(JI)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;

    .line 5
    invoke-virtual {v5, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "load effect config error :: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LoadEffectMode"

    invoke-virtual {v1, v2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->getDefaultId()I

    move-result v1

    :goto_1
    sput v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0O0:I

    if-nez v0, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/loostone/libtuning/data/config/load/effect/EffectModeConfig;->getEffectModeList()Ljava/util/ArrayList;

    move-result-object v4

    :goto_2
    sput-object v4, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0OO:Ljava/util/ArrayList;

    .line 14
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;

    .line 15
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO00o()V

    .line 17
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0;->OooO0O0()V

    const-string v0, "Execute method TransportConfig, transport scene data now."

    return-object v0
.end method
