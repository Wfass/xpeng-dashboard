.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0O0:Lkotlin/Lazy;

    .line 7
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0OO:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    return-object v0
.end method

.method public final OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)[I
    .locals 7
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    invoke-virtual {v0, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    const-string v0, "1111111111111111"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    new-array v0, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    const/16 v6, 0xf

    if-ne v4, v5, :cond_1

    .line 27
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 11
    :cond_1
    const/16 v5, 0x32

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x33

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    goto :goto_1

    :cond_3
    const/16 v5, 0x34

    if-ne v4, v5, :cond_4

    const/4 v4, 0x4

    goto :goto_1

    :cond_4
    const/16 v5, 0x35

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    goto :goto_1

    :cond_5
    const/16 v5, 0x36

    if-ne v4, v5, :cond_6

    const/4 v4, 0x6

    goto :goto_1

    :cond_6
    const/16 v5, 0x37

    if-ne v4, v5, :cond_7

    const/4 v4, 0x7

    goto :goto_1

    :cond_7
    const/16 v5, 0x38

    if-ne v4, v5, :cond_8

    const/16 v4, 0x8

    goto :goto_1

    :cond_8
    const/16 v5, 0x39

    if-ne v4, v5, :cond_9

    const/16 v4, 0x9

    goto :goto_1

    :cond_9
    const/16 v5, 0x61

    if-ne v4, v5, :cond_a

    const/16 v4, 0xa

    goto :goto_1

    :cond_a
    const/16 v5, 0x62

    if-ne v4, v5, :cond_b

    const/16 v4, 0xb

    goto :goto_1

    :cond_b
    const/16 v5, 0x63

    if-ne v4, v5, :cond_c

    const/16 v4, 0xc

    goto :goto_1

    :cond_c
    const/16 v5, 0x64

    if-ne v4, v5, :cond_d

    const/16 v4, 0xd

    goto :goto_1

    :cond_d
    const/16 v5, 0x65

    if-ne v4, v5, :cond_e

    const/16 v4, 0xe

    goto :goto_1

    :cond_e
    const/16 v5, 0x66

    if-ne v4, v5, :cond_f

    .line 27
    move v4, v6

    goto :goto_1

    .line 11
    :cond_f
    nop

    .line 27
    move v4, v1

    :goto_1
    aput v4, v0, v2

    if-le v3, v6, :cond_10

    return-object v0

    .line 9
    :cond_10
    move v2, v3

    goto :goto_0

    .line 27
    :cond_11
    :goto_2
    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "000"

    const-string v1, ""

    .line 1
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    const-string v3, "version"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%03d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v6, 0x51

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%03d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    const-string v8, "sign"

    .line 72
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    const-string v8, "type"

    .line 74
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    invoke-direct {v7}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;-><init>()V

    .line 76
    iput-object v3, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 77
    iput-object v4, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 78
    iput-object v6, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 79
    iput v2, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0Oo:I

    .line 80
    iput v5, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o0:I

    .line 81
    iput-object v0, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o:Ljava/lang/String;

    .line 82
    iput-object v1, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0oO:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v7}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    invoke-virtual {v0, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    return-void
.end method

.method public final OooO0OO()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "000"

    const-string v1, ""

    .line 1
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    const-string v3, "version"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%03d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%03d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    const-string v8, "sign"

    .line 72
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    const-string v8, "type"

    .line 74
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    invoke-direct {v7}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;-><init>()V

    .line 76
    iput-object v3, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 77
    iput-object v4, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 78
    iput-object v6, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 79
    iput v2, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0Oo:I

    .line 80
    iput v5, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o0:I

    .line 81
    iput-object v0, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o:Ljava/lang/String;

    .line 82
    iput-object v1, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0oO:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v7}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
