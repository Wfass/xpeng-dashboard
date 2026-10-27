.class public Lcom/xiaopeng/musicradio/widget/d;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "LeftSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected g:I

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->left_select_item:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/d;->g:I

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/d;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/d;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/d;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/d;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/d;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/d$a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/d;->c()Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/xiaopeng/musicradio/widget/d$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/d$a;-><init>(Lcom/xiaopeng/musicradio/widget/d;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/d;->g:I

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/d;->notifyDataSetChanged()V

    return-void
.end method

.method protected c()Landroid/view/View;
    .locals 6

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/common/k$f;->left_select_item:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->c()Landroid/view/View;

    move-result-object v2

    .line 53
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeftSelectAdapter item Layout.inflate.cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeftSelectAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 68
    check-cast p1, Lcom/xiaopeng/musicradio/widget/d$a;

    .line 69
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    .line 71
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    const-string v2, "_"

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 73
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 74
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/d;->g:I

    if-ne v1, p2, :cond_0

    .line 75
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq p2, v1, :cond_1

    .line 80
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->e:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->e:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 84
    :goto_1
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/d$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaopeng/musicradio/widget/d$1;-><init>(Lcom/xiaopeng/musicradio/widget/d;I)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiPosition(I)V

    .line 95
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 96
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 97
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v0, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiElementType(Lbxy;)V

    .line 98
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    goto/16 :goto_3

    .line 100
    :cond_2
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 101
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 102
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/d;->g:I

    if-ne v1, p2, :cond_3

    .line 103
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v4, Lcom/xiaopeng/musicradio/common/k$d;->left_tab_bg:I

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackgroundResource(I)V

    .line 104
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 105
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    goto :goto_2

    .line 107
    :cond_3
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackgroundResource(I)V

    .line 108
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 109
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 111
    :goto_2
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getRes()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 112
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/d$2;

    invoke-direct {v3, p0, p2}, Lcom/xiaopeng/musicradio/widget/d$2;-><init>(Lcom/xiaopeng/musicradio/widget/d;I)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 122
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 123
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 124
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v0, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 125
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/d;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/d$a;

    move-result-object p1

    return-object p1
.end method
