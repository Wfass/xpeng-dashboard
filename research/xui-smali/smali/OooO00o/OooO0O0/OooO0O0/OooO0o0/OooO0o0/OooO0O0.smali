.class public abstract LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final storeName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "storeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic booleanPref$default(LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;Ljava/lang/String;ZILjava/lang/Object;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->booleanPref(Ljava/lang/String;Z)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: booleanPref"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic floatPref$default(LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;Ljava/lang/String;FILjava/lang/Object;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->floatPref(Ljava/lang/String;F)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: floatPref"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final generateEncKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "aef"

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    const-string v2, "_"

    const-string v3, "8"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/loostone/libbottom/util/JniUtil;->encryption(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic intPref$default(LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;Ljava/lang/String;IILjava/lang/Object;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->intPref(Ljava/lang/String;I)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: intPref"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic stringPref$default(LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->stringPref(Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stringPref"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final booleanPref(Ljava/lang/String;Z)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-direct {p0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;

    invoke-direct {v0, v1, p1, p2, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;)V

    return-object v0
.end method

.method public final encryptPrefs(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldStoreName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 4
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v4, "PrfModel"

    const-string v5, "oldSharedPrefs size = "

    if-nez v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 6
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 75
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 76
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 78
    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 81
    :cond_4
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_5

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 84
    :cond_5
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 87
    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 93
    :cond_7
    :goto_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 94
    :cond_8
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_9
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final floatPref(Ljava/lang/String;F)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-direct {p0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;

    invoke-direct {v0, v1, p1, p2, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;)V

    return-object v0
.end method

.method public final intPref(Ljava/lang/String;I)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-direct {p0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;

    invoke-direct {v0, v1, p1, p2, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;)V

    return-object v0
.end method

.method public final longPref(Ljava/lang/String;J)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-direct {p0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;

    invoke-direct {v0, v1, p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;)V

    return-object v0
.end method

.method public final stringPref(Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->storeName:Ljava/lang/String;

    invoke-direct {p0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->generateEncKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;

    invoke-direct {v0, v1, p1, p2, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o$OooO00o;)V

    return-object v0
.end method
