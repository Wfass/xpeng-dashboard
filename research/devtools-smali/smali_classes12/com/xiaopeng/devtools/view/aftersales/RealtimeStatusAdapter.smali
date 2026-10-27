.class public Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;
.super Landroid/widget/BaseAdapter;
.source "RealtimeStatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;
    }
.end annotation


# instance fields
.field private Es:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public cM(I)Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;
    .locals 0

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->Es:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    array-length v0, v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->cM(I)Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 34
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 50
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c009f

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 52
    new-instance v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;-><init>(Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$1;)V

    .line 53
    const v4, 0x7f0903c8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->Et:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f090181

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->mContainer:Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;

    .line 61
    move-object/from16 v2, p2

    :goto_0
    iget-object v0, v0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->Es:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    aget-object v0, v0, p1

    .line 62
    iget-object v4, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->Et:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v5, v8, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 69
    const/4 v9, 0x5

    invoke-virtual {v5, v1, v9, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v10, 0x40400000    # 3.0f

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 74
    nop

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->getStatus()[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    move v12, v1

    move-object v13, v4

    move v4, v12

    :goto_1
    if-ge v4, v11, :cond_2

    aget-object v14, v0, v4

    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v15, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 80
    invoke-virtual {v10, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    rem-int/lit8 v10, v12, 0x3

    if-nez v10, :cond_1

    .line 89
    iget-object v10, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 75
    move-object v13, v10

    goto :goto_2

    :cond_1
    const/high16 v14, 0x40400000    # 3.0f

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v10, v14

    goto :goto_1

    .line 98
    :cond_2
    rem-int/lit8 v12, v12, 0x3

    if-eqz v12, :cond_3

    .line 99
    iget-object v0, v3, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter$a;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_3
    return-object v2
.end method

.method public setAllStatus([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->Es:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method
