.class public Lcom/android/car/condition/CarConditionUtils;
.super Ljava/lang/Object;
.source "CarConditionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isConditionLimitSatisfied(Ljava/util/List;IIZZLjava/lang/Number;)I
    .locals 7
    .param p1, "preLimitIndex"    # I
    .param p2, "size"    # I
    .param p3, "isEqualZero"    # Z
    .param p4, "isOverZero"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;IIZZTT;)I"
        }
    .end annotation

    .line 52
    .local p0, "limits":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p5, "target":Ljava/lang/Number;, "TT;"
    const/4 v0, 0x0

    .line 53
    .local v0, "i":I
    if-ne p1, p2, :cond_0

    if-eqz p4, :cond_0

    move-object v1, p5

    check-cast v1, Ljava/lang/Comparable;

    add-int/lit8 v2, p1, -0x1

    .line 54
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 57
    return p1

    .line 60
    :cond_0
    if-nez p1, :cond_2

    .line 61
    move-object v1, p5

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 62
    .local v1, "compareResult":I
    if-ltz v1, :cond_1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 65
    :cond_1
    return p1

    .line 69
    .end local v1    # "compareResult":I
    :cond_2
    if-lez p1, :cond_5

    if-ge p1, p2, :cond_5

    .line 70
    move-object v1, p5

    check-cast v1, Ljava/lang/Comparable;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 71
    .local v1, "lowCompare":I
    move-object v2, p5

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 72
    .local v2, "highCompare":I
    if-eqz p4, :cond_3

    if-ltz v1, :cond_3

    if-gez v2, :cond_3

    .line 74
    return p1

    .line 77
    :cond_3
    if-ltz v2, :cond_4

    .line 79
    add-int/lit8 v0, p1, -0x1

    .line 82
    :cond_4
    if-gez v1, :cond_5

    .line 84
    move p2, p1

    .line 88
    .end local v1    # "lowCompare":I
    .end local v2    # "highCompare":I
    :cond_5
    add-int v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 89
    .local v1, "middleIndex":I
    move-object v2, p5

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 90
    move v0, v1

    .line 102
    :cond_6
    const/4 v2, -0x1

    .line 103
    .local v2, "limitIndex":I
    :goto_0
    if-ge v0, p2, :cond_b

    .line 104
    move-object v3, p5

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 105
    .local v3, "lowCompare":I
    const/4 v4, -0x1

    .line 106
    .local v4, "highCompare":I
    add-int/lit8 v5, v0, 0x1

    if-ge v5, p2, :cond_7

    .line 107
    move-object v5, p5

    check-cast v5, Ljava/lang/Comparable;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 109
    :cond_7
    if-ltz v3, :cond_a

    if-nez v3, :cond_8

    if-eqz p3, :cond_8

    goto :goto_1

    .line 113
    :cond_8
    if-ltz v4, :cond_9

    .line 115
    add-int/lit8 v2, v0, 0x2

    .line 116
    add-int/lit8 v0, v0, 0x2

    .line 122
    .end local v3    # "lowCompare":I
    .end local v4    # "highCompare":I
    goto :goto_0

    .line 119
    .restart local v3    # "lowCompare":I
    .restart local v4    # "highCompare":I
    :cond_9
    add-int/lit8 v2, v0, 0x1

    .line 120
    goto :goto_2

    .line 111
    :cond_a
    :goto_1
    move v2, v0

    .line 112
    nop

    .line 123
    .end local v3    # "lowCompare":I
    .end local v4    # "highCompare":I
    :cond_b
    :goto_2
    return v2
.end method

.method public static isConditionLimitSatisfied(ILcom/android/car/condition/CarConditionStatus;Landroid/car/hardware/CarPropertyValue;)Z
    .locals 17
    .param p0, "propId"    # I
    .param p1, "status"    # Lcom/android/car/condition/CarConditionStatus;
    .param p2, "value"    # Landroid/car/hardware/CarPropertyValue;

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/car/condition/CarConditionStatus;->getCarConditionInfo()Landroid/car/hardware/condition/CarConditionInfo;

    move-result-object v2

    .line 12
    .local v2, "info":Landroid/car/hardware/condition/CarConditionInfo;
    invoke-virtual {v2}, Landroid/car/hardware/condition/CarConditionInfo;->getLimitsArray()Landroid/util/SparseArray;

    move-result-object v3

    .line 13
    .local v3, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<+Ljava/lang/Number;>;>;"
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 14
    .local v4, "limits":Ljava/util/List;
    const/4 v11, 0x0

    if-eqz v4, :cond_c

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 16
    .local v12, "target":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/android/car/condition/CarConditionStatus;->getLimitIndex(I)I

    move-result v13

    .line 17
    .local v13, "preLimitIndex":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 18
    .local v14, "size":I
    const/4 v15, -0x1

    .line 19
    .local v15, "limitIndex":I
    instance-of v5, v12, Ljava/lang/Float;

    const/16 v16, 0x1

    if-eqz v5, :cond_2

    .line 20
    move-object v5, v12

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move/from16 v8, v16

    goto :goto_0

    :cond_0
    move v8, v11

    .line 21
    .local v8, "isTargetEqualZero":Z
    :goto_0
    move-object v5, v12

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move/from16 v9, v16

    goto :goto_1

    :cond_1
    move v9, v11

    .line 22
    .local v9, "isTargetOverZero":Z
    :goto_1
    move-object v5, v12

    check-cast v5, Ljava/lang/Float;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 22
    move-object v5, v4

    move v6, v13

    move v7, v14

    invoke-static/range {v5 .. v10}, Lcom/android/car/condition/CarConditionUtils;->isConditionLimitSatisfied(Ljava/util/List;IIZZLjava/lang/Number;)I

    move-result v15

    .line 24
    .end local v8    # "isTargetEqualZero":Z
    .end local v9    # "isTargetOverZero":Z
    goto/16 :goto_8

    :cond_2
    instance-of v5, v12, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 25
    move-object v5, v12

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3

    move/from16 v8, v16

    goto :goto_2

    :cond_3
    move v8, v11

    .line 26
    .restart local v8    # "isTargetEqualZero":Z
    :goto_2
    move-object v5, v12

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    move/from16 v9, v16

    goto :goto_3

    :cond_4
    move v9, v11

    .line 27
    .restart local v9    # "isTargetOverZero":Z
    :goto_3
    move-object v5, v12

    check-cast v5, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 27
    move-object v5, v4

    move v6, v13

    move v7, v14

    invoke-static/range {v5 .. v10}, Lcom/android/car/condition/CarConditionUtils;->isConditionLimitSatisfied(Ljava/util/List;IIZZLjava/lang/Number;)I

    move-result v15

    .line 29
    .end local v8    # "isTargetEqualZero":Z
    .end local v9    # "isTargetOverZero":Z
    goto/16 :goto_8

    :cond_5
    instance-of v5, v12, Ljava/lang/Long;

    if-eqz v5, :cond_8

    .line 30
    move-object v5, v12

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-nez v5, :cond_6

    move/from16 v8, v16

    goto :goto_4

    :cond_6
    move v8, v11

    .line 31
    .restart local v8    # "isTargetEqualZero":Z
    :goto_4
    move-object v5, v12

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_7

    move/from16 v9, v16

    goto :goto_5

    :cond_7
    move v9, v11

    .line 32
    .restart local v9    # "isTargetOverZero":Z
    :goto_5
    move-object v5, v12

    check-cast v5, Ljava/lang/Long;

    .line 33
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 32
    move-object v5, v4

    move v6, v13

    move v7, v14

    invoke-static/range {v5 .. v10}, Lcom/android/car/condition/CarConditionUtils;->isConditionLimitSatisfied(Ljava/util/List;IIZZLjava/lang/Number;)I

    move-result v15

    .line 34
    .end local v8    # "isTargetEqualZero":Z
    .end local v9    # "isTargetOverZero":Z
    goto :goto_8

    :cond_8
    instance-of v5, v12, Ljava/lang/Double;

    if-eqz v5, :cond_b

    .line 35
    move-object v5, v12

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v5, v5, v9

    if-nez v5, :cond_9

    move/from16 v8, v16

    goto :goto_6

    :cond_9
    move v8, v11

    .line 36
    .restart local v8    # "isTargetEqualZero":Z
    :goto_6
    move-object v5, v12

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v9

    if-lez v5, :cond_a

    move/from16 v9, v16

    goto :goto_7

    :cond_a
    move v9, v11

    .line 37
    .restart local v9    # "isTargetOverZero":Z
    :goto_7
    move-object v5, v12

    check-cast v5, Ljava/lang/Double;

    .line 38
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 37
    move-object v5, v4

    move v6, v13

    move v7, v14

    invoke-static/range {v5 .. v10}, Lcom/android/car/condition/CarConditionUtils;->isConditionLimitSatisfied(Ljava/util/List;IIZZLjava/lang/Number;)I

    move-result v15

    .line 41
    .end local v8    # "isTargetEqualZero":Z
    .end local v9    # "isTargetOverZero":Z
    :cond_b
    :goto_8
    if-eq v15, v13, :cond_c

    const/4 v5, -0x1

    if-eq v15, v5, :cond_c

    .line 42
    invoke-virtual {v1, v0, v15}, Lcom/android/car/condition/CarConditionStatus;->setLimitIndex(II)V

    .line 43
    return v16

    .line 46
    .end local v12    # "target":Ljava/lang/Object;
    .end local v13    # "preLimitIndex":I
    .end local v14    # "size":I
    .end local v15    # "limitIndex":I
    :cond_c
    return v11
.end method
