.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/O0000000;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x64

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v8, :cond_3

    :goto_0
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    :goto_1
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO0O0(I)I

    move-result v1

    goto/16 :goto_7

    .line 17
    :cond_3
    :goto_2
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    invoke-virtual {v2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o(I)I

    move-result v9

    .line 18
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO0O0()I

    move-result v2

    .line 19
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 20
    sget-object v10, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v11, "DataSetting"

    const-string v12, "micLevelFollowSysVol = 1"

    invoke-virtual {v10, v11, v12}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v9, v9

    mul-float/2addr v9, v4

    int-to-float v10, v2

    mul-float/2addr v9, v10

    div-float/2addr v9, v3

    float-to-int v9, v9

    .line 23
    :cond_5
    :goto_3
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 24
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v10, "DataSetting"

    const-string v11, "sysVolCurveSwitch = 1"

    invoke-virtual {v1, v10, v11}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO0oO:[D

    .line 26
    sget-object v10, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO0oo:[D

    if-le v2, v5, :cond_7

    .line 33
    move-wide v11, v6

    :goto_4
    move v2, v8

    goto :goto_5

    .line 26
    :cond_7
    int-to-double v11, v2

    mul-double/2addr v11, v6

    int-to-double v13, v5

    mul-double/2addr v13, v6

    div-double/2addr v11, v13

    goto :goto_4

    .line 33
    :goto_5
    aget-wide v13, v1, v2

    cmpl-double v13, v11, v13

    if-lez v13, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v2, -0x1

    .line 35
    aget-wide v14, v1, v13

    .line 36
    aget-wide v16, v1, v2

    .line 37
    aget-wide v18, v10, v13

    .line 38
    aget-wide v1, v10, v2

    sub-double/2addr v11, v14

    sub-double v16, v16, v14

    div-double v11, v11, v16

    sub-double v1, v1, v18

    mul-double/2addr v11, v1

    add-double v11, v11, v18

    int-to-double v1, v9

    mul-double/2addr v11, v1

    .line 42
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v9, "sysvolcurve vol = "

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "VolumeCalculate"

    invoke-virtual {v1, v9, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    double-to-int v9, v11

    :cond_9
    :goto_6
    mul-int/lit16 v9, v9, 0x100

    .line 43
    div-int/lit8 v1, v9, 0x64

    .line 44
    :goto_7
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " micVolume(SO), oriVal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DataSetting"

    invoke-virtual {v2, v10, v9}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v9, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 47
    sget-object v9, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v9}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v8, :cond_d

    :goto_8
    invoke-virtual {v9}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v8, :cond_c

    goto :goto_a

    .line 60
    :cond_c
    :goto_9
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    invoke-virtual {v2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO0O0(I)I

    move-result v2

    goto/16 :goto_f

    .line 61
    :cond_d
    :goto_a
    sget-object v10, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    invoke-virtual {v10, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o(I)I

    move-result v11

    .line 62
    invoke-virtual {v10}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO0O0()I

    move-result v10

    .line 63
    invoke-virtual {v9}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v12

    invoke-virtual {v12}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v8, :cond_f

    const-string v12, "DataSetting"

    const-string v13, "micLevelFollowSysVol = 1"

    .line 64
    invoke-virtual {v2, v12, v13}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v11, v11

    mul-float/2addr v11, v4

    int-to-float v4, v10

    mul-float/2addr v11, v4

    div-float/2addr v11, v3

    float-to-int v11, v11

    .line 67
    :cond_f
    :goto_b
    invoke-virtual {v9}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_10

    goto :goto_e

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_13

    const-string v3, "DataSetting"

    const-string v4, "sysVolCurveSwitch = 1"

    .line 68
    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooO:[D

    .line 70
    sget-object v3, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO00o;->OooOO0:[D

    if-le v10, v5, :cond_11

    .line 77
    :goto_c
    move v4, v8

    goto :goto_d

    .line 70
    :cond_11
    int-to-double v9, v10

    mul-double/2addr v9, v6

    int-to-double v12, v5

    mul-double/2addr v12, v6

    div-double v6, v9, v12

    goto :goto_c

    .line 77
    :goto_d
    aget-wide v9, v2, v4

    cmpl-double v9, v6, v9

    if-lez v9, :cond_12

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v9, v4, -0x1

    .line 79
    aget-wide v12, v2, v9

    .line 80
    aget-wide v14, v2, v4

    .line 81
    aget-wide v9, v3, v9

    .line 82
    aget-wide v2, v3, v4

    sub-double/2addr v6, v12

    sub-double/2addr v14, v12

    div-double/2addr v6, v14

    sub-double/2addr v2, v9

    mul-double/2addr v6, v2

    add-double/2addr v6, v9

    int-to-double v2, v11

    mul-double/2addr v6, v2

    .line 86
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "sysVolCurveSur vol = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VolumeCalculate"

    invoke-virtual {v2, v4, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    double-to-int v11, v6

    :cond_13
    :goto_e
    mul-int/lit16 v11, v11, 0x100

    .line 87
    div-int/lit8 v2, v11, 0x64

    .line 88
    :goto_f
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " micVolume(SO), oriVal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", surValue = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DataSetting"

    invoke-virtual {v3, v4, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1233
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o000O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 1234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 1236
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    .line 1237
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    const/16 v2, 0x2b

    .line 1238
    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    const/4 v2, 0x0

    .line 1239
    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 1240
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 1241
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 1242
    invoke-virtual {v0, v1, v8}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(II)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    .line 1245
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 1246
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v1

    .line 1247
    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    return-void
.end method
