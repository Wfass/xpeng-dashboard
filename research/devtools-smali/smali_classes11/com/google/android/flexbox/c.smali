.class Lcom/google/android/flexbox/c;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/c$a;,
        Lcom/google/android/flexbox/c$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final hA:Lcom/google/android/flexbox/a;

.field private hB:[Z

.field hC:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field hD:[J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hE:[J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/a;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 98
    return-void
.end method

.method private a(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1349
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1350
    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v2}, Lcom/google/android/flexbox/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1351
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1352
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p3

    .line 1349
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/a;->getChildWidthMeasureSpec(III)I

    move-result p1

    .line 1353
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1354
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1355
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p2

    .line 1356
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1355
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1357
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1358
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p2

    .line 1359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1358
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1361
    :cond_1
    :goto_0
    return p1
.end method

.method private a(Landroid/view/View;Z)I
    .locals 0

    .line 687
    if-eqz p2, :cond_0

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private a(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 717
    if-eqz p2, :cond_0

    .line 718
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1

    .line 721
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1
.end method

.method private a(Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation

    .line 1539
    sub-int/2addr p2, p3

    .line 1540
    div-int/lit8 p2, p2, 0x2

    .line 1541
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    new-instance v0, Lcom/google/android/flexbox/b;

    invoke-direct {v0}, Lcom/google/android/flexbox/b;-><init>()V

    .line 1543
    iput p2, v0, Lcom/google/android/flexbox/b;->hr:I

    .line 1544
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1545
    if-nez v1, :cond_0

    .line 1546
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    .line 1549
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1551
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    :cond_2
    return-object p3
.end method

.method private a(IIILandroid/view/View;)V
    .locals 1

    .line 1922
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/c;->makeCombinedLong(II)J

    move-result-wide p2

    aput-wide p2, v0, p1

    .line 1927
    :cond_0
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz p2, :cond_1

    .line 1928
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hE:[J

    .line 1929
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 1930
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 1928
    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/c;->makeCombinedLong(II)J

    move-result-wide p3

    aput-wide p3, p2, p1

    .line 1932
    :cond_1
    return-void
.end method

.method private a(IILcom/google/android/flexbox/b;IIZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 999
    iget v1, v3, Lcom/google/android/flexbox/b;->ht:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_16

    iget v1, v3, Lcom/google/android/flexbox/b;->hp:I

    if-ge v4, v1, :cond_0

    goto/16 :goto_b

    .line 1002
    :cond_0
    iget v1, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1003
    nop

    .line 1004
    iget v5, v3, Lcom/google/android/flexbox/b;->hp:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, v3, Lcom/google/android/flexbox/b;->ht:F

    div-float/2addr v5, v6

    .line 1005
    iget v6, v3, Lcom/google/android/flexbox/b;->hq:I

    add-int v6, p5, v6

    iput v6, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1016
    nop

    .line 1017
    if-nez p6, :cond_1

    .line 1018
    const/high16 v6, -0x80000000

    iput v6, v3, Lcom/google/android/flexbox/b;->hr:I

    .line 1020
    :cond_1
    nop

    .line 1021
    const/4 v6, 0x0

    move v8, v2

    move v7, v6

    move v9, v7

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v6, v10, :cond_14

    .line 1022
    iget v10, v3, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v10, v6

    .line 1023
    iget-object v11, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    .line 1024
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 1025
    goto/16 :goto_9

    .line 1027
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1028
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v13}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v13

    .line 1029
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v14, :cond_3

    goto/16 :goto_4

    .line 1094
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1095
    iget-object v14, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v14, :cond_4

    .line 1101
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v13, v13, v10

    .line 1102
    invoke-virtual {v0, v13, v14}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v13

    .line 1104
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1105
    iget-object v2, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v2, :cond_5

    .line 1107
    iget-object v2, v0, Lcom/google/android/flexbox/c;->hE:[J

    move/from16 v19, v1

    aget-wide v1, v2, v10

    .line 1108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v14

    goto :goto_1

    .line 1110
    :cond_5
    move/from16 v19, v1

    :goto_1
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hB:[Z

    aget-boolean v1, v1, v10

    if-nez v1, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 1111
    int-to-float v1, v13

    .line 1112
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 1113
    iget v2, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    if-ne v6, v2, :cond_6

    .line 1114
    add-float/2addr v1, v8

    .line 1115
    nop

    .line 1117
    const/4 v8, 0x0

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1118
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v13

    if-le v2, v13, :cond_7

    .line 1125
    nop

    .line 1126
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    .line 1127
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hB:[Z

    const/4 v7, 0x1

    aput-boolean v7, v1, v10

    .line 1128
    iget v1, v3, Lcom/google/android/flexbox/b;->ht:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v7

    sub-float/2addr v1, v7

    iput v1, v3, Lcom/google/android/flexbox/b;->ht:F

    .line 1139
    const/4 v7, 0x1

    goto :goto_3

    .line 1130
    :cond_7
    int-to-float v13, v2

    sub-float/2addr v1, v13

    add-float/2addr v8, v1

    .line 1131
    float-to-double v13, v8

    cmpl-double v1, v13, v17

    if-lez v1, :cond_8

    .line 1132
    add-int/lit8 v2, v2, 0x1

    .line 1133
    sub-double v13, v13, v17

    double-to-float v1, v13

    .line 1139
    :goto_2
    move v8, v1

    goto :goto_3

    .line 1134
    :cond_8
    cmpg-double v1, v13, v15

    if-gez v1, :cond_9

    .line 1135
    add-int/lit8 v2, v2, -0x1

    .line 1136
    add-double v13, v13, v17

    double-to-float v1, v13

    goto :goto_2

    .line 1139
    :cond_9
    :goto_3
    iget v1, v3, Lcom/google/android/flexbox/b;->hw:I

    move/from16 v13, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/google/android/flexbox/c;->a(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1141
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1143
    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1144
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1145
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1146
    invoke-direct {v0, v10, v1, v2, v11}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1148
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 1150
    move v13, v15

    .line 1151
    :cond_a
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v1

    add-int/2addr v14, v1

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1152
    invoke-interface {v1, v11}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v14, v1

    .line 1150
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1153
    iget v2, v3, Lcom/google/android/flexbox/b;->hp:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v9

    add-int/2addr v13, v9

    .line 1154
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v9

    add-int/2addr v13, v9

    add-int/2addr v2, v13

    iput v2, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1156
    move/from16 v13, p2

    goto/16 :goto_8

    .line 1032
    :cond_b
    :goto_4
    move/from16 v19, v1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1033
    iget-object v2, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v2, :cond_c

    .line 1039
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v1, v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v1

    .line 1041
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1042
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v13, :cond_d

    .line 1044
    iget-object v2, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v13, v2, v10

    invoke-virtual {v0, v13, v14}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v2

    .line 1046
    :cond_d
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hB:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    .line 1047
    int-to-float v1, v1

    .line 1048
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 1049
    iget v2, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    if-ne v6, v2, :cond_e

    .line 1050
    add-float/2addr v1, v8

    .line 1051
    nop

    .line 1053
    move v8, v14

    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1054
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v13

    if-le v2, v13, :cond_f

    .line 1061
    nop

    .line 1062
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 1063
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hB:[Z

    const/4 v7, 0x1

    aput-boolean v7, v1, v10

    .line 1064
    iget v1, v3, Lcom/google/android/flexbox/b;->ht:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v13

    sub-float/2addr v1, v13

    iput v1, v3, Lcom/google/android/flexbox/b;->ht:F

    goto :goto_6

    .line 1066
    :cond_f
    int-to-float v13, v2

    sub-float/2addr v1, v13

    add-float/2addr v8, v1

    .line 1067
    float-to-double v13, v8

    cmpl-double v1, v13, v17

    if-lez v1, :cond_10

    .line 1068
    add-int/lit8 v2, v2, 0x1

    .line 1069
    sub-double v13, v13, v17

    double-to-float v1, v13

    .line 1075
    :goto_5
    move v8, v1

    goto :goto_6

    .line 1070
    :cond_10
    cmpg-double v1, v13, v15

    if-gez v1, :cond_11

    .line 1071
    add-int/lit8 v2, v2, -0x1

    .line 1072
    add-double v13, v13, v17

    double-to-float v1, v13

    goto :goto_5

    .line 1075
    :cond_11
    :goto_6
    iget v1, v3, Lcom/google/android/flexbox/b;->hw:I

    move/from16 v13, p2

    invoke-direct {v0, v13, v12, v1}, Lcom/google/android/flexbox/c;->b(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1077
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1079
    invoke-virtual {v11, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1080
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1081
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1082
    invoke-direct {v0, v10, v2, v1, v11}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1084
    iget-object v1, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    goto :goto_7

    .line 1086
    :cond_12
    move/from16 v13, p2

    move v14, v1

    move v15, v2

    .line 1087
    :goto_7
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v1

    add-int/2addr v15, v1

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v1

    add-int/2addr v15, v1

    iget-object v1, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1088
    invoke-interface {v1, v11}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v15

    .line 1086
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1089
    iget v2, v3, Lcom/google/android/flexbox/b;->hp:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v9

    add-int/2addr v14, v9

    .line 1090
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v9

    add-int/2addr v14, v9

    add-int/2addr v2, v14

    iput v2, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1091
    nop

    .line 1156
    :goto_8
    iget v2, v3, Lcom/google/android/flexbox/b;->hr:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/b;->hr:I

    .line 1021
    move v9, v1

    goto :goto_a

    :cond_13
    :goto_9
    move/from16 v13, p2

    move/from16 v19, v1

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v19

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1159
    :cond_14
    move/from16 v13, p2

    move/from16 v19, v1

    if-eqz v7, :cond_15

    iget v1, v3, Lcom/google/android/flexbox/b;->hp:I

    move/from16 v2, v19

    if-eq v2, v1, :cond_15

    .line 1162
    const/4 v6, 0x1

    move/from16 v1, p1

    move v2, v13

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/c;->a(IILcom/google/android/flexbox/b;IIZ)V

    .line 1165
    :cond_15
    return-void

    .line 1000
    :cond_16
    :goto_b
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 6

    .line 871
    nop

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 873
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 876
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 877
    nop

    .line 878
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    .line 884
    :goto_0
    move v3, v4

    goto :goto_1

    .line 879
    :cond_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 880
    nop

    .line 881
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_0

    .line 884
    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 885
    nop

    .line 886
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_2

    .line 887
    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 888
    nop

    .line 889
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_2

    .line 891
    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 892
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 893
    nop

    .line 894
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 895
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 896
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 897
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0, p2, p1}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 899
    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 2

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1646
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1647
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1648
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1649
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1652
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v0, v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v0

    goto :goto_0

    .line 1660
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1662
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1665
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1666
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1668
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1669
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 1670
    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/android/flexbox/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;",
            "Lcom/google/android/flexbox/b;",
            "II)V"
        }
    .end annotation

    .line 856
    iput p4, p2, Lcom/google/android/flexbox/b;->hw:I

    .line 857
    iget-object p4, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p4, p2}, Lcom/google/android/flexbox/a;->onNewFlexLineAdded(Lcom/google/android/flexbox/b;)V

    .line 858
    iput p3, p2, Lcom/google/android/flexbox/b;->hz:I

    .line 859
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    return-void
.end method

.method private a(IILcom/google/android/flexbox/b;)Z
    .locals 1

    .line 851
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/flexbox/b;->cc()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 833
    return v1

    .line 835
    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->bV()Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    .line 836
    return v0

    .line 838
    :cond_1
    if-nez p2, :cond_2

    .line 839
    return v1

    .line 841
    :cond_2
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 842
    invoke-interface {p2, p1, p7, p8}, Lcom/google/android/flexbox/a;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result p1

    .line 843
    if-lez p1, :cond_3

    .line 844
    add-int/2addr p5, p1

    .line 846
    :cond_3
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method private a(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/c$b;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 195
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 197
    new-array p1, p1, [I

    .line 198
    nop

    .line 199
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/c$b;

    .line 200
    iget v2, v1, Lcom/google/android/flexbox/c$b;->index:I

    aput v2, p1, v0

    .line 201
    iget v2, v1, Lcom/google/android/flexbox/c$b;->index:I

    iget v1, v1, Lcom/google/android/flexbox/c$b;->order:I

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 203
    goto :goto_0

    .line 204
    :cond_0
    return-object p1
.end method

.method private b(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1367
    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v2}, Lcom/google/android/flexbox/a;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1368
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1369
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p3

    .line 1366
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/a;->getChildHeightMeasureSpec(III)I

    move-result p1

    .line 1370
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1371
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1372
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p2

    .line 1373
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1372
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1374
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1375
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p2

    .line 1376
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1375
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1378
    :cond_1
    :goto_0
    return p1
.end method

.method private b(Landroid/view/View;Z)I
    .locals 0

    .line 702
    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private b(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 732
    if-eqz p2, :cond_0

    .line 733
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1

    .line 736
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1
.end method

.method private b(IILcom/google/android/flexbox/b;IIZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1182
    iget v1, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1183
    iget v2, v3, Lcom/google/android/flexbox/b;->hu:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-lez v2, :cond_16

    iget v2, v3, Lcom/google/android/flexbox/b;->hp:I

    if-le v4, v2, :cond_0

    goto/16 :goto_8

    .line 1186
    :cond_0
    nop

    .line 1187
    iget v2, v3, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v6, v3, Lcom/google/android/flexbox/b;->hu:F

    div-float/2addr v2, v6

    .line 1188
    nop

    .line 1189
    iget v6, v3, Lcom/google/android/flexbox/b;->hq:I

    add-int v6, p5, v6

    iput v6, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1200
    nop

    .line 1201
    if-nez p6, :cond_1

    .line 1202
    const/high16 v6, -0x80000000

    iput v6, v3, Lcom/google/android/flexbox/b;->hr:I

    .line 1204
    :cond_1
    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    move v9, v7

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v6, v10, :cond_14

    .line 1205
    iget v10, v3, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v10, v6

    .line 1206
    iget-object v11, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    .line 1207
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 1208
    goto/16 :goto_6

    .line 1210
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1211
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v13}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v13

    .line 1212
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v14, :cond_3

    goto/16 :goto_2

    .line 1278
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1279
    iget-object v14, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v14, :cond_4

    .line 1285
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v13, v13, v10

    .line 1286
    invoke-virtual {v0, v13, v14}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v13

    .line 1288
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1289
    iget-object v5, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v5, :cond_5

    .line 1291
    iget-object v5, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v4, v5, v10

    .line 1292
    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v14

    .line 1294
    :cond_5
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hB:[Z

    aget-boolean v4, v4, v10

    if-nez v4, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 1295
    int-to-float v4, v13

    .line 1296
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1297
    iget v5, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    if-ne v6, v5, :cond_6

    .line 1298
    add-float/2addr v4, v8

    .line 1299
    nop

    .line 1301
    const/4 v8, 0x0

    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1302
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v13

    if-ge v5, v13, :cond_7

    .line 1304
    nop

    .line 1305
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    .line 1306
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hB:[Z

    const/4 v7, 0x1

    aput-boolean v7, v4, v10

    .line 1307
    iget v4, v3, Lcom/google/android/flexbox/b;->hu:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v7

    sub-float/2addr v4, v7

    iput v4, v3, Lcom/google/android/flexbox/b;->hu:F

    .line 1318
    const/4 v7, 0x1

    goto :goto_1

    .line 1309
    :cond_7
    int-to-float v13, v5

    sub-float/2addr v4, v13

    add-float/2addr v8, v4

    .line 1310
    float-to-double v13, v8

    cmpl-double v4, v13, v17

    if-lez v4, :cond_8

    .line 1311
    add-int/lit8 v5, v5, 0x1

    .line 1312
    sub-float v8, v8, v19

    goto :goto_1

    .line 1313
    :cond_8
    cmpg-double v4, v13, v15

    if-gez v4, :cond_9

    .line 1314
    add-int/lit8 v5, v5, -0x1

    .line 1315
    add-float v8, v8, v19

    .line 1318
    :cond_9
    :goto_1
    iget v4, v3, Lcom/google/android/flexbox/b;->hw:I

    move/from16 v13, p1

    invoke-direct {v0, v13, v12, v4}, Lcom/google/android/flexbox/c;->a(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    .line 1320
    nop

    .line 1321
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1322
    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1324
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1325
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1326
    invoke-direct {v0, v10, v4, v5, v11}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1328
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v4, v10, v11}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 1330
    move v13, v15

    .line 1331
    :cond_a
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v4

    add-int/2addr v14, v4

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v4

    add-int/2addr v14, v4

    iget-object v4, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1332
    invoke-interface {v4, v11}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v14, v4

    .line 1330
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1333
    iget v5, v3, Lcom/google/android/flexbox/b;->hp:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v9

    add-int/2addr v13, v9

    .line 1334
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v9

    add-int/2addr v13, v9

    add-int/2addr v5, v13

    iput v5, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1336
    move/from16 v13, p2

    goto/16 :goto_5

    .line 1215
    :cond_b
    :goto_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1216
    iget-object v5, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v5, :cond_c

    .line 1222
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v4, v4, v10

    invoke-virtual {v0, v4, v5}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v4

    .line 1224
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1225
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v13, :cond_d

    .line 1227
    iget-object v5, v0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v13, v5, v10

    invoke-virtual {v0, v13, v14}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v5

    .line 1229
    :cond_d
    iget-object v13, v0, Lcom/google/android/flexbox/c;->hB:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    .line 1230
    int-to-float v4, v4

    .line 1231
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1232
    iget v5, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    if-ne v6, v5, :cond_e

    .line 1233
    add-float/2addr v4, v8

    .line 1234
    nop

    .line 1236
    move v8, v14

    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1237
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v13

    if-ge v5, v13, :cond_f

    .line 1244
    nop

    .line 1245
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v5

    .line 1246
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hB:[Z

    const/4 v7, 0x1

    aput-boolean v7, v4, v10

    .line 1247
    iget v4, v3, Lcom/google/android/flexbox/b;->hu:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v13

    sub-float/2addr v4, v13

    iput v4, v3, Lcom/google/android/flexbox/b;->hu:F

    goto :goto_3

    .line 1249
    :cond_f
    int-to-float v13, v5

    sub-float/2addr v4, v13

    add-float/2addr v8, v4

    .line 1250
    float-to-double v13, v8

    cmpl-double v4, v13, v17

    if-lez v4, :cond_10

    .line 1251
    add-int/lit8 v5, v5, 0x1

    .line 1252
    sub-float v8, v8, v19

    goto :goto_3

    .line 1253
    :cond_10
    cmpg-double v4, v13, v15

    if-gez v4, :cond_11

    .line 1254
    add-int/lit8 v5, v5, -0x1

    .line 1255
    add-float v8, v8, v19

    .line 1258
    :cond_11
    :goto_3
    iget v4, v3, Lcom/google/android/flexbox/b;->hw:I

    move/from16 v13, p2

    invoke-direct {v0, v13, v12, v4}, Lcom/google/android/flexbox/c;->b(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    .line 1260
    nop

    .line 1261
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1262
    invoke-virtual {v11, v5, v4}, Landroid/view/View;->measure(II)V

    .line 1264
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1265
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1266
    invoke-direct {v0, v10, v5, v4, v11}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1268
    iget-object v4, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v4, v10, v11}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    goto :goto_4

    .line 1270
    :cond_12
    move/from16 v13, p2

    move v14, v4

    move v15, v5

    .line 1271
    :goto_4
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v4

    add-int/2addr v15, v4

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v4

    add-int/2addr v15, v4

    iget-object v4, v0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1272
    invoke-interface {v4, v11}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v15

    .line 1270
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1273
    iget v5, v3, Lcom/google/android/flexbox/b;->hp:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v9

    add-int/2addr v14, v9

    .line 1274
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v9

    add-int/2addr v14, v9

    add-int/2addr v5, v14

    iput v5, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 1275
    nop

    .line 1336
    :goto_5
    iget v5, v3, Lcom/google/android/flexbox/b;->hr:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/b;->hr:I

    .line 1204
    move v9, v4

    goto :goto_7

    :cond_13
    :goto_6
    move/from16 v13, p2

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p4

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1339
    :cond_14
    move/from16 v13, p2

    if-eqz v7, :cond_15

    iget v2, v3, Lcom/google/android/flexbox/b;->hp:I

    if-eq v1, v2, :cond_15

    .line 1342
    const/4 v6, 0x1

    move/from16 v1, p1

    move v2, v13

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/c;->b(IILcom/google/android/flexbox/b;IIZ)V

    .line 1345
    :cond_15
    return-void

    .line 1184
    :cond_16
    :goto_8
    return-void
.end method

.method private b(Landroid/view/View;II)V
    .locals 2

    .line 1680
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1681
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1682
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1683
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1684
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1687
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    aget-wide v0, v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v0

    goto :goto_0

    .line 1695
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1697
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1699
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1700
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 1702
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 1703
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 1704
    return-void
.end method

.method private ba(I)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/c$b;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/a;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 161
    new-instance v3, Lcom/google/android/flexbox/c$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/flexbox/c$b;-><init>(Lcom/google/android/flexbox/c$1;)V

    .line 162
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/c$b;->order:I

    .line 163
    iput v1, v3, Lcom/google/android/flexbox/c$b;->index:I

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v0
.end method

.method private bb(I)V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hB:[Z

    if-nez v0, :cond_1

    .line 975
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hB:[Z

    goto :goto_0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hB:[Z

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 977
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hB:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 978
    if-lt v0, p1, :cond_2

    move p1, v0

    :cond_2
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hB:[Z

    .line 979
    goto :goto_0

    .line 980
    :cond_3
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hB:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 982
    :goto_0
    return-void
.end method

.method private c(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 752
    if-eqz p2, :cond_0

    .line 753
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p1

    return p1

    .line 756
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p1

    return p1
.end method

.method private d(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 771
    if-eqz p2, :cond_0

    .line 772
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p1

    return p1

    .line 775
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p1

    return p1
.end method

.method private e(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 790
    if-eqz p2, :cond_0

    .line 791
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p1

    return p1

    .line 794
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p1

    return p1
.end method

.method private f(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 809
    if-eqz p2, :cond_0

    .line 810
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p1

    return p1

    .line 813
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p1

    return p1
.end method

.method private q(Z)I
    .locals 0

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingStart()I

    move-result p1

    return p1

    .line 634
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method private r(Z)I
    .locals 0

    .line 644
    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingEnd()I

    move-result p1

    return p1

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingBottom()I

    move-result p1

    return p1
.end method

.method private s(Z)I
    .locals 0

    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingTop()I

    move-result p1

    return p1

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method private t(Z)I
    .locals 0

    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingBottom()I

    move-result p1

    return p1

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getPaddingEnd()I

    move-result p1

    return p1
.end method


# virtual methods
.method a(III)V
    .locals 11

    .line 920
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/c;->bb(I)V

    .line 921
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 922
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v0

    .line 927
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_0

    .line 953
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 942
    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 943
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 944
    if-ne v0, v2, :cond_1

    .line 945
    goto :goto_0

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getLargestMainSize()I

    move-result v1

    .line 949
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 950
    invoke-interface {v2}, Lcom/google/android/flexbox/a;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 951
    goto :goto_2

    .line 930
    :pswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 931
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 932
    if-ne v0, v2, :cond_2

    .line 933
    goto :goto_1

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getLargestMainSize()I

    move-result v0

    .line 937
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 938
    invoke-interface {v2}, Lcom/google/android/flexbox/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 939
    nop

    .line 956
    :goto_2
    const/4 v2, 0x0

    .line 957
    iget-object v3, p0, Lcom/google/android/flexbox/c;->hC:[I

    if-eqz v3, :cond_3

    .line 958
    iget-object v2, p0, Lcom/google/android/flexbox/c;->hC:[I

    aget v2, v2, p3

    .line 960
    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p3}, Lcom/google/android/flexbox/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    .line 961
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_3
    if-ge v10, v9, :cond_5

    .line 962
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/flexbox/b;

    .line 963
    iget v2, v5, Lcom/google/android/flexbox/b;->hp:I

    if-ge v2, v1, :cond_4

    .line 964
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/c;->a(IILcom/google/android/flexbox/b;IIZ)V

    goto :goto_4

    .line 967
    :cond_4
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/c;->b(IILcom/google/android/flexbox/b;IIZ)V

    .line 961
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 971
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V
    .locals 4

    .line 1729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1730
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getAlignItems()I

    move-result v1

    .line 1731
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1734
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v1

    .line 1736
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/b;->hr:I

    .line 1737
    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1749
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1750
    iget p2, p2, Lcom/google/android/flexbox/b;->hv:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1751
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1752
    add-int/2addr p4, p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 1753
    goto/16 :goto_0

    .line 1754
    :cond_1
    iget p2, p2, Lcom/google/android/flexbox/b;->hv:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr p2, v1

    .line 1756
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1757
    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 1759
    goto/16 :goto_0

    .line 1775
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 1776
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    .line 1777
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_2

    .line 1778
    add-int/2addr p4, v2

    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1778
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1781
    :cond_2
    sub-int/2addr p4, v2

    .line 1782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1781
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1761
    :pswitch_2
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 1762
    add-int/2addr p4, v2

    .line 1763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p6

    sub-int/2addr p2, p6

    .line 1764
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p6

    sub-int/2addr p4, p6

    .line 1762
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1768
    :cond_3
    sub-int/2addr p4, v2

    .line 1769
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p2

    add-int/2addr p4, p2

    sub-int/2addr p6, v2

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p6, p2

    .line 1771
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p2

    add-int/2addr p6, p2

    .line 1768
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 1773
    goto :goto_0

    .line 1740
    :pswitch_3
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_4

    .line 1741
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p2

    add-int/2addr p4, p2

    .line 1742
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result p2

    add-int/2addr p6, p2

    .line 1741
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1744
    :cond_4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1745
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1744
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 1747
    nop

    .line 1786
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V
    .locals 4

    .line 1813
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1814
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getAlignItems()I

    move-result v1

    .line 1815
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1818
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v1

    .line 1820
    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/b;->hr:I

    .line 1821
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1851
    :pswitch_0
    nop

    .line 1852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1853
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1854
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr p2, v1

    .line 1855
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 1856
    if-nez p3, :cond_1

    .line 1857
    add-int/2addr p4, p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1859
    :cond_1
    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1834
    :pswitch_1
    if-nez p3, :cond_2

    .line 1835
    add-int/2addr p4, p2

    .line 1836
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p3

    sub-int/2addr p4, p3

    add-int/2addr p6, p2

    .line 1838
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1835
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1843
    :cond_2
    sub-int/2addr p4, p2

    .line 1844
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p3

    add-int/2addr p4, p3

    sub-int/2addr p6, p2

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p2

    add-int/2addr p6, p2

    .line 1843
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 1849
    goto :goto_0

    .line 1825
    :pswitch_2
    if-nez p3, :cond_3

    .line 1826
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p2

    add-int/2addr p4, p2

    .line 1827
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result p2

    add-int/2addr p6, p2

    .line 1826
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1829
    :cond_3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1830
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1829
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 1832
    nop

    .line 1863
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method a(Lcom/google/android/flexbox/c$a;II)V
    .locals 8

    .line 215
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 217
    return-void
.end method

.method a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V
    .locals 37
    .param p7    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/c$a;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    .line 385
    iget-object v0, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->isMainAxisDirectionHorizontal()Z

    move-result v14

    .line 387
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 388
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 390
    nop

    .line 393
    if-nez p7, :cond_0

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    move-object v7, v0

    goto :goto_0

    .line 396
    :cond_0
    nop

    .line 399
    move-object/from16 v7, p7

    :goto_0
    iput-object v7, v10, Lcom/google/android/flexbox/c$a;->mFlexLines:Ljava/util/List;

    .line 401
    const/4 v6, -0x1

    if-ne v13, v6, :cond_1

    .line 403
    const/4 v0, 0x1

    goto :goto_1

    .line 401
    :cond_1
    nop

    .line 403
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/c;->q(Z)I

    move-result v1

    .line 404
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/c;->r(Z)I

    move-result v2

    .line 405
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/c;->s(Z)I

    move-result v16

    .line 406
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/c;->t(Z)I

    move-result v17

    .line 408
    nop

    .line 411
    nop

    .line 414
    nop

    .line 416
    new-instance v3, Lcom/google/android/flexbox/b;

    invoke-direct {v3}, Lcom/google/android/flexbox/b;-><init>()V

    .line 417
    move/from16 v6, p5

    iput v6, v3, Lcom/google/android/flexbox/b;->hy:I

    .line 418
    add-int/2addr v2, v1

    iput v2, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 420
    iget-object v1, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v1

    .line 421
    const/high16 v19, -0x80000000

    move/from16 v23, v0

    move/from16 v22, v19

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    if-ge v6, v1, :cond_14

    .line 422
    iget-object v5, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v5, v6}, Lcom/google/android/flexbox/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 424
    if-nez v5, :cond_2

    .line 425
    invoke-direct {v9, v6, v1, v3}, Lcom/google/android/flexbox/c;->a(IILcom/google/android/flexbox/b;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 426
    invoke-direct {v9, v7, v3, v6, v0}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;Lcom/google/android/flexbox/b;II)V

    goto :goto_3

    .line 429
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v10, 0x8

    if-ne v4, v10, :cond_4

    .line 430
    iget v4, v3, Lcom/google/android/flexbox/b;->hs:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/b;->hs:I

    .line 431
    iget v4, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    .line 432
    invoke-direct {v9, v6, v1, v3}, Lcom/google/android/flexbox/c;->a(IILcom/google/android/flexbox/b;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 433
    invoke-direct {v9, v7, v3, v6, v0}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;Lcom/google/android/flexbox/b;II)V

    .line 421
    :cond_3
    :goto_3
    move/from16 v10, p4

    move v5, v2

    move/from16 v18, v8

    move/from16 v32, v15

    const/4 v8, -0x1

    const/16 v24, 0x0

    move v2, v1

    const/4 v1, 0x1

    move/from16 v36, v13

    move-object v13, v7

    move/from16 v7, v36

    goto/16 :goto_a

    .line 438
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    .line 440
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v4

    move/from16 v26, v1

    const/4 v1, 0x4

    if-ne v4, v1, :cond_5

    .line 441
    iget-object v1, v3, Lcom/google/android/flexbox/b;->hx:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_5
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v1

    .line 446
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bW()F

    move-result v4

    const/high16 v27, -0x40800000    # -1.0f

    cmpl-float v4, v4, v27

    if-eqz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v15, v4, :cond_6

    .line 448
    int-to-float v1, v8

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bW()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 456
    :cond_6
    if-eqz v14, :cond_7

    .line 457
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 459
    move-object/from16 v28, v7

    const/4 v7, 0x1

    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v25

    add-int v25, v2, v25

    .line 460
    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/c;->d(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v27

    add-int v7, v25, v27

    .line 457
    invoke-interface {v4, v11, v7, v1}, Lcom/google/android/flexbox/a;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 462
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    add-int v7, v16, v17

    .line 464
    const/4 v13, 0x1

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/c;->e(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v25

    add-int v7, v7, v25

    .line 465
    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/c;->f(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v25

    add-int v7, v7, v25

    add-int/2addr v7, v0

    .line 467
    move/from16 v29, v8

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/c;->b(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    .line 462
    invoke-interface {v4, v12, v7, v8}, Lcom/google/android/flexbox/a;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 468
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 469
    invoke-direct {v9, v6, v1, v4, v5}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 484
    move v13, v1

    const/4 v8, 0x0

    goto :goto_4

    .line 471
    :cond_7
    move-object/from16 v28, v7

    move/from16 v29, v8

    const/4 v13, 0x1

    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    add-int v7, v16, v17

    .line 473
    const/4 v8, 0x0

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/c;->e(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v24

    add-int v7, v7, v24

    .line 474
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/c;->f(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v24

    add-int v7, v7, v24

    add-int/2addr v7, v0

    .line 475
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/c;->b(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v13

    .line 471
    invoke-interface {v4, v12, v7, v13}, Lcom/google/android/flexbox/a;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 476
    iget-object v7, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 478
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v13

    add-int/2addr v13, v2

    .line 479
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/c;->d(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v24

    add-int v13, v13, v24

    .line 476
    invoke-interface {v7, v11, v13, v1}, Lcom/google/android/flexbox/a;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 481
    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 482
    invoke-direct {v9, v6, v4, v1, v5}, Lcom/google/android/flexbox/c;->a(IIILandroid/view/View;)V

    .line 484
    move v13, v1

    :goto_4
    iget-object v1, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1, v6, v5}, Lcom/google/android/flexbox/a;->updateViewCache(ILandroid/view/View;)V

    .line 492
    invoke-direct {v9, v5, v6}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;I)V

    .line 494
    nop

    .line 495
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    .line 494
    move/from16 v4, v20

    invoke-static {v4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v20

    .line 497
    iget v4, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 498
    invoke-direct {v9, v5, v14}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Z)I

    move-result v1

    .line 499
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v1, v7

    .line 500
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->d(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v7, v1

    .line 497
    move v1, v0

    move-object v0, v9

    move v11, v1

    move/from16 v30, v26

    move-object v1, v5

    move/from16 v31, v2

    move v2, v15

    move/from16 v32, v15

    move-object v15, v3

    move/from16 v3, v29

    move/from16 v24, v8

    move-object v8, v5

    move v5, v7

    move v7, v6

    move/from16 v33, v13

    const/4 v13, -0x1

    move-object v6, v10

    move/from16 v34, v7

    move-object/from16 v13, v28

    move-object/from16 v35, v8

    move/from16 v18, v29

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 502
    invoke-virtual {v15}, Lcom/google/android/flexbox/b;->cc()I

    move-result v0

    if-lez v0, :cond_9

    .line 503
    move/from16 v6, v34

    if-lez v6, :cond_8

    add-int/lit8 v5, v6, -0x1

    goto :goto_5

    :cond_8
    move/from16 v5, v24

    :goto_5
    invoke-direct {v9, v13, v15, v5, v11}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;Lcom/google/android/flexbox/b;II)V

    .line 504
    iget v0, v15, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v0, v11

    goto :goto_6

    .line 507
    :cond_9
    move/from16 v6, v34

    move v0, v11

    :goto_6
    if-eqz v14, :cond_b

    .line 508
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 516
    iget-object v1, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    iget-object v2, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 518
    invoke-interface {v2}, Lcom/google/android/flexbox/a;->getPaddingTop()I

    move-result v2

    iget-object v3, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v3}, Lcom/google/android/flexbox/a;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 519
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v3

    add-int/2addr v2, v3

    .line 520
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 521
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v3

    .line 516
    invoke-interface {v1, v12, v2, v3}, Lcom/google/android/flexbox/a;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 522
    move/from16 v3, v33

    move-object/from16 v2, v35

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 523
    invoke-direct {v9, v2, v6}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;I)V

    goto :goto_7

    .line 545
    :cond_a
    move-object/from16 v2, v35

    goto :goto_7

    .line 526
    :cond_b
    move/from16 v3, v33

    move-object/from16 v2, v35

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 534
    iget-object v1, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 536
    invoke-interface {v4}, Lcom/google/android/flexbox/a;->getPaddingLeft()I

    move-result v4

    iget-object v5, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v5}, Lcom/google/android/flexbox/a;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 537
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bX()I

    move-result v5

    add-int/2addr v4, v5

    .line 538
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bZ()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 539
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v5

    .line 534
    invoke-interface {v1, v12, v4, v5}, Lcom/google/android/flexbox/a;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 540
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 541
    invoke-direct {v9, v2, v6}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;I)V

    .line 545
    :cond_c
    :goto_7
    new-instance v3, Lcom/google/android/flexbox/b;

    invoke-direct {v3}, Lcom/google/android/flexbox/b;-><init>()V

    .line 546
    const/4 v1, 0x1

    iput v1, v3, Lcom/google/android/flexbox/b;->mItemCount:I

    .line 547
    move/from16 v5, v31

    iput v5, v3, Lcom/google/android/flexbox/b;->hp:I

    .line 548
    iput v6, v3, Lcom/google/android/flexbox/b;->hy:I

    .line 549
    nop

    .line 550
    nop

    .line 555
    move v11, v0

    move-object v15, v3

    move/from16 v3, v19

    move/from16 v0, v24

    goto :goto_8

    .line 552
    :cond_d
    move/from16 v5, v31

    move/from16 v6, v34

    move-object/from16 v2, v35

    const/4 v1, 0x1

    iget v0, v15, Lcom/google/android/flexbox/b;->mItemCount:I

    add-int/2addr v0, v1

    iput v0, v15, Lcom/google/android/flexbox/b;->mItemCount:I

    .line 553
    add-int/lit8 v0, v21, 0x1

    .line 555
    move/from16 v3, v22

    :goto_8
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hC:[I

    if-eqz v4, :cond_e

    .line 556
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hC:[I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    aput v7, v4, v6

    .line 558
    :cond_e
    iget v4, v15, Lcom/google/android/flexbox/b;->hp:I

    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Z)I

    move-result v7

    .line 559
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 560
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->d(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    iput v4, v15, Lcom/google/android/flexbox/b;->hp:I

    .line 561
    iget v4, v15, Lcom/google/android/flexbox/b;->ht:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bS()F

    move-result v7

    add-float/2addr v4, v7

    iput v4, v15, Lcom/google/android/flexbox/b;->ht:F

    .line 562
    iget v4, v15, Lcom/google/android/flexbox/b;->hu:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bT()F

    move-result v7

    add-float/2addr v4, v7

    iput v4, v15, Lcom/google/android/flexbox/b;->hu:F

    .line 564
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v4, v2, v6, v0, v15}, Lcom/google/android/flexbox/a;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/b;)V

    .line 566
    nop

    .line 567
    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/c;->b(Landroid/view/View;Z)I

    move-result v4

    .line 568
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->e(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v4, v7

    .line 569
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/c;->f(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 570
    invoke-interface {v7, v2}, Lcom/google/android/flexbox/a;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    .line 566
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 574
    iget v4, v15, Lcom/google/android/flexbox/b;->hr:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v15, Lcom/google/android/flexbox/b;->hr:I

    .line 576
    if-eqz v14, :cond_10

    .line 577
    iget-object v4, v9, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v4}, Lcom/google/android/flexbox/a;->getFlexWrap()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_f

    .line 578
    iget v4, v15, Lcom/google/android/flexbox/b;->hv:I

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bY()I

    move-result v7

    add-int/2addr v2, v7

    .line 578
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v15, Lcom/google/android/flexbox/b;->hv:I

    goto :goto_9

    .line 584
    :cond_f
    iget v4, v15, Lcom/google/android/flexbox/b;->hv:I

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    sub-int/2addr v7, v2

    .line 586
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->ca()I

    move-result v2

    add-int/2addr v7, v2

    .line 584
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v15, Lcom/google/android/flexbox/b;->hv:I

    .line 590
    :cond_10
    :goto_9
    move/from16 v2, v30

    invoke-direct {v9, v6, v2, v15}, Lcom/google/android/flexbox/c;->a(IILcom/google/android/flexbox/b;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 591
    invoke-direct {v9, v13, v15, v6, v11}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;Lcom/google/android/flexbox/b;II)V

    .line 592
    iget v4, v15, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v11, v4

    .line 595
    :cond_11
    move/from16 v7, p6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    .line 596
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 597
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/b;

    iget v4, v4, Lcom/google/android/flexbox/b;->hz:I

    if-lt v4, v7, :cond_12

    if-lt v6, v7, :cond_12

    if-nez v23, :cond_12

    .line 605
    invoke-virtual {v15}, Lcom/google/android/flexbox/b;->cb()I

    move-result v4

    neg-int v11, v4

    .line 606
    nop

    .line 608
    move/from16 v23, v1

    :cond_12
    move/from16 v10, p4

    if-le v11, v10, :cond_13

    if-eqz v23, :cond_13

    .line 616
    goto :goto_b

    .line 421
    :cond_13
    move/from16 v21, v0

    move/from16 v22, v3

    move v0, v11

    move-object v3, v15

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v1, v2

    move v2, v5

    move/from16 v8, v18

    move/from16 v15, v32

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v36, v13

    move v13, v7

    move-object/from16 v7, v36

    goto/16 :goto_2

    .line 620
    :cond_14
    :goto_b
    move/from16 v4, v20

    move-object/from16 v0, p1

    iput v4, v0, Lcom/google/android/flexbox/c$a;->hF:I

    .line 621
    return-void
.end method

.method a(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V
    .locals 8
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/c$a;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 242
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 244
    return-void
.end method

.method a(Landroid/util/SparseIntArray;)[I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    .line 151
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/c;->ba(I)Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/c;->a(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/c;->ba(I)Ljava/util/List;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/google/android/flexbox/c$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/c$b;-><init>(Lcom/google/android/flexbox/c$1;)V

    .line 118
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of p1, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz p1, :cond_0

    .line 120
    check-cast p3, Lcom/google/android/flexbox/FlexItem;

    .line 121
    invoke-interface {p3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result p1

    iput p1, v2, Lcom/google/android/flexbox/c$b;->order:I

    goto :goto_0

    .line 123
    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/c$b;->order:I

    .line 126
    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 129
    iput p2, v2, Lcom/google/android/flexbox/c$b;->index:I

    .line 130
    :goto_1
    if-ge p2, v0, :cond_4

    .line 131
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/c$b;

    iget p3, p1, Lcom/google/android/flexbox/c$b;->index:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/google/android/flexbox/c$b;->index:I

    .line 130
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    iput v0, v2, Lcom/google/android/flexbox/c$b;->index:I

    goto :goto_3

    .line 127
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/c$b;->index:I

    .line 138
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/2addr v0, v3

    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/flexbox/c;->a(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method b(III)V
    .locals 11

    .line 1400
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v0

    .line 1401
    packed-switch v0, :pswitch_data_0

    .line 1413
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1409
    :pswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1410
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1411
    nop

    .line 1415
    move v10, p2

    move p2, p1

    move p1, v10

    goto :goto_0

    .line 1404
    :pswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1405
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1406
    nop

    .line 1415
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    .line 1416
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_e

    .line 1417
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getSumOfCrossSize()I

    move-result p1

    add-int/2addr p1, p3

    .line 1418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1419
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/b;

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/flexbox/b;->hr:I

    goto/16 :goto_7

    .line 1421
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x2

    if-lt p3, v1, :cond_e

    .line 1422
    iget-object p3, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p3}, Lcom/google/android/flexbox/a;->getAlignContent()I

    move-result p3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch p3, :pswitch_data_1

    goto/16 :goto_7

    .line 1424
    :pswitch_2
    if-lt p1, p2, :cond_1

    .line 1425
    goto/16 :goto_7

    .line 1427
    :cond_1
    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1428
    nop

    .line 1429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    move p3, v5

    :goto_1
    if-ge v2, p2, :cond_5

    .line 1430
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/b;

    .line 1431
    iget v7, v1, Lcom/google/android/flexbox/b;->hr:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    .line 1432
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ne v2, v8, :cond_2

    .line 1433
    add-float/2addr v7, p3

    .line 1434
    nop

    .line 1436
    move p3, v5

    :cond_2
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1437
    int-to-float v9, v8

    sub-float/2addr v7, v9

    add-float/2addr p3, v7

    .line 1438
    cmpl-float v7, p3, v6

    if-lez v7, :cond_3

    .line 1439
    add-int/lit8 v8, v8, 0x1

    .line 1440
    sub-float/2addr p3, v6

    goto :goto_2

    .line 1441
    :cond_3
    cmpg-float v7, p3, v4

    if-gez v7, :cond_4

    .line 1442
    add-int/lit8 v8, v8, -0x1

    .line 1443
    add-float/2addr p3, v6

    .line 1445
    :cond_4
    :goto_2
    iput v8, v1, Lcom/google/android/flexbox/b;->hr:I

    .line 1429
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1447
    :cond_5
    goto/16 :goto_7

    .line 1450
    :pswitch_3
    if-lt p1, p2, :cond_6

    .line 1453
    iget-object p3, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1454
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 1453
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/a;->setFlexLines(Ljava/util/List;)V

    .line 1456
    goto/16 :goto_7

    .line 1460
    :cond_6
    sub-int/2addr p2, p1

    .line 1462
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr p1, v1

    .line 1463
    div-int/2addr p2, p1

    .line 1464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    new-instance p3, Lcom/google/android/flexbox/b;

    invoke-direct {p3}, Lcom/google/android/flexbox/b;-><init>()V

    .line 1466
    iput p2, p3, Lcom/google/android/flexbox/b;->hr:I

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/b;

    .line 1468
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    goto :goto_3

    .line 1472
    :cond_7
    iget-object p2, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p2, p1}, Lcom/google/android/flexbox/a;->setFlexLines(Ljava/util/List;)V

    .line 1473
    goto/16 :goto_7

    .line 1476
    :pswitch_4
    if-lt p1, p2, :cond_8

    .line 1477
    goto/16 :goto_7

    .line 1480
    :cond_8
    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 1481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    .line 1482
    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1483
    nop

    .line 1484
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    move v7, v5

    :goto_4
    if-ge v2, p3, :cond_d

    .line 1486
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/b;

    .line 1487
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-eq v2, v8, :cond_c

    .line 1490
    new-instance v8, Lcom/google/android/flexbox/b;

    invoke-direct {v8}, Lcom/google/android/flexbox/b;-><init>()V

    .line 1491
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v2, v9, :cond_9

    .line 1494
    add-float/2addr v7, p1

    .line 1495
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v8, Lcom/google/android/flexbox/b;->hr:I

    .line 1496
    nop

    .line 1501
    move v7, v5

    goto :goto_5

    .line 1498
    :cond_9
    nop

    .line 1499
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Lcom/google/android/flexbox/b;->hr:I

    .line 1501
    :goto_5
    iget v9, v8, Lcom/google/android/flexbox/b;->hr:I

    int-to-float v9, v9

    sub-float v9, p1, v9

    add-float/2addr v7, v9

    .line 1503
    cmpl-float v9, v7, v6

    if-lez v9, :cond_a

    .line 1504
    iget v9, v8, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v9, v3

    iput v9, v8, Lcom/google/android/flexbox/b;->hr:I

    .line 1505
    sub-float/2addr v7, v6

    goto :goto_6

    .line 1506
    :cond_a
    cmpg-float v9, v7, v4

    if-gez v9, :cond_b

    .line 1507
    iget v9, v8, Lcom/google/android/flexbox/b;->hr:I

    sub-int/2addr v9, v3

    iput v9, v8, Lcom/google/android/flexbox/b;->hr:I

    .line 1508
    add-float/2addr v7, v6

    .line 1510
    :cond_b
    :goto_6
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1513
    :cond_d
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1, p2}, Lcom/google/android/flexbox/a;->setFlexLines(Ljava/util/List;)V

    .line 1514
    goto :goto_7

    .line 1517
    :pswitch_5
    iget-object p3, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    .line 1518
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/flexbox/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 1517
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/a;->setFlexLines(Ljava/util/List;)V

    .line 1520
    goto :goto_7

    .line 1523
    :pswitch_6
    sub-int/2addr p2, p1

    .line 1524
    new-instance p1, Lcom/google/android/flexbox/b;

    invoke-direct {p1}, Lcom/google/android/flexbox/b;-><init>()V

    .line 1525
    iput p2, p1, Lcom/google/android/flexbox/b;->hr:I

    .line 1526
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1527
    nop

    .line 1535
    :cond_e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method b(Lcom/google/android/flexbox/c$a;II)V
    .locals 8

    .line 289
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 291
    return-void
.end method

.method b(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/c$a;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 273
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 275
    return-void
.end method

.method b(Landroid/util/SparseIntArray;)Z
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 178
    return v2

    .line 180
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 181
    iget-object v4, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v4, v3}, Lcom/google/android/flexbox/a;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 182
    if-nez v4, :cond_1

    .line 183
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 186
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 187
    return v2

    .line 180
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_3
    return v1
.end method

.method bc(I)V
    .locals 13

    .line 1574
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1575
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v0}, Lcom/google/android/flexbox/a;->getFlexDirection()I

    move-result v0

    .line 1578
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getAlignItems()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1579
    nop

    .line 1580
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hC:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1581
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hC:[I

    aget p1, v1, p1

    goto :goto_0

    .line 1583
    :cond_1
    move p1, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v1}, Lcom/google/android/flexbox/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    .line 1584
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge p1, v4, :cond_7

    .line 1585
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/b;

    .line 1586
    iget v6, v5, Lcom/google/android/flexbox/b;->mItemCount:I

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_6

    .line 1587
    iget v8, v5, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v8, v7

    .line 1588
    iget-object v9, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v9}, Lcom/google/android/flexbox/a;->getFlexItemCount()I

    move-result v9

    if-lt v7, v9, :cond_2

    .line 1589
    goto :goto_3

    .line 1591
    :cond_2
    iget-object v9, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {v9, v8}, Lcom/google/android/flexbox/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v9

    .line 1592
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 1593
    goto :goto_3

    .line 1595
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    .line 1596
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 1597
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->bU()I

    move-result v10

    if-eq v10, v2, :cond_4

    .line 1598
    goto :goto_3

    .line 1600
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 1610
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1607
    :pswitch_0
    iget v10, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, v9, v10, v8}, Lcom/google/android/flexbox/c;->b(Landroid/view/View;II)V

    .line 1608
    goto :goto_3

    .line 1603
    :pswitch_1
    iget v10, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, v9, v10, v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;II)V

    .line 1604
    nop

    .line 1586
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1584
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1615
    :cond_7
    goto :goto_7

    .line 1616
    :cond_8
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-interface {p1}, Lcom/google/android/flexbox/a;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/b;

    .line 1617
    iget-object v2, v1, Lcom/google/android/flexbox/b;->hx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1618
    iget-object v4, p0, Lcom/google/android/flexbox/c;->hA:Lcom/google/android/flexbox/a;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/android/flexbox/a;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 1619
    packed-switch v0, :pswitch_data_1

    .line 1629
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1626
    :pswitch_2
    iget v5, v1, Lcom/google/android/flexbox/b;->hr:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v5, v3}, Lcom/google/android/flexbox/c;->b(Landroid/view/View;II)V

    .line 1627
    goto :goto_6

    .line 1622
    :pswitch_3
    iget v5, v1, Lcom/google/android/flexbox/b;->hr:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v5, v3}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;II)V

    .line 1623
    nop

    .line 1632
    :goto_6
    goto :goto_5

    .line 1633
    :cond_9
    goto :goto_4

    .line 1635
    :cond_a
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method bd(I)V
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    if-nez v0, :cond_1

    .line 1867
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hE:[J

    goto :goto_0

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1869
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1870
    if-lt v0, p1, :cond_2

    .line 1871
    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hE:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hE:[J

    .line 1873
    :cond_3
    :goto_0
    return-void
.end method

.method be(I)V
    .locals 1

    .line 1876
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    if-nez v0, :cond_1

    .line 1877
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hD:[J

    goto :goto_0

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1879
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1880
    if-lt v0, p1, :cond_2

    .line 1881
    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hD:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hD:[J

    .line 1883
    :cond_3
    :goto_0
    return-void
.end method

.method bf(I)V
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    if-nez v0, :cond_1

    .line 1936
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hC:[I

    goto :goto_0

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1938
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1939
    if-lt v0, p1, :cond_2

    .line 1940
    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/c;->hC:[I

    .line 1942
    :cond_3
    :goto_0
    return-void
.end method

.method c(J)I
    .locals 0

    .line 1891
    long-to-int p1, p1

    return p1
.end method

.method c(II)V
    .locals 1

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/c;->a(III)V

    .line 906
    return-void
.end method

.method c(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V
    .locals 8
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/c$a;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 316
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 318
    return-void
.end method

.method c(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;I)V"
        }
    .end annotation

    .line 1951
    nop

    .line 1952
    nop

    .line 1954
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    aget v0, v0, p2

    .line 1955
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1956
    const/4 v0, 0x0

    .line 1961
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v0, :cond_1

    .line 1962
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1961
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1965
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hC:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 1966
    if-le p2, p1, :cond_2

    .line 1967
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hC:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 1969
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/c;->hC:[I

    invoke-static {v0, p2, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 1972
    :goto_1
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hD:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 1973
    const-wide/16 v0, 0x0

    if-le p2, p1, :cond_3

    .line 1974
    iget-object p1, p0, Lcom/google/android/flexbox/c;->hD:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    .line 1976
    :cond_3
    iget-object v2, p0, Lcom/google/android/flexbox/c;->hD:[J

    invoke-static {v2, p2, p1, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 1978
    :goto_2
    return-void
.end method

.method cd()V
    .locals 1

    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/c;->bc(I)V

    .line 1559
    return-void
.end method

.method d(J)I
    .locals 1

    .line 1900
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method d(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/c$a;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 347
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    .line 349
    return-void
.end method

.method makeCombinedLong(II)J
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1917
    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method
