.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()I
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final OooO00o(I)I
    .locals 12

    .line 7
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooOO0O:[D

    .line 8
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooOO0o:[D

    const/16 v2, 0x64

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v6, p1

    mul-double/2addr v6, v3

    int-to-double v8, v2

    mul-double/2addr v8, v3

    div-double v3, v6, v8

    .line 15
    :goto_0
    aget-wide v6, v0, v5

    cmpl-double p1, v3, v6

    if-lez p1, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v5, -0x1

    .line 17
    aget-wide v6, v0, p1

    .line 18
    aget-wide v8, v0, v5

    .line 19
    aget-wide v10, v1, p1

    .line 20
    aget-wide v0, v1, v5

    sub-double/2addr v3, v6

    sub-double/2addr v8, v6

    div-double/2addr v3, v8

    sub-double/2addr v0, v10

    mul-double/2addr v3, v0

    add-double/2addr v3, v10

    int-to-double v0, v2

    mul-double/2addr v3, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double p1, v3, v0

    if-lez p1, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    move-wide v0, v3

    :goto_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "micvolcurve , vol = "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VolumeCalculate"

    invoke-virtual {p1, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    double-to-int p1, v0

    return p1
.end method

.method public final OooO0O0()I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    .line 3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final OooO0O0(I)I
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_11

    const-string v2, "audio"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 10
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 11
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO0o0:[D

    .line 12
    sget-object v3, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO0o:[I

    const/16 v4, 0x100

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 18
    :cond_1
    array-length v6, v3

    if-nez v6, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    if-nez v6, :cond_a

    array-length v6, v2

    if-nez v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    if-eqz v6, :cond_4

    goto :goto_5

    .line 23
    :cond_4
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o()I

    move-result v6

    if-nez v6, :cond_5

    .line 24
    aget v4, v3, v0

    goto/16 :goto_7

    .line 26
    :cond_5
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o()I

    move-result v6

    int-to-double v6, v6

    sub-int/2addr v1, v0

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 30
    array-length v1, v2

    sub-int/2addr v1, v5

    if-gt v5, v1, :cond_8

    :goto_2
    add-int/lit8 v8, v1, -0x1

    .line 31
    aget-wide v9, v2, v1

    cmpg-double v9, v6, v9

    if-gtz v9, :cond_6

    add-int/lit8 v9, v1, -0x1

    aget-wide v9, v2, v9

    cmpl-double v9, v6, v9

    if-lez v9, :cond_6

    goto :goto_4

    :cond_6
    if-le v5, v8, :cond_7

    goto :goto_3

    .line 30
    :cond_7
    move v1, v8

    goto :goto_2

    .line 31
    :cond_8
    :goto_3
    move v1, v0

    :goto_4
    if-lt v1, v5, :cond_9

    .line 38
    array-length v2, v3

    if-gt v1, v2, :cond_9

    sub-int/2addr v1, v5

    .line 39
    aget v4, v3, v1

    goto :goto_7

    .line 41
    :cond_9
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volumeCurveMax size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maybe cause ArrayIndexOutOfBoundsException!!!"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VolumeCalculate"

    invoke-virtual {v2, v3, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 42
    :cond_a
    :goto_5
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "VolumeCalculate"

    const-string v3, "volumeCurveMax or volumeCurveSystem is empty!!!"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 43
    :cond_b
    :goto_6
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v6, "VolumeCalculate"

    const-string v7, "getCurrentCurveMax maybe not success init config!"

    invoke-virtual {v1, v6, v7}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volumeCurveMax:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " volumeCurveSystem:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VolumeCalculate"

    invoke-virtual {v1, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_7
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO0Oo:[D

    if-nez v1, :cond_c

    .line 47
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "VolumeCalculate"

    const-string v2, "getVolume maybe not success init config!"

    invoke-virtual {p1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "volumeCurveUI:"

    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeCalculate"

    invoke-virtual {p1, v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x80

    return p1

    :cond_c
    int-to-double v2, p1

    const/16 p1, 0x64

    int-to-double v6, p1

    div-double v8, v2, v6

    .line 55
    array-length p1, v1

    sub-int/2addr p1, v5

    int-to-double v10, p1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    const-wide/16 v10, 0x0

    :goto_8
    cmpg-double p1, v10, v8

    if-gez p1, :cond_d

    add-double/2addr v10, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    sub-double v8, v10, v12

    mul-double/2addr v8, v6

    mul-double/2addr v10, v6

    int-to-double v4, v4

    add-int/lit8 p1, v0, -0x1

    .line 69
    aget-wide v6, v1, p1

    mul-double/2addr v6, v4

    .line 70
    aget-wide v0, v1, v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v8

    sub-double v0, v4, v6

    mul-double/2addr v2, v0

    sub-double/2addr v10, v8

    div-double/2addr v2, v10

    add-double/2addr v2, v6

    cmpl-double p1, v2, v4

    if-lez p1, :cond_e

    double-to-int p1, v4

    goto :goto_9

    :cond_e
    cmpg-double p1, v2, v6

    if-gez p1, :cond_f

    double-to-int p1, v6

    goto :goto_9

    :cond_f
    double-to-int p1, v2

    :goto_9
    return p1

    .line 71
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_11
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
