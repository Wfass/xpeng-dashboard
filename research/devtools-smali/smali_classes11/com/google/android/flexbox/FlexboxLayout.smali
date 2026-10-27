.class public Lcom/google/android/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/flexbox/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/c$a;

.field private mFlexWrap:I

.field private mFlexboxHelper:Lcom/google/android/flexbox/c;

.field private mJustifyContent:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    new-instance v0, Lcom/google/android/flexbox/c;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/c;-><init>(Lcom/google/android/flexbox/a;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/google/android/flexbox/c$a;

    invoke-direct {v0}, Lcom/google/android/flexbox/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    .line 212
    sget-object v0, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 214
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexDirection:I

    .line 215
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 216
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexWrap:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 217
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_justifyContent:I

    .line 218
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 219
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignItems:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 220
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignContent:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 221
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 222
    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableHorizontal:I

    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 228
    if-eqz p2, :cond_1

    .line 229
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_1
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableVertical:I

    .line 232
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 233
    if-eqz p2, :cond_2

    .line 234
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_2
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDivider:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 237
    if-eqz p2, :cond_3

    .line 238
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 239
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 241
    :cond_3
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerVertical:I

    .line 242
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 243
    if-eqz p2, :cond_4

    .line 244
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 246
    :cond_4
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerHorizontal:I

    .line 247
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 248
    if-eqz p2, :cond_5

    .line 249
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 251
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3

    .line 1489
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1490
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    invoke-virtual {v2}, Lcom/google/android/flexbox/b;->cc()I

    move-result v2

    if-lez v2, :cond_0

    .line 1491
    return v0

    .line 1489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 4

    .line 1454
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-gt v1, p2, :cond_1

    .line 1455
    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1456
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1457
    const/4 p1, 0x0

    return p1

    .line 1454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 930
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v0

    .line 931
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v1

    .line 932
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 933
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    .line 934
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/b;

    .line 935
    move v6, v1

    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v6, v7, :cond_5

    .line 936
    iget v7, v5, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v7, v6

    .line 937
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 938
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 939
    goto :goto_4

    .line 941
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 944
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 946
    if-eqz p2, :cond_1

    .line 947
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v10, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    .line 949
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v10, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v7, v10

    .line 952
    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/b;->mTop:I

    iget v11, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 956
    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/b;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 957
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    .line 959
    if-eqz p2, :cond_3

    .line 960
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 962
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 965
    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/b;->mTop:I

    iget v9, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 935
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 972
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 974
    if-eqz p3, :cond_6

    .line 975
    iget v6, v5, Lcom/google/android/flexbox/b;->mBottom:I

    goto :goto_5

    .line 977
    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/b;->mTop:I

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v6, v7

    .line 979
    :goto_5
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 983
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 984
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    .line 986
    if-eqz p3, :cond_8

    .line 987
    iget v5, v5, Lcom/google/android/flexbox/b;->mTop:I

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v5, v6

    goto :goto_6

    .line 989
    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/b;->mBottom:I

    .line 991
    :goto_6
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 933
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 996
    :cond_a
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v1

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1013
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    .line 1014
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/b;

    .line 1017
    move v6, v1

    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v6, v7, :cond_5

    .line 1018
    iget v7, v5, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v7, v6

    .line 1019
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1020
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1021
    goto :goto_4

    .line 1023
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 1026
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1028
    if-eqz p3, :cond_1

    .line 1029
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v10, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    .line 1031
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v10, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v7, v10

    .line 1034
    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/b;->mLeft:I

    iget v11, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, p1, v10, v7, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 1038
    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/b;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 1039
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    .line 1041
    if-eqz p3, :cond_3

    .line 1042
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 1044
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 1047
    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/b;->mLeft:I

    iget v9, v5, Lcom/google/android/flexbox/b;->hr:I

    invoke-direct {p0, p1, v8, v7, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 1017
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1054
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1056
    if-eqz p2, :cond_6

    .line 1057
    iget v6, v5, Lcom/google/android/flexbox/b;->mRight:I

    goto :goto_5

    .line 1059
    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/b;->mLeft:I

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v6, v7

    .line 1061
    :goto_5
    invoke-direct {p0, p1, v6, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 1064
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1065
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    .line 1067
    if-eqz p2, :cond_8

    .line 1068
    iget v5, v5, Lcom/google/android/flexbox/b;->mLeft:I

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v5, v6

    goto :goto_6

    .line 1070
    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/b;->mRight:I

    .line 1072
    :goto_6
    invoke-direct {p0, p1, v5, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 1013
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1077
    :cond_a
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1089
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    add-int/2addr p4, p2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v1, p3

    .line 1092
    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1093
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1094
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1081
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int/2addr p4, p3

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1084
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1085
    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 1

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1440
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    move p2, v0

    nop

    :cond_0
    return p2

    .line 1442
    :cond_1
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    move p2, v0

    nop

    :cond_2
    return p2

    .line 1445
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1446
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    move p2, v0

    nop

    :cond_4
    return p2

    .line 1448
    :cond_5
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    move p2, v0

    nop

    :cond_6
    return p2
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 2

    .line 1470
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 1474
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1475
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 1477
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 1480
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1481
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    move v0, v1

    nop

    :cond_5
    return v0

    .line 1483
    :cond_6
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    move v0, v1

    nop

    :cond_7
    return v0

    .line 1471
    :cond_8
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3

    .line 1504
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 1508
    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1509
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    invoke-virtual {v2}, Lcom/google/android/flexbox/b;->cc()I

    move-result v2

    if-lez v2, :cond_1

    .line 1510
    return v0

    .line 1508
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1513
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1514
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 1516
    :cond_4
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    move v0, v1

    nop

    :cond_5
    return v0

    .line 1505
    :cond_6
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 29

    move-object/from16 v0, p0

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v3

    .line 615
    sub-int v4, p5, p3

    .line 616
    sub-int v5, p4, p2

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v6

    .line 626
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v9, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_c

    .line 627
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/b;

    .line 628
    invoke-direct {v0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 629
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v6, v11

    .line 630
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v9, v11

    .line 632
    :cond_0
    nop

    .line 633
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 663
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :pswitch_0
    invoke-virtual {v10}, Lcom/google/android/flexbox/b;->cc()I

    move-result v11

    .line 648
    if-eqz v11, :cond_1

    .line 649
    iget v14, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v14, v5, v14

    int-to-float v14, v14

    int-to-float v11, v11

    div-float v11, v14, v11

    goto :goto_1

    .line 652
    :cond_1
    move v11, v12

    :goto_1
    int-to-float v14, v2

    div-float v13, v11, v13

    add-float/2addr v14, v13

    .line 653
    sub-int v8, v5, v3

    int-to-float v8, v8

    sub-float/2addr v8, v13

    .line 654
    nop

    .line 666
    move/from16 v28, v11

    move v11, v8

    move/from16 v8, v28

    goto :goto_4

    .line 656
    :pswitch_1
    int-to-float v14, v2

    .line 657
    invoke-virtual {v10}, Lcom/google/android/flexbox/b;->cc()I

    move-result v8

    .line 658
    if-eq v8, v15, :cond_2

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    goto :goto_2

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 659
    :goto_2
    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    div-float v8, v11, v8

    .line 660
    sub-int v11, v5, v3

    int-to-float v11, v11

    .line 661
    goto :goto_4

    .line 643
    :pswitch_2
    int-to-float v8, v2

    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    add-float v14, v8, v11

    .line 644
    sub-int v8, v5, v3

    int-to-float v8, v8

    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    sub-float/2addr v8, v11

    .line 645
    goto :goto_3

    .line 639
    :pswitch_3
    iget v8, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v8, v5, v8

    add-int/2addr v8, v3

    int-to-float v14, v8

    .line 640
    iget v8, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v8, v2

    int-to-float v8, v8

    .line 641
    goto :goto_3

    .line 635
    :pswitch_4
    int-to-float v14, v2

    .line 636
    sub-int v8, v5, v3

    int-to-float v8, v8

    .line 637
    nop

    .line 666
    :goto_3
    move v11, v8

    move v8, v12

    :goto_4
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 668
    move v12, v11

    move v11, v14

    const/4 v14, 0x0

    :goto_5
    iget v13, v10, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v14, v13, :cond_b

    .line 669
    iget v13, v10, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v13, v14

    .line 670
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 671
    if-eqz v15, :cond_a

    move/from16 v19, v2

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v20, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 672
    goto/16 :goto_a

    .line 674
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 675
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    add-float/2addr v11, v3

    .line 676
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v3, v3

    sub-float/2addr v12, v3

    .line 677
    nop

    .line 678
    nop

    .line 679
    invoke-direct {v0, v13, v14}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 680
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 681
    int-to-float v13, v3

    add-float/2addr v11, v13

    .line 682
    sub-float/2addr v12, v13

    .line 684
    move/from16 v21, v3

    move v13, v11

    move v3, v12

    goto :goto_6

    :cond_4
    move v13, v11

    move v3, v12

    const/16 v21, 0x0

    :goto_6
    iget v11, v10, Lcom/google/android/flexbox/b;->mItemCount:I

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v14, v11, :cond_5

    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_5

    .line 685
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 688
    move/from16 v18, v11

    goto :goto_7

    :cond_5
    const/16 v18, 0x0

    :goto_7
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 689
    if-eqz p1, :cond_6

    .line 690
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 691
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v12, v17

    .line 692
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v22, v6, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 690
    move-object v12, v15

    move/from16 v24, v5

    move v5, v13

    move-object v13, v10

    move/from16 v25, v14

    move/from16 v14, v17

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v27, v16

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    goto/16 :goto_8

    .line 695
    :cond_6
    move/from16 v24, v5

    move/from16 v26, v7

    move v5, v13

    move/from16 v25, v14

    move-object v7, v15

    move/from16 v27, v16

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 696
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v15, v6, v12

    .line 697
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v12, v13

    .line 695
    move-object v12, v7

    move-object v13, v10

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    goto :goto_8

    .line 700
    :cond_7
    move/from16 v24, v5

    move/from16 v26, v7

    move v5, v13

    move/from16 v25, v14

    move-object v7, v15

    move/from16 v27, v16

    if-eqz p1, :cond_8

    .line 701
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 702
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v12, v13

    .line 703
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 704
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v9, v12

    .line 701
    move-object v12, v7

    move-object v13, v10

    move v15, v9

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    goto :goto_8

    .line 706
    :cond_8
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 707
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 708
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v12, v13

    .line 709
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v9, v12

    .line 706
    move-object v12, v7

    move-object v13, v10

    move v15, v9

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    .line 712
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v12, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v5, v11

    .line 713
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v2, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    sub-float/2addr v3, v11

    .line 715
    if-eqz p1, :cond_9

    .line 716
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move-object v12, v7

    move/from16 v13, v18

    move/from16 v15, v21

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/flexbox/b;->a(Landroid/view/View;IIII)V

    goto :goto_9

    .line 719
    :cond_9
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move-object v12, v7

    move/from16 v13, v21

    move/from16 v15, v18

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/flexbox/b;->a(Landroid/view/View;IIII)V

    .line 668
    :goto_9
    move v12, v3

    move v11, v5

    goto :goto_b

    :cond_a
    move/from16 v19, v2

    move/from16 v20, v3

    :goto_a
    move/from16 v24, v5

    move/from16 v26, v7

    move/from16 v25, v14

    const/16 v27, 0x1

    :goto_b
    add-int/lit8 v14, v25, 0x1

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v5, v24

    move/from16 v7, v26

    move/from16 v15, v27

    goto/16 :goto_5

    .line 723
    :cond_b
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v24, v5

    move/from16 v26, v7

    iget v2, v10, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v9, v2

    .line 724
    iget v2, v10, Lcom/google/android/flexbox/b;->hr:I

    sub-int/2addr v6, v2

    .line 626
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v19

    goto/16 :goto_0

    .line 726
    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private layoutVertical(ZZIIII)V
    .locals 33

    move-object/from16 v0, p0

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v2

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v3

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v4

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v5

    .line 758
    sub-int v6, p5, p3

    .line 759
    sub-int v7, p6, p4

    .line 762
    sub-int/2addr v6, v4

    .line 771
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    .line 772
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/b;

    .line 773
    invoke-direct {v0, v5}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 774
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v6, v11

    .line 775
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v9, v11

    .line 777
    :cond_0
    nop

    .line 778
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 808
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :pswitch_0
    invoke-virtual {v10}, Lcom/google/android/flexbox/b;->cc()I

    move-result v11

    .line 793
    if-eqz v11, :cond_1

    .line 794
    iget v14, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v14, v7, v14

    int-to-float v14, v14

    int-to-float v11, v11

    div-float v11, v14, v11

    goto :goto_1

    .line 797
    :cond_1
    move v11, v12

    :goto_1
    int-to-float v14, v2

    div-float v13, v11, v13

    add-float/2addr v14, v13

    .line 798
    sub-int v8, v7, v3

    int-to-float v8, v8

    sub-float/2addr v8, v13

    .line 799
    nop

    .line 811
    move/from16 v32, v11

    move v11, v8

    move/from16 v8, v32

    goto :goto_4

    .line 801
    :pswitch_1
    int-to-float v14, v2

    .line 802
    invoke-virtual {v10}, Lcom/google/android/flexbox/b;->cc()I

    move-result v8

    .line 803
    if-eq v8, v15, :cond_2

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    goto :goto_2

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 804
    :goto_2
    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v7, v11

    int-to-float v11, v11

    div-float v8, v11, v8

    .line 805
    sub-int v11, v7, v3

    int-to-float v11, v11

    .line 806
    goto :goto_4

    .line 788
    :pswitch_2
    int-to-float v8, v2

    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v7, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    add-float v14, v8, v11

    .line 789
    sub-int v8, v7, v3

    int-to-float v8, v8

    iget v11, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v11, v7, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    sub-float/2addr v8, v11

    .line 790
    goto :goto_3

    .line 784
    :pswitch_3
    iget v8, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int v8, v7, v8

    add-int/2addr v8, v3

    int-to-float v14, v8

    .line 785
    iget v8, v10, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v8, v2

    int-to-float v8, v8

    .line 786
    goto :goto_3

    .line 780
    :pswitch_4
    int-to-float v14, v2

    .line 781
    sub-int v8, v7, v3

    int-to-float v8, v8

    .line 782
    nop

    .line 811
    :goto_3
    move v11, v8

    move v8, v12

    :goto_4
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 813
    move v12, v11

    move v11, v14

    const/4 v14, 0x0

    :goto_5
    iget v13, v10, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v14, v13, :cond_b

    .line 814
    iget v13, v10, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v13, v14

    .line 815
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 816
    if-eqz v15, :cond_a

    move/from16 v20, v2

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v21, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 817
    goto/16 :goto_a

    .line 819
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 820
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v11, v3

    .line 821
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    sub-float/2addr v12, v3

    .line 822
    nop

    .line 823
    nop

    .line 824
    invoke-direct {v0, v13, v14}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 825
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 826
    int-to-float v13, v3

    add-float/2addr v11, v13

    .line 827
    sub-float/2addr v12, v13

    .line 829
    move/from16 v22, v3

    move v13, v11

    move v3, v12

    goto :goto_6

    :cond_4
    move v13, v11

    move v3, v12

    const/16 v22, 0x0

    :goto_6
    iget v11, v10, Lcom/google/android/flexbox/b;->mItemCount:I

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v14, v11, :cond_5

    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_5

    .line 831
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 833
    move/from16 v19, v11

    goto :goto_7

    :cond_5
    const/16 v19, 0x0

    :goto_7
    if-eqz p1, :cond_7

    .line 834
    if-eqz p2, :cond_6

    .line 835
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    const/16 v17, 0x1

    .line 836
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v18, v9, v12

    .line 837
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v12, v23

    .line 838
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 835
    move-object v12, v15

    move/from16 v25, v4

    move v4, v13

    move-object v13, v10

    move/from16 v26, v14

    move/from16 v14, v17

    move-object/from16 v27, v15

    move/from16 v28, v16

    move/from16 v15, v18

    move/from16 v16, v23

    move/from16 v17, v9

    move/from16 v18, v24

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    .line 856
    move-object/from16 v31, v27

    goto/16 :goto_8

    .line 840
    :cond_6
    move/from16 v25, v4

    move v4, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move/from16 v28, v16

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    const/4 v14, 0x1

    .line 841
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v16, v9, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 842
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v18, v12, v13

    .line 840
    move-object v12, v15

    move-object v13, v10

    move-object/from16 v29, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v9

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    .line 856
    move-object/from16 v31, v29

    goto :goto_8

    .line 845
    :cond_7
    move/from16 v25, v4

    move v4, v13

    move/from16 v26, v14

    move-object/from16 v29, v15

    move/from16 v28, v16

    if-eqz p2, :cond_8

    .line 846
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    const/4 v14, 0x0

    .line 847
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v15, v29

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v16, v12, v13

    .line 848
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v17, v6, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 846
    move-object v12, v15

    move-object v13, v10

    move-object/from16 v30, v15

    move v15, v6

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    .line 856
    move-object/from16 v31, v30

    goto :goto_8

    .line 850
    :cond_8
    move-object/from16 v30, v29

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    const/4 v14, 0x0

    .line 851
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 852
    move-object/from16 v15, v30

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v17, v6, v12

    .line 853
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v18, v12, v13

    .line 850
    move-object v12, v15

    move-object v13, v10

    move-object/from16 v31, v15

    move v15, v6

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    .line 856
    :goto_8
    move-object/from16 v12, v31

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v13, v13

    add-float/2addr v11, v13

    add-float/2addr v4, v11

    .line 857
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v2, v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    sub-float/2addr v3, v11

    .line 859
    if-eqz p2, :cond_9

    .line 860
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    move/from16 v14, v19

    move/from16 v16, v22

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/flexbox/b;->a(Landroid/view/View;IIII)V

    goto :goto_9

    .line 863
    :cond_9
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    move/from16 v14, v22

    move/from16 v16, v19

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/flexbox/b;->a(Landroid/view/View;IIII)V

    .line 813
    :goto_9
    move v12, v3

    move v11, v4

    goto :goto_b

    :cond_a
    move/from16 v20, v2

    move/from16 v21, v3

    :goto_a
    move/from16 v25, v4

    move/from16 v26, v14

    const/16 v28, 0x1

    :goto_b
    add-int/lit8 v14, v26, 0x1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v25

    move/from16 v15, v28

    goto/16 :goto_5

    .line 867
    :cond_b
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v25, v4

    iget v2, v10, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v6, v2

    .line 868
    iget v2, v10, Lcom/google/android/flexbox/b;->hr:I

    sub-int/2addr v9, v2

    .line 771
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    .line 870
    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private measureHorizontal(II)V
    .locals 8

    .line 340
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {v0}, Lcom/google/android/flexbox/c$a;->reset()V

    .line 343
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    .line 344
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;II)V

    .line 346
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object v0, v0, Lcom/google/android/flexbox/c$a;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 348
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/c;->c(II)V

    .line 351
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 352
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/b;

    .line 354
    const/high16 v2, -0x80000000

    .line 355
    const/4 v3, 0x0

    :goto_1
    iget v4, v1, Lcom/google/android/flexbox/b;->mItemCount:I

    if-ge v3, v4, :cond_3

    .line 356
    iget v4, v1, Lcom/google/android/flexbox/b;->hy:I

    add-int/2addr v4, v3

    .line 357
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 358
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 359
    goto :goto_2

    .line 361
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 362
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 363
    iget v6, v1, Lcom/google/android/flexbox/b;->hv:I

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    sub-int/2addr v6, v7

    .line 364
    iget v7, v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 365
    nop

    .line 366
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v6

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 365
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 367
    goto :goto_2

    .line 368
    :cond_1
    iget v6, v1, Lcom/google/android/flexbox/b;->hv:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    add-int/2addr v6, v7

    .line 370
    iget v7, v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 371
    nop

    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    .line 371
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 355
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    :cond_3
    iput v2, v1, Lcom/google/android/flexbox/b;->hr:I

    .line 376
    goto :goto_0

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 380
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 379
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/flexbox/c;->b(III)V

    .line 383
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v0}, Lcom/google/android/flexbox/c;->cd()V

    .line 384
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget v1, v1, Lcom/google/android/flexbox/c$a;->hF:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 386
    return-void
.end method

.method private measureVertical(II)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {v0}, Lcom/google/android/flexbox/c$a;->reset()V

    .line 403
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/c;->b(Lcom/google/android/flexbox/c$a;II)V

    .line 405
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object v0, v0, Lcom/google/android/flexbox/c$a;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 407
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/c;->c(II)V

    .line 408
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 409
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 408
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/flexbox/c;->b(III)V

    .line 412
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v0}, Lcom/google/android/flexbox/c;->cd()V

    .line 413
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget v1, v1, Lcom/google/android/flexbox/c$a;->hF:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 415
    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .locals 8

    .line 430
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 431
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 432
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 433
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 436
    packed-switch p1, :pswitch_data_0

    .line 449
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid flex direction: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 445
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result p1

    .line 446
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 447
    goto :goto_0

    .line 439
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr p1, v4

    .line 440
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr p1, v4

    .line 441
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result v4

    .line 442
    nop

    .line 453
    :goto_0
    const/high16 v5, 0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_1

    .line 455
    if-ge v1, v4, :cond_0

    .line 456
    nop

    .line 457
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 459
    :cond_0
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 461
    goto :goto_2

    .line 479
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown width mode is set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_2
    nop

    .line 475
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 476
    goto :goto_2

    .line 463
    :cond_3
    if-ge v1, v4, :cond_4

    .line 464
    nop

    .line 465
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_1

    .line 467
    :cond_4
    nop

    .line 469
    move v1, v4

    :goto_1
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 471
    nop

    .line 482
    :goto_2
    const/16 v0, 0x100

    if-eq v2, v7, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v6, :cond_6

    .line 484
    if-ge v3, p1, :cond_5

    .line 485
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 489
    :cond_5
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 491
    goto :goto_4

    .line 510
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown height mode is set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_7
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 507
    goto :goto_4

    .line 493
    :cond_8
    if-ge v3, p1, :cond_9

    .line 494
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 500
    move p1, v3

    goto :goto_3

    .line 498
    :cond_9
    nop

    .line 500
    :goto_3
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 502
    nop

    .line 512
    :goto_4
    invoke-virtual {p0, p2, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimension(II)V

    .line 513
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

.method private setWillNotDrawFlag()V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 1425
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    .line 1427
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 323
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1098
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1108
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 1110
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1111
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1113
    :cond_1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .locals 2

    .line 1103
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 1175
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 0

    .line 1256
    invoke-static {p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p1

    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 0

    .line 1251
    invoke-static {p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p1

    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    .line 1229
    const/4 p1, 0x0

    return p1
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 1

    .line 1206
    nop

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1208
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1209
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, p1

    .line 1211
    :cond_0
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 1212
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 1215
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1216
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, p1

    .line 1218
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 1219
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, p1

    .line 1222
    :cond_3
    :goto_0
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1195
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    .line 1196
    invoke-virtual {v2}, Lcom/google/android/flexbox/b;->cc()I

    move-result v3

    if-nez v3, :cond_0

    .line 1197
    goto :goto_0

    .line 1199
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    goto :goto_0

    .line 1201
    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 1133
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    return v0
.end method

.method public getJustifyContent()I
    .locals 1

    .line 1147
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 3

    .line 517
    nop

    .line 518
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    .line 519
    iget v2, v2, Lcom/google/android/flexbox/b;->hp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 520
    goto :goto_0

    .line 521
    :cond_0
    return v1
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 1

    .line 302
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 303
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getShowDividerHorizontal()I
    .locals 1

    .line 1373
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    return v0
.end method

.method public getShowDividerVertical()I
    .locals 1

    .line 1368
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 526
    nop

    .line 527
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 528
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/b;

    .line 531
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, v4

    goto :goto_1

    .line 535
    :cond_0
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v2, v4

    .line 540
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, v4

    goto :goto_2

    .line 544
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v2, v4

    .line 547
    :cond_3
    :goto_2
    iget v3, v3, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v2, v3

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_4
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 554
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 875
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 876
    return-void

    .line 878
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-nez v0, :cond_1

    .line 880
    return-void

    .line 883
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 885
    nop

    .line 886
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 909
    :pswitch_0
    if-ne v0, v4, :cond_2

    .line 910
    move v3, v4

    goto :goto_0

    .line 909
    :cond_2
    nop

    .line 910
    :goto_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v0, v2, :cond_3

    .line 911
    nop

    .line 913
    xor-int/lit8 v3, v3, 0x1

    :cond_3
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    goto :goto_4

    .line 902
    :pswitch_1
    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 903
    :cond_4
    move v4, v3

    :goto_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v0, v2, :cond_5

    .line 904
    nop

    .line 906
    xor-int/lit8 v4, v4, 0x1

    :cond_5
    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 907
    goto :goto_4

    .line 895
    :pswitch_2
    if-eq v0, v4, :cond_6

    .line 896
    move v0, v4

    goto :goto_2

    .line 895
    :cond_6
    nop

    .line 896
    move v0, v3

    :goto_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v2, :cond_7

    .line 897
    nop

    .line 899
    move v3, v4

    :cond_7
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 900
    goto :goto_4

    .line 888
    :pswitch_3
    if-ne v0, v4, :cond_8

    .line 889
    move v0, v4

    goto :goto_3

    .line 888
    :cond_8
    nop

    .line 889
    move v0, v3

    :goto_3
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v2, :cond_9

    .line 890
    nop

    .line 892
    move v3, v4

    :cond_9
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 893
    nop

    .line 916
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 559
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 561
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 585
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flex direction is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :pswitch_0
    if-ne v1, v5, :cond_0

    .line 579
    move v4, v5

    goto :goto_0

    .line 578
    :cond_0
    nop

    .line 579
    :goto_0
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v3, :cond_1

    .line 580
    nop

    .line 582
    xor-int/lit8 v1, v4, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 583
    goto :goto_6

    .line 571
    :pswitch_1
    if-ne v1, v5, :cond_2

    .line 572
    move v4, v5

    goto :goto_2

    .line 571
    :cond_2
    nop

    .line 572
    :goto_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v3, :cond_3

    .line 573
    nop

    .line 575
    xor-int/lit8 v1, v4, 0x1

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 576
    goto :goto_6

    .line 567
    :pswitch_2
    if-eq v1, v5, :cond_4

    .line 568
    move v1, v5

    goto :goto_4

    .line 567
    :cond_4
    nop

    .line 568
    move v1, v4

    :goto_4
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 569
    goto :goto_6

    .line 563
    :pswitch_3
    if-ne v1, v5, :cond_5

    .line 564
    move v1, v5

    goto :goto_5

    .line 563
    :cond_5
    nop

    .line 564
    move v1, v4

    :goto_5
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 565
    nop

    .line 587
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 256
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 258
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/c;->b(Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/c;->a(Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 267
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for the flex direction is set: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureVertical(II)V

    .line 275
    goto :goto_0

    .line 270
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureHorizontal(II)V

    .line 271
    nop

    .line 280
    :goto_0
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

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/b;)V
    .locals 0

    .line 1262
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1263
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1264
    iget p1, p4, Lcom/google/android/flexbox/b;->hp:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hp:I

    .line 1265
    iget p1, p4, Lcom/google/android/flexbox/b;->hq:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hq:I

    goto :goto_0

    .line 1267
    :cond_0
    iget p1, p4, Lcom/google/android/flexbox/b;->hp:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hp:I

    .line 1268
    iget p1, p4, Lcom/google/android/flexbox/b;->hq:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hq:I

    .line 1271
    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/b;)V
    .locals 2

    .line 1236
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1238
    iget v0, p1, Lcom/google/android/flexbox/b;->hp:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/b;->hp:I

    .line 1239
    iget v0, p1, Lcom/google/android/flexbox/b;->hq:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/b;->hq:I

    goto :goto_0

    .line 1242
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1243
    iget v0, p1, Lcom/google/android/flexbox/b;->hp:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/b;->hp:I

    .line 1244
    iget v0, p1, Lcom/google/android/flexbox/b;->hq:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/b;->hq:I

    .line 1247
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    .line 1180
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    if-eq v0, p1, :cond_0

    .line 1181
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 1182
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1184
    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    .line 1166
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    if-eq v0, p1, :cond_0

    .line 1167
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1170
    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1318
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1331
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1332
    return-void

    .line 1334
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 1335
    if-eqz p1, :cond_1

    .line 1336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    goto :goto_0

    .line 1338
    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 1340
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1341
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1342
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1353
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1354
    return-void

    .line 1356
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 1357
    if-eqz p1, :cond_1

    .line 1358
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    goto :goto_0

    .line 1360
    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 1362
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1364
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 1124
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 1125
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 1126
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1128
    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 1275
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 1276
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 1138
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-eq v0, p1, :cond_0

    .line 1139
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1142
    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    .line 1152
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    .line 1153
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1156
    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    .line 1387
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 1388
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 1389
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    .line 1415
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 1416
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 1417
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1419
    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    .line 1400
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 1401
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1404
    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    .line 1286
    return-void
.end method
